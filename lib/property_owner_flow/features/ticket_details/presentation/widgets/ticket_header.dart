part of 'ticket_details_widget_imports.dart';

class TicketHeader extends StatelessWidget {
  final TicketDetailsModel ticketDetailsModel;

  const TicketHeader({super.key, required this.ticketDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          child: Stack(
            children: [
              Container(
                height: 133.h,
                decoration: BoxDecoration(
                    color: ColorsManager.primary,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.r))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.current.ticketDetails,
                      style: getBoldStyle(
                          fontSize: 16.sp, color: ColorsManager.white),
                    ),
                    IconButton(
                        onPressed: Go.back,
                        icon: Icon(Icons.arrow_forward,
                            color: ColorsManager.white))
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: CustomBorderContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${S.current.ticketId}: ${ticketDetailsModel.id}#',
                        style: getBoldStyle(
                            color: ColorsManager.primaryDark, fontSize: 22.sp),
                      ),
                      8.verticalSpace,
                      Text(
                        ticketDetailsModel.unit!.address ?? '',
                        style: getRegularStyle(
                            height: 1.5,
                            color: ColorsManager.greyLight,
                            fontSize: 14.sp),
                      ),
                      8.verticalSpace,
                      Row(
                        children: [
                          TicketStatusWidget(
                              status: ticketDetailsModel.status ?? ''),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
