part of 'my_real_estate_widgets_imports.dart';

class MyProperties extends StatefulWidget {
  const MyProperties({super.key});

  @override
  State<MyProperties> createState() => _MyPropertiesState();
}

class _MyPropertiesState extends State<MyProperties> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<MyRealEstateCubit>().getMyProperties();
    scrollController.onScrollEndsListener(() {
      getIt<MyRealEstateCubit>().getMyProperties();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyRealEstateCubit, MyRealEstateState>(
      builder: (context, state) {
        switch (state.getMyPropertiesState) {
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
                        childAspectRatio: 1.1,
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.h),
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => MyRealEstateItem(
                              id: state.properties[index].id ?? 0,
                              isProperty: true,
                              curveColor: index.isEven
                                  ? ColorsManager.primary
                                  : ColorsManager.brown,
                              rent:
                                  '${S.current.totalRent}: ${state.properties[index].district} ${S.current.sar}',
                              address:
                                  '${state.properties[index].name!} , ${state.properties[index].district!} , ${state.properties[index].street!}',
                              unitCount: state.properties[index].unitsCount!
                                  .toString(),
                            ),
                        childCount: state.properties.length,
                        addAutomaticKeepAlives: true,
                        addRepaintBoundaries: true,
                        addSemanticIndexes: true),
                  ),
                  if (state.properties.length <
                      getIt<MyRealEstateCubit>().propertiesPaginationCount)
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
