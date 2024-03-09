
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_text_form_field.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/content_item.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_bottom_sheet_subtitle.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_bottom_sheet_title.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_close_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_drag_handler.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/image_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          value: getIt<TicketsCubit>(),
        ),
      ],
      child: Container(
        padding: EdgeInsets.only(
            left: 24.sp, right: 24.sp, bottom: 24.sp, top: 15.sp),
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.sp),
            topRight: Radius.circular(40.sp),
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
              CustomBottomSheetTitle(title: 'محتوى التذكرة'),
              8.verticalSpace,
              CustomBottomSheetSubtitle(
                  subtitle: 'قم بكتابة محتوى التذكرة وإضافة الصور'),
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
              ContetntItem(
                label: getIt<TicketsCubit>().selectedTicketType!.label,
                onPressed: () {
                  getIt<HomeCubit>().changeBottomSheetSelectedView(1);
                },
              ),
              24.verticalSpace,
              _buildContentTextField(),
              16.verticalSpace,
              _buildCameraButton(),

              24.verticalSpace,
              _buildImages(),

              // 220.verticalSpace,
              _buildSendButton(),
            ],
          ),
        ),
      ),
    );
  }

  _buildImages() {
    return BlocConsumer<TicketsCubit, TicketsState>(
      listener: (context, state) {
        state.whenOrNull(
          imageSelectedDeletedSuccess: () {
            showToast(message: "Image Deleted Successfully");
          },
        );
      },
      builder: (context, state) {
        return getIt<TicketsCubit>().imagesFile.isEmpty
            ? Container()
            : SizedBox(
                height: 200.sp,
                child: ReorderableListView.builder(
                    shrinkWrap: true,
                    onReorder: getIt<TicketsCubit>().onReorder,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ImageItem(
                        key: Key('$index'),
                        imageFile: getIt<TicketsCubit>().selectedImages[index],
                        onTap: () {
                          getIt<TicketsCubit>().deleteImage(index);
                        },
                      );
                    },
                    itemCount: getIt<TicketsCubit>().selectedImages.length),
              );
      },

      // itemCount: images.length),
    );
  }

  _buildContentTextField() {
    return AppCustomTextFormField(
      controller: getIt<TicketsCubit>().contentController,
      keyboardType: TextInputType.text,
      hintText: 'قم بكتابة محتوى التذكرة',
      hintTextDirection: TextDirection.rtl,
      maxLines: 5,
    );
  }

  _buildCameraButton() {
    return GestureDetector(
      onTap: () {
        getIt<TicketsCubit>()
            .pickImageFromCamera(Go.navigatorKey.currentContext!);
      },
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt_outlined,
            color: ColorsManager.primaryDark,
            size: 14.sp,
          ),
          5.horizontalSpace,
          Text('إضافة صورة',
              style: getBoldStyle(
                fontSize: 12.sp,
                color: ColorsManager.primaryDark,
              )),
        ],
      ),
    );
  }

  _buildSendButton() {
    return AppTextButton(
      backgroundColor: ColorsManager.primary,
      buttonText: 'إرسال',
      onPressed: () {},
    );
  }
}
