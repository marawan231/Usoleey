part of 'tenant_home_layout_screens_imports.dart';

class TenantHomeLayoutScreen extends StatelessWidget {
  const TenantHomeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TenantHomeLayoutCubit(),
        child: TenantHomeLayoutView());
  }
}

class TenantHomeLayoutView extends StatefulWidget {
  const TenantHomeLayoutView({super.key});

  @override
  State<TenantHomeLayoutView> createState() => _TenantHomeLayoutViewState();
}

class _TenantHomeLayoutViewState extends State<TenantHomeLayoutView> {
  final List<Widget> _pages = [
    const TenantHomeScreen(),
    const TenantInvoicesScreen(),
    const TenantTicketsScreen(),
    const MoreView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocSelector<TenantHomeLayoutCubit, TenantHomeLayoutState, int>(
            selector: (state) => state.index,
            builder: (context, index) => Center(child: _pages[index])),
        bottomNavigationBar: const CustomNavBar());
  }
}
