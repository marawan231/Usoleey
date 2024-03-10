import 'dart:io';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/models/tickets_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/models/tickets_status_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/repository/tickets_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_state.dart';

class TicketsCubit extends Cubit<TicketsState> {
  TicketsCubit(this.ticketsRepository) : super(const TicketsState.idle());
  final TicketsRepository ticketsRepository;
  List<File> imagesFile = [];

  List<TicketsStatusModelData> ticketsStatus = [
    //في انتظار المراجعة  جارية تم الحل ملغية
    TicketsStatusModelData(id: 1, label: 'في انتظار المراجعة'),
    TicketsStatusModelData(id: 2, label: 'جارية'),
    TicketsStatusModelData(id: 3, label: 'تم الحل'),
    TicketsStatusModelData(id: 4, label: 'ملغية'),
  ];
  List<TicketsStatusModelData> ticketsTypes = [
    TicketsStatusModelData(
        id: 1,
        icon: AssetsManager.maintenance,
        label: 'خدمة',
        subTitle:
            'قم بوصف الخدمة التي تود طلبه وسيقوم احد ممثلينا بالرد عليك خلال ٢٤ ساعة'),
    TicketsStatusModelData(
        id: 2,
        icon: AssetsManager.warningChat,
        label: 'شكوى',
        subTitle: 'قم بإرسال الشكوى التي تواجهك وسيتم الرد عليها خلال ٢٣ ساعة'),
    TicketsStatusModelData(
        id: 3,
        icon: AssetsManager.maintenance,
        label: 'اخرى',
        subTitle: 'قم بالتواصل معنا وسيتم الرد عليك خلال ٢٤ ساعة'),
  ];
  TicketsStatusModelData? selectedTicketStatus;
  TicketsStatusModelData? selectedTicketType;
  List<Ticket> tickets = [];
  //ticket controller
  TextEditingController contentController = TextEditingController();
  //selected images
  List<File> selectedImages = [];

  Future pickImageFromCamera(BuildContext context) async {
    try {
      final List<XFile> images = await ImagePicker().pickMultiImage();
      // add every image path to imageFIle list

      for (var element in images) {
        imagesFile.add(File(element.path));
      }
      emit(const TicketsState.imageSelectedLoading());

      emit(TicketsState.imageSelectedSuccess());
      // startStream(chatId);
    } on PlatformException catch (e) {
      var status = await Permission.photos.status;
      if (status.isDenied) {
        showGalleryError(context);
      } else {
        showToast(message: 'حدث خطأ ما');
      }

      emit(const TicketsState.imageSelectedError());
    }
  }

  deleteImage(int index) {
    emit(TicketsState.imageSelectedDeletedLoading());

    imagesFile.removeAt(index);
    emit(TicketsState.imageSelectedDeletedSuccess());
  }

  void onReorder(int oldIndex, int newIndex) {
    emit(const TicketsState.imageSelectedLoading());
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = imagesFile.removeAt(oldIndex);
    imagesFile.insert(newIndex, item);
    emit(TicketsState.imageSelectedDeletedSuccess());
  }

  void resetAll() {
    emit(const TicketsState.resetAllLoading());
    selectedTicketStatus = null;
    selectedTicketType = null;
    imagesFile = [];
    emit(const TicketsState.resetAllSuccess());
  }

  void selectTicketStatus(TicketsStatusModelData ticketStatus) {
    emit(TicketsState.selectTicketStatusLoading());
    selectedTicketStatus = ticketStatus;
    emit(TicketsState.selectTicketStatusSuccess(ticketStatus));
  }

  // void getAllTicketsStatus() async {
  //   emit(const TicketsState.getTicketsStatusLoading());
  //   var result = await ticketsRepository.getTicketsStatus();

  //   result.when(
  //     success: (response) {
  //       inspect(response.data!);
  //       ticketsStatus = response.data!;
  //       emit(TicketsState.getAllTicketsStatusSuccess(response.data!));
  //     },
  //     failure: (networkExceptions) {
  //       final error = DioExceptionType.getErrorMessage(networkExceptions);
  //       emit(TicketsState.getAllTicketsStatusError(error));
  //     },
  //   );
  // }

  //get all ticke types
  // void getAllTicketTypes() async {
  //   emit(const TicketsState.getAllTicketTypesLoading());
  //   var result = await ticketsRepository.getTicketTypes();

  //   result.when(
  //     success: (response) {
  //       inspect(response.data!);
  //       ticketsTypes = response.data!;
  //       emit(TicketsState.getAllTicketTypesSuccess(response.data!));
  //     },
  //     failure: (networkExceptions) {
  //       final error = DioExceptionType.getErrorMessage(networkExceptions);
  //       emit(TicketsState.getAllTicketTypesError(error));
  //     },
  //   );
  // }

  void selectTicketType(TicketsStatusModelData ticketType) {
    emit(TicketsState.selectTicketTypeLoading());
    selectedTicketType = ticketType;
    emit(TicketsState.selectTicketTypeSuccess(ticketType));
  }

  //get all tickets
  void getAllTickets() async {
    emit(const TicketsState.getAllTicketsLoading());
    var result = await ticketsRepository.getAllTickets();

    result.when(
      success: (response) {
        // inspect(response.data!);
        tickets = response.data!.tickets!;
        emit(TicketsState.getAllTicketsSuccess(response.data!.tickets!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(TicketsState.getAllTicketsError(error));
      },
    );
  }
}
