part of 'ticket_details_widget_imports.dart';

class TicketDetailsBottomButton extends StatelessWidget {
  const TicketDetailsBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final String? role = getIt<UserCubit>().state.userModel?.role;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
      child: BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
          builder: (context, state) {
        return state.getTicketDetailsState != RequestState.loading
            ? role == 'OWNER'
                ? getOwnerTicketDetailsButton(
                    TicketStatusExtension.fromString(
                        state.ticketDetailsModel!.status!),
                    state.ticketDetailsModel!)
                : getTenantTicketDetailsButton(
                    TicketStatusExtension.fromString(
                        state.ticketDetailsModel!.status!),
                    state.ticketDetailsModel!)
            : SizedBox();
      }),
    );
  }
}

Widget getOwnerTicketDetailsButton(
    TicketStatus status, TicketDetailsModel ticketDetailsModel) {
  Widget widget = SizedBox();
  switch (status) {
    case TicketStatus.closed:
      widget = AppTextButton(
          buttonText: S.current.menu,
          onPressed: () => _showMenuSheet(ticketDetailsModel));
    case TicketStatus.active:
      widget = SizedBox();
    case TicketStatus.processing:
      widget = AppTextButton(
          buttonText: S.current.cancelTicket,
          onPressed: () => _showMenuSheet(ticketDetailsModel));
  }
  return widget;
}

Widget getTenantTicketDetailsButton(
    TicketStatus status, TicketDetailsModel ticketDetailsModel) {
  Widget widget = SizedBox();
  switch (status) {
    case TicketStatus.closed:
      widget = AppTextButton(
          buttonText: S.current.rate, onPressed: () => _showRateDialog());
    case TicketStatus.active:
    // widget = AppTextButton(
    //     backgroundColor: ColorsManager.backgroundColor,
    //     textStyle:
    //         getBoldStyle(fontSize: 16.sp, color: ColorsManager.primary),
    //     buttonText: S.current.cancelTicket,
    //     onPressed: () => _showCancelAlertDialog());

    case TicketStatus.processing:
      SizedBox();
  }
  return widget;
}

void _showMenuSheet(TicketDetailsModel ticketDetailsModel) {
  showCupertinoModalPopup<void>(
    context: Go.navigatorKey.currentContext!,
    builder: (BuildContext context) => CupertinoActionSheet(
      message: Text(S.current.chooseFromlist,
          style: getBoldStyle(fontSize: 12.sp, color: ColorsManager.greyLight)),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {
            Go.back();
            _showContactTenantSheet(
                ticketDetailsModel.unit?.tenant?.phoneNumber ?? '');
          },
          child: Text(S.current.contactTenant,
              style: getRegularStyle(
                  fontSize: 16.sp, color: ColorsManager.primary)),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Go.back();
            getIt<TicketDetailsCubit>().uploadInvoice();
          },
          child: Text(S.current.uploadInvoice,
              style: getRegularStyle(
                  fontSize: 16.sp, color: ColorsManager.primary)),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Go.back();
            _showAlertDialog();
          },
          child: Text(S.current.changeStatusResolved,
              style: getRegularStyle(
                  fontSize: 16.sp, color: ColorsManager.primary)),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: Go.back,
          child: Text(
            S.current.cancel,
            style:
                getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16.sp),
          )),
    ),
  );
}

late TextEditingController controller;
late GlobalKey<FormState> formKey;

void _showRateDialog() {
  controller = TextEditingController();
  formKey = GlobalKey();
  showModalBottomSheet(
      isScrollControlled: true,
      context: Go.navigatorKey.currentContext!,
      builder: (_) {
        return Container(
          padding: EdgeInsets.only(
              right: 24.w,
              left: 24.r,
              top: 24.h,
              bottom: MediaQuery.of(
                Go.navigatorKey.currentContext!,
              ).viewInsets.bottom),
          child: BlocProvider.value(
            value:  getIt<TicketDetailsCubit>(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomDragHandler(),
                  10.verticalSpace,
                  SvgPicture.asset(AssetsManager.rating),
                  32.verticalSpace,
                  Text(S.current.evaluationExperience,
                      style: getRegularStyle(
                          fontSize: 12.sp, color: ColorsManager.greyLight)),
                  10.verticalSpace,
                  Text(S.current.shareRating,
                      style: getRegularStyle(
                          fontSize: 22.sp, color: ColorsManager.primaryDark)),
                  10.verticalSpace,
                  Text(S.current.shareRatingDescription,
                      style: getRegularStyle(
                          fontSize: 14.sp, color: ColorsManager.greyLight),
                      textAlign: TextAlign.center),
                  32.verticalSpace,
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: RatingBar.builder(
                      initialRating: 1,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) =>
                          Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: getIt<TicketDetailsCubit>().updateRate,
                    ),
                  ),
                  32.verticalSpace,
                  Form(
                    key: formKey,
                    child: AppCustomTextFormField(
                        controller: controller,
                        keyboardType: TextInputType.multiline,
                        hintText: S.current.writeYourOption,
                        maxLines: 3,
                        validator: (value) => value!.validateEmpty(),
                        height: 100.h),
                  ),
                  24.verticalSpace,
                  BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
                    builder: (context, state) {
                      return AppTextButton(
                          isLoading:
                              state.rateRequestState == RequestState.loading,
                          buttonText: S.current.rate,
                          onPressed: () {
                            getIt<TicketDetailsCubit>()
                                .rate(controller.text, formKey);
                          });
                    },
                  ),
                  24.verticalSpace,
                ],
              ),
            ),
          ),
        );
      });
}

