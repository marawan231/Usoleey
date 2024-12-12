part of 'ticket_details_widget_imports.dart';

class TicketDetailsBody extends StatelessWidget {
  const TicketDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
      builder: (context, state) {
        return BaseRemoteWidget(
          requestState: state.getTicketDetailsState,
          successWidget: state.getTicketDetailsState != RequestState.loading &&
                  state.ticketDetailsModel != null
              ? ListView(
                  children: [
                    TicketHeader(ticketDetailsModel: state.ticketDetailsModel!),
                    24.verticalSpace,
                    if (state.pdfFile != null) TicketInvoice(),
                    TicketContent(
                        description:
                            state.ticketDetailsModel!.description ?? ''),
                    24.verticalSpace,
                    if (state.ticketDetailsModel!.images != null &&
                        state.ticketDetailsModel!.images!.isNotEmpty)
                      TicketImages(
                          images: state.ticketDetailsModel!.images ?? []),
                    24.verticalSpace,
                    Divider(
                        height: 1,
                        indent: 24,
                        endIndent: 24,
                        color: ColorsManager.grey),
                    24.verticalSpace,
                    TicketInformation(
                        ticketDetailsModel: state.ticketDetailsModel!)
                  ],
                )
              : const SizedBox(),
        );
      },
    );
  }
}

class TicketInvoice extends StatelessWidget {
  const TicketInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<TicketDetailsCubit, TicketDetailsState>(
          builder: (context, state) {
            return CustomBorderContainer(
                color: ColorsManager.primaryLighter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '${S.current.done} "${state.ticketDetailsModel!.description}" ${S.current.repaired}',
                        style: getRegularStyle(
                            fontSize: 14, color: ColorsManager.primaryDark)),
                    16.verticalSpace,
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            await OpenFile.open(state.pdfFile!.path);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: ColorsManager.primary),
                            child: Row(
                              children: [
                                SvgPicture.asset(AssetsManager.invoice),
                                6.horizontalSpace,
                                Text(S.current.viewInvoice,
                                    style: getBoldStyle(
                                        fontSize: 12,
                                        color: ColorsManager.white))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // 8.verticalSpace,
                    // if (state.pdfFile != null &&
                    //     state.ticketDetailsModel!.status != 'SOLVED')
                    //   CustomTextButton(
                    //       onPressed: getIt<TicketDetailsCubit>().clearPdf,
                    //       title: S.current.delete)
                  ],
                ));
          },
        ),
        24.verticalSpace,
      ],
    );
  }
}
