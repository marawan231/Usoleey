part of 'owner_invoices_screens_imports.dart';

class OwnerInvoicesScreen extends StatelessWidget {
  final List<InvoiceModel> invoices;

  const OwnerInvoicesScreen({super.key, required this.invoices});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OwnerInvoicesCubit>(),
      child: OnwerInvoicesView(invoices: invoices),
    );
  }
}

class OnwerInvoicesView extends StatefulWidget {
  final List<InvoiceModel> invoices;

  const OnwerInvoicesView({super.key, required this.invoices});

  @override
  State<OnwerInvoicesView> createState() => _OnwerInvoicesViewState();
}

class _OnwerInvoicesViewState extends State<OnwerInvoicesView> {
  @override
  void initState() {
    getIt<OwnerInvoicesCubit>().updateInvoices(widget.invoices);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: S.current.propertyInvoices),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            InvoicesTabBar(),
            16.verticalSpace,
            Expanded(child: BlocBuilder<OwnerInvoicesCubit, OwnerInvoicesState>(
                builder: (context, state) {
              return getIt<OwnerInvoicesCubit>()
                      .filterInvoices(state.invoices)
                      .isNotEmpty
                  ? ListView.separated(
                      separatorBuilder: (context, index) => 8.verticalSpace,
                      itemCount: getIt<OwnerInvoicesCubit>()
                          .filterInvoices(state.invoices)
                          .length,
                      itemBuilder: (context, index) => InvoiceItem(
                          invoiceModel: getIt<OwnerInvoicesCubit>()
                              .filterInvoices(state.invoices)[index]))
                  : EmptyLottie(
                      lottiePath: AssetsManager.emptyInvoices,
                      title: S.current.emptyInvoices,
                      subTitle: S.current.emptyInvoicesSubTitle,
                      isButtonVisible: false,
                      padding: 0);
            }))
          ],
        ),
      ),
    );
  }
}

class InvoicesTabBar extends StatelessWidget {
  const InvoicesTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: [
        TabItem(name: S.current.all, index: 1),
        TabItem(name: S.current.rent, index: 2),
        TabItem(name: S.current.water, index: 3),
        TabItem(name: S.current.tickets, index: 4),
      ].joinWith(8.horizontalSpace)),
    );
  }
}

class TabItem extends StatelessWidget {
  final String name;
  final int index;

  const TabItem({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerInvoicesCubit, OwnerInvoicesState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => getIt<OwnerInvoicesCubit>().tabBarOnChange(index),
          child: Container(
            height: 36,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            decoration: BoxDecoration(
                color: index == state.selectedTab
                    ? ColorsManager.primary
                    : ColorsManager.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: ColorsManager.primary)),
            child: Text(name,
                style: getBoldStyle(
                    color: index == state.selectedTab
                        ? ColorsManager.white
                        : ColorsManager.primary,
                    fontSize: 12)),
          ),
        );
      },
    );
  }
}
