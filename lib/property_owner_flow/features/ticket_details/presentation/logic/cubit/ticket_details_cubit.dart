import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/models/create_invoice_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/enums/enums.dart';
import '../../../../my_tickets/presentation/logic/cubit/my_tickets_cubit.dart';
import '../../../data/models/ticket_details_model.dart';
import '../../../data/repository/ticket_details_repository.dart';

part 'ticket_details_cubit.freezed.dart';
part 'ticket_details_state.dart';

class TicketDetailsCubit extends Cubit<TicketDetailsState> {
  final TicketDetailsRepository ticketDetailsRepository;

  TicketDetailsCubit(this.ticketDetailsRepository) : super(const _Initial());

  Future<void> getTicketDetails({required int id}) async {
    emit(state.copyWith(
        getTicketDetailsState: RequestState.loading, pdfFile: null));
    final result =
        await ticketDetailsRepository.getTicketDetails(id: id.toString());
    emit(state.copyWith(getTicketDetailsState: RequestState.loading));
    result.when(success: (ticketDetailsModel) {
      emit(state.copyWith(
          getTicketDetailsState: RequestState.success,
          ticketDetailsModel: ticketDetailsModel));
    }, failure: (failure) {
      emit(state.copyWith(getTicketDetailsState: RequestState.error));
    });
  }

  Future<void> updateTicket({required String status}) async {
    emit(state.copyWith(updateTicketStatus: RequestState.loading));
    final result = await ticketDetailsRepository.updateTicket(
        id: state.ticketDetailsModel!.id.toString(), status: status);
    result.when(success: (ticketDetailsModel) {
      emit(state.copyWith(
          updateTicketStatus: RequestState.success,
          ticketDetailsModel: ticketDetailsModel));
      getIt<MyTicketsCubit>().getProcessingTickets(firstTime: true);
      Go.back();
    }, failure: (failure) {
      emit(state.copyWith(getTicketDetailsState: RequestState.error));
    });
  }

  Future<void> uploadInvoice() async {
    final result = await pickPdfFile();
    if (result != null) {
      emit(state.copyWith(pdfFile: File(result.path!)));
      createInvoice();
    }
  }

  void clearPdf() => emit(state.copyWith(pdfFile: null));

  Future<void> createInvoice() async {
    final CreateInvoiceRequestModel createInvoiceRequestModel =
        CreateInvoiceRequestModel(
            file: state.pdfFile!,
            unitId: state.ticketDetailsModel!.unitId!,
            ticketId: state.ticketDetailsModel!.id!);

    final result =
        await ticketDetailsRepository.createInvoice(createInvoiceRequestModel);
    result.when(success: (success) {
      showToast(message: 'تم رفع الفاتورة بنجاح');
    }, failure: (failure) {});
  }

  Future<PlatformFile?> pickPdfFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      return result.files.first;
    } else {
      return null;
    }
  }

  void launchPdfFile(String filePath) async {
    final file = File(filePath);
    final exists = await file.exists();

    if (exists) {
      final directory = await path_provider.getTemporaryDirectory();
      final cachePath = directory.path;
      final fileName = filePath.split('/').last;
      final cachedFile = await file.copy('$cachePath/$fileName');

      final uri = Platform.isAndroid
          ? 'content://com.example.usooley.file_provider/$fileName'
          : cachedFile.path;

      try {
        if (await canLaunchUrl(Uri.parse(uri))) {
          await launchUrl(Uri.parse(uri));
        } else {
          throw 'Could not launch PDF viewer';
        }
      } on PlatformException catch (e) {
        throw 'Could not launch PDF viewer: $e';
      }
    } else {
      throw 'File does not exist';
    }
  }
}
