part of 'unit_details_widgets_imports.dart';

class Invoices extends StatelessWidget {
  final List<InvoiceModel> invoices;

  const Invoices({super.key, required this.invoices});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            S.current.nextInvoices,
            style:
                getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16.sp),
          ),
        ),
        if (invoices.isNotEmpty) InvoiceItem(invoiceModel: invoices[0]),
        if (invoices.length > 1) InvoiceItem(invoiceModel: invoices[1]),
        CustomTextButton.icon(
            height: 48.h,
            fontSize: 16.sp,
            onPressed: () {
              Go.toNamed(NamedRoutes.ownerInvoices);
            },
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 2.h),
            icon: Icon(Icons.add),
            title: S.current.showAllInvoices)
      ].joinWith(8.verticalSpace),
    );
  }
}
