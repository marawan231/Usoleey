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
    getIt<MyRealEstateCubit>().getMyProperties(firstTime: true);
    scrollController.onScrollEndsListener(() {
      getIt<MyRealEstateCubit>().getMyProperties();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyRealEstateCubit, MyRealEstateState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () =>
              getIt<MyRealEstateCubit>().getMyProperties(firstTime: true),
          child: BaseRemoteWidget(
            requestState: state.getMyPropertiesState,
            successWidget: state.properties.isNotEmpty
                ? CustomPaginationList(
                    childAspectRatio: 1.05,
                    scrollController: scrollController,
                    itemBuilder: (index) => MyRealEstatePropertyItem(
                          id: state.properties[index].id ?? 0,
                          curveColor: index.isEven
                              ? ColorsManager.primary
                              : ColorsManager.brown,
                          rent:
                              '${S.current.totalRent}: ${state.properties[index].district} ${S.current.sar}',
                          address:
                              '${state.properties[index].name!} , ${state.properties[index].district!} , ${state.properties[index].street!}',
                          unitCount:
                              state.properties[index].unitsCount!.toString(),
                        ),
                    allListCount:
                        getIt<MyRealEstateCubit>().propertiesPaginationCount,
                    paginationList: state.properties)
                : EmptyLottie(
                    lottiePath: AssetsManager.emptyTickets,
                    title: S.current.noTicketsProcess,
                    subTitle: '',
                    isButtonVisible: false,
                    padding: 0),
            loadingWidget: MyRealEsateShimmer(isProperty: true),
          ),
        );
      },
    );
  }
}
