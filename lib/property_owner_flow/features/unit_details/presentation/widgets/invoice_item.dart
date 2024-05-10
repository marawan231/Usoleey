part of 'unit_details_widgets_imports.dart';

class InvoiceItem extends StatelessWidget {
  final InvoiceModel invoiceModel;
  final bool isBillDetails;
  final EdgeInsets? margin;

  const InvoiceItem(
      {super.key,
      required this.invoiceModel,
      this.isBillDetails = false,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      margin: margin,
      child: Row(
        children: [
          CircleAvatar(
              minRadius: 24.sp,
              child: SvgPicture.asset(getInvoiceTypeProperties(
                      InvoiceTypeExtension.fromString(invoiceModel.type!))
                  .image),
              backgroundColor: ColorsManager.primaryLighter),
          8.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isBillDetails
                      ? 'تكلفة الفاتورة'
                      : '${S.current.invoice} ${getInvoiceTypeProperties(InvoiceTypeExtension.fromString(invoiceModel.type!)).text}',
                  style: getRegularStyle(
                      fontSize: 12.sp, color: ColorsManager.greyLight),
                ),
                8.verticalSpace,
                Text(
                  isBillDetails
                      ? '${invoiceModel.amount?.toString()} ${S.current.monthSar}'
                      : formatDate(invoiceModel.createdAt!),
                  style: getBoldStyle(
                      fontSize: 16.sp, color: ColorsManager.primaryDark),
                )
              ],
            ),
          ),
          if (invoiceModel.type == 'RENT' || invoiceModel.type == 'WATER')
            SvgPicture.asset(AssetsManager.pdf)
          else
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                  color: ColorsManager.greyLighter,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                S.current.service,
                style: getBoldStyle(
                    color: ColorsManager.greyLight, fontSize: 11.sp),
              ),
            )
        ],
      ),
    );
  }
}

class InvoiceShimmerItem extends StatelessWidget {
  const InvoiceShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      child: Row(
        children: [
          CustomShimmer(height: 48.r, width: 48.r, radius: 24.sp),
          8.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomShimmer(width: 100.w, height: 15.h),
                8.verticalSpace,
                CustomShimmer(width: 150.w, height: 15.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
