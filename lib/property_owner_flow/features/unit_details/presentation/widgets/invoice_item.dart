part of 'unit_details_widgets_imports.dart';

class InvoiceItem extends StatelessWidget {
  final InvoiceModel invoiceModel;

  const InvoiceItem({super.key, required this.invoiceModel});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
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
                  '${S.current.invoice} ${getInvoiceTypeProperties(InvoiceTypeExtension.fromString(invoiceModel.type!)).text}',
                  style: getRegularStyle(
                      fontSize: 12.sp, color: ColorsManager.greyLight),
                ),
                8.verticalSpace,
                Text(
                  formatDate(invoiceModel.createdAt!),
                  style: getBoldStyle(
                      fontSize: 16.sp, color: ColorsManager.primaryDark),
                )
              ],
            ),
          ),
          SvgPicture.asset(AssetsManager.pdf)
        ],
      ),
    );
  }
}