void _showContactTenantSheet(String phoneNumber) {
  showCupertinoModalPopup<void>(
    context: Go.navigatorKey.currentContext!,
    builder: (BuildContext context) => CupertinoActionSheet(
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Text(phoneNumber,
              style: getRegularStyle(
                  fontSize: 22.sp, color: ColorsManager.primary)),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: () => launchTel(phoneNumber: phoneNumber),
          child: Text(
            S.current.conatct,
            style:
                getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16.sp),
          )),
    ),
  );
}

void _showAlertDialog() {
  showCupertinoModalPopup<void>(
    context: Go.navigatorKey.currentContext!,
    builder: (BuildContext context) => BlocProvider.value(
      value: getIt<TicketDetailsCubit>(),
      child: BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
        builder: (context, state) {
          return IgnorePointer(
            ignoring: state.updateTicketStatus == RequestState.loading,
            child: CupertinoAlertDialog(
              title: Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Text(
                  S.current.solvedAlertTitle,
                  style: getBoldStyle(
                      fontSize: 16.sp, color: ColorsManager.black, height: 1.5),
                ),
              ),
              content: Text(
                S.current.solvedAlertSubtitle,
                style: getRegularStyle(
                    fontSize: 12.sp, color: ColorsManager.black, height: 1.5),
              ),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                    textStyle: getRegularStyle(
                        color: ColorsManager.primary, fontSize: 16.sp),
                    isDefaultAction: true,
                    onPressed: Go.back,
                    child: Text(S.current.solvedAlertCancel)),
                CupertinoDialogAction(
                  textStyle: getBoldStyle(
                      color: ColorsManager.primary, fontSize: 16.sp),
                  isDestructiveAction: true,
                  onPressed: () => getIt<TicketDetailsCubit>()
                      .updateTicket(status: 'SOLVED'),
                  child: state.updateTicketStatus != RequestState.loading
                      ? Text(S.current.solvedAlertOk)
                      : CupertinoActivityIndicator(),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

void _showCancelAlertDialog() {
  showCupertinoModalPopup<void>(
    context: Go.navigatorKey.currentContext!,
    builder: (BuildContext context) => BlocProvider.value(
      value: getIt<TicketDetailsCubit>(),
      child: BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
        builder: (context, state) {
          return IgnorePointer(
            ignoring: state.updateTicketStatus == RequestState.loading,
            child: CupertinoAlertDialog(
              title: Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Text(
                  S.current.cancelTicketTitle,
                  style: getBoldStyle(
                      fontSize: 16.sp, color: ColorsManager.black, height: 1.5),
                ),
              ),
              content: Text(
                S.current.cancelTicketSubtitle,
                style: getRegularStyle(
                    fontSize: 12.sp, color: ColorsManager.black, height: 1.5),
              ),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                    textStyle: getRegularStyle(
                        color: ColorsManager.primary, fontSize: 16.sp),
                    isDefaultAction: true,
                    onPressed: Go.back,
                    child: Text(S.current.solvedAlertCancel)),
                CupertinoDialogAction(
                  textStyle: getBoldStyle(
                      color: ColorsManager.primary, fontSize: 16.sp),
                  isDestructiveAction: true,
                  onPressed: () => getIt<TicketDetailsCubit>()
                      .updateTicket(status: 'CLOSED'),
                  child: state.updateTicketStatus != RequestState.loading
                      ? Text(S.current.cancelTicket)
                      : CupertinoActivityIndicator(),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
