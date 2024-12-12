import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/validator.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_text_form_field.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../../generated/l10n.dart';
import '../logic/cubit/tenant_tickets_cubit.dart';
import 'content_item.dart';
import 'custom_bottom_sheet_subtitle.dart';
import 'custom_bottom_sheet_title.dart';
import 'custom_close_button.dart';
import 'custom_drag_handler.dart';
import 'image_item.dart';

class TicketContentView extends StatelessWidget {
  const TicketContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<HomeCubit>(),
        ),
        BlocProvider.value(
          value: getIt<TenantTicketsCubit>(),
        ),
      ],
      child: Container(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 15),
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDragHandler(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomCloseButton(
                    onTap: () {
                      getIt<HomeCubit>().resetAll();
                      Go.back();
                    },
                  ),
                ],
              ),
              CustomBottomSheetTitle(title: S.current.ticketContent),
              8.verticalSpace,
              CustomBottomSheetSubtitle(
                  subtitle: S.current.ticketContentDescription),
              24.verticalSpace,
              getIt<HomeCubit>().selectedUnit == null
                  ? SizedBox.shrink()
                  : ContetntItem(
                      label: getIt<HomeCubit>().selectedUnit!.address,
                      onPressed: () {
                        getIt<HomeCubit>().changeBottomSheetSelectedView(0);
                      },
                    ),
              8.verticalSpace,
              BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
                builder: (context, state) {
                  return ContetntItem(
                    label: state.selectType?.label ?? '',
                    onPressed: () {
                      getIt<HomeCubit>().changeBottomSheetSelectedView(1);
                    },
                  );
                },
              ),
              24.verticalSpace,
              _buildContentTextField(),
              16.verticalSpace,
              _buildCameraButton(),

              24.verticalSpace,
              _buildImages(),
              38.verticalSpace,
              // 220.verticalSpace,
              _buildSendButton(),
            ],
          ),
        ),
      ),
    );
  }

  _buildImages() {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return state.imagesFile.isEmpty
            ? SizedBox()
            : SizedBox(
                height: 136,
                child: ReorderableListView.builder(
                    shrinkWrap: true,
                    onReorder: getIt<TenantTicketsCubit>().onReorder,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ImageItem(
                        key: Key('$index'),
                        imageFile: state.imagesFile[index],
                        onTap: () {
                          getIt<TenantTicketsCubit>().deleteImage(index);
                        },
                      );
                    },
                    itemCount: state.imagesFile.length),
              );
      },

      // itemCount: images.length),
    );
  }

  _buildContentTextField() {
    return Form(
      key: getIt<TenantTicketsCubit>().formKey,
      child: AppCustomTextFormField(
          controller: getIt<TenantTicketsCubit>().contentController,
          keyboardType: TextInputType.multiline,
          hintText: S.current.writeTicketContent,
          maxLines: 3,
          validator: (value) => value!.validateEmpty(),
          height: 100),
    );
  }

  _buildCameraButton() {
    return GestureDetector(
      onTap: () {
        getIt<TenantTicketsCubit>()
            .pickImageFromCamera(Go.navigatorKey.currentContext!);
      },
      child: Row(
        children: [
          Icon(Icons.camera_alt_outlined,
              color: ColorsManager.primaryDark, size: 14),
          5.horizontalSpace,
          Text(S.current.uploadImage,
              style: getBoldStyle(
                fontSize: 12,
                color: ColorsManager.primaryDark,
              )),
        ],
      ),
    );
  }

  _buildSendButton() {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return AppTextButton(
          backgroundColor: ColorsManager.primary,
          isLoading: state.sendTicketState == RequestState.loading,
          buttonText: S.current.send,
          onPressed: () {
            getIt<TenantTicketsCubit>().sendTicket();
          },
        );
      },
    );
  }
}
