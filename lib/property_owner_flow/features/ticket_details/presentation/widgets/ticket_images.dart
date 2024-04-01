part of'ticket_details_widget_imports.dart';

class TicketImages extends StatelessWidget {
  final List<String> images;

  const TicketImages({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.current.attachments,
              style: getBoldStyle(
                  fontSize: 14.sp, color: ColorsManager.primaryDark)),
          8.verticalSpace,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: images
                  .map((e) => Container(
                width: 181.w,
                height: 136.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r)),
                child: CustomCachedImage(image: e),
              ))
                  .toList()
                  .joinWith(16.horizontalSpace),
            ),
          ),
        ],
      ),
    );
  }
}
