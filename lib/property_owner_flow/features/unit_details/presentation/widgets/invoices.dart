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
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            S.current.nextInvoices,
            style: getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16),
          ),
        ),
        if (invoices.isNotEmpty) InvoiceItem(invoiceModel: invoices[0]),
        if (invoices.length > 1) InvoiceItem(invoiceModel: invoices[1]),
        CustomTextButton.icon(
            height: 48,
            fontSize: 16,
            onPressed: () {
              Go.toNamed(NamedRoutes.ownerInvoices,
                  arguments: OwnerInvoicesScreen(invoices: invoices));
            },
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
            icon: Icon(Icons.add),
            title: S.current.showAllInvoices)
      ].joinWith(8.verticalSpace),
    );
  }
}
