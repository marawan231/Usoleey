part of 'tenant_invoices_widgets_imports.dart';

class TenantInvoicesTabBar extends StatelessWidget {
  const TenantInvoicesTabBar({super.key});

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
    return BlocBuilder<TenantInvoicesCubit, TenantInvoicesState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            index == state.selectedTab
                ? null
                : getIt<TenantInvoicesCubit>().tabBarOnChange(index);
          },
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
