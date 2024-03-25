part of 'my_real_estate_screens_imports.dart';

class MyRealStateScreen extends StatelessWidget {
  const MyRealStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<MyRealEstateCubit>(), child: const MyRealEstateView());
  }
}

class MyRealEstateView extends StatelessWidget {
  const MyRealEstateView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: SharedAppBar(
            height: 100.h,
            title: S.current.myRealEstate,
            leading: IconButton(
                icon: Icon(Icons.add_rounded, size: 30),
                onPressed: addUnitBottomSheet),
            bottom: TabBar(
              labelStyle: getBoldStyle(fontSize: 12),
              labelColor: ColorsManager.primary,
              indicatorColor: ColorsManager.primary,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0.001,
              tabs: [
                Tab(text: S.current.units),
                Tab(text: S.current.property),
              ],
            )),
        body: TabBarView(
          children: [MyUnits(), MyProperties()],
        ),
      ),
    );
  }

  void addUnitBottomSheet() {
    customBottomSheetDialog(
      height: 300.h,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeader(),
          8.verticalSpace,
          AddUnitItem(
              title: S.current.addUnit,
              onTap: () => Go.toNamed(NamedRoutes.createUnit)),
          8.verticalSpace,
          AddUnitItem(
              title: S.current.addBuilding,
              onTap: () {
                Go.back();
                customBottomSheetDialog(
                    body: CreatePropertyScreen(), isScrollControlled: true);
              })
        ],
      ),
    );
  }
}
