part of 'owner_home_layout_screens_imports.dart';

class OwnerHomeLayoutScreen extends StatelessWidget {
  const OwnerHomeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => OwnerHomeLayoutCubit(),
        child: OwnerHomeLayoutView());
  }
}

class OwnerHomeLayoutView extends StatefulWidget {
  const OwnerHomeLayoutView({super.key});

  @override
  State<OwnerHomeLayoutView> createState() => _OwnerHomeLayoutViewState();
}

class _OwnerHomeLayoutViewState extends State<OwnerHomeLayoutView> {
  final List<Widget> _pages = [
    const OwnerHomeScreen(),
    const MyRealStateScreen(),
    const TicketsView(),
    const MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocSelector<OwnerHomeLayoutCubit, OwnerHomeLayoutState, int>(
            selector: (state) => state.index,
            builder: (context, index) => Center(child: _pages[index])),
        bottomNavigationBar: const CustomNavBar());
  }
}
