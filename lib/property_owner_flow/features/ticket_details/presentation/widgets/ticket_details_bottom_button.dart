part of 'ticket_details_widget_imports.dart';

class TicketDetailsBottomButton extends StatelessWidget {
  const TicketDetailsBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
      child: BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
          builder: (context, state) {
        return state.getTicketDetailsState != RequestState.loading
            ? getTicketDetailsButton(
                TicketStatusExtension.fromString(
                    state.ticketDetailsModel!.status!),
                state.ticketDetailsModel!)
            : SizedBox();
      }),
    );
  }
}

Widget getTicketDetailsButton(
    TicketStatus status, TicketDetailsModel ticketDetailsModel) {
  Widget widget = SizedBox();
  switch (status) {
    case TicketStatus.solved:
    case TicketStatus.canceled:
      widget = SizedBox();
    case TicketStatus.processing:
      widget = AppTextButton(
          buttonText: S.current.menu,
          onPressed: () => _showMenuSheet(ticketDetailsModel));
    case TicketStatus.reviewing:
      AppTextButton(buttonText: S.current.approve, onPressed: () {});
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
    builder: (BuildContext context) =>
        BlocProvider.value(
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
                  textStyle:
                      getBoldStyle(color: ColorsManager.primary, fontSize: 16.sp),
                  isDestructiveAction: true,
                  onPressed: () =>
                      getIt<TicketDetailsCubit>().updateTicket(status: 'SOLVED'),
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
