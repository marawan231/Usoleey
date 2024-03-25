part of 'my_real_estate_widgets_imports.dart';

class MyUnits extends StatefulWidget {
  const MyUnits({super.key});

  @override
  State<MyUnits> createState() => _MyUnitsState();
}

class _MyUnitsState extends State<MyUnits> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<MyRealEstateCubit>().getMyUnits();
    scrollController
        .onScrollEndsListener(() => getIt<MyRealEstateCubit>().getMyUnits());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyRealEstateCubit, MyRealEstateState>(
      builder: (context, state) {
        switch (state.getMyUnitsState) {
          case RequestState.initial:
          case RequestState.loading:
            return Center(child: CupertinoActivityIndicator());
          case RequestState.success:
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
              child: CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.05,
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.h),
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => MyRealEstateItem(
                              id: state.units[index].id ?? 0,
                              isProperty: false,
                              curveColor: index.isEven
                                  ? ColorsManager.primary
                                  : ColorsManager.brown,
                              monthRent: state.units[index].rent.toString(),
                              rentDate:
                                  '${S.current.rentDate}:  ${state.units[index].rentCollectionDate != null ? formatDate(state.units[index].rentCollectionDate) : 'لم يحدد بعد'}',
                              address: '${state.units[index].address!}',
                            ),
                        childCount: state.units.length,
                        addAutomaticKeepAlives: true,
                        addRepaintBoundaries: true,
                        addSemanticIndexes: true),
                  ),
                  if (state.units.length <
                      getIt<MyRealEstateCubit>().unitsPaginationCount)
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.h, bottom: 16.h),
                        child: CupertinoActivityIndicator(),
                      ),
                    )
                ],
              ),
            );
          case RequestState.error:
            return SizedBox();
        }
      },
    );
  }


}
