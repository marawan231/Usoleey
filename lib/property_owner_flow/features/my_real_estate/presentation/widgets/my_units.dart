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
    getIt<MyRealEstateCubit>().getMyUnits(firstTime: true);
    scrollController
        .onScrollEndsListener(() => getIt<MyRealEstateCubit>().getMyUnits());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyRealEstateCubit, MyRealEstateState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () =>
              getIt<MyRealEstateCubit>().getMyUnits(firstTime: true),
          child: BaseRemoteWidget(
            requestState: state.getMyUnitsState,
            successWidget: state.units.isNotEmpty
                ? CustomPaginationList(
                    childAspectRatio: 1.05,
                    scrollController: scrollController,
                    itemBuilder: (index) => MyRealEstateUnitItem(
                          id: state.units[index].id ?? 0,
                          rentCollectionRate:
                              state.units[index].rentCollectionRate ?? '',
                          curveColor: index.isEven
                              ? ColorsManager.primary
                              : ColorsManager.brown,
                          monthRent: state.units[index].rent.toString(),
                          rentDate:
                              '${S.current.rentDate}:  ${state.units[index].rentCollectionDate != null ? formatDate(state.units[index].rentCollectionDate) : 'لم يحدد بعد'}',
                          address:
                              '${state.units[index].tenant?.firstNameAr ?? ''} ${state.units[index].tenant?.lastNameAr ?? ''}',
                        ),
                    allListCount:
                        getIt<MyRealEstateCubit>().unitsPaginationCount,
                    paginationList: state.units)
                : EmptyLottie(
                    lottiePath: AssetsManager.emptyTickets,
                    title: S.current.noUnits,
                    subTitle: '',
                    isButtonVisible: false,
                    padding: 0),
            loadingWidget: MyRealEsateShimmer(isProperty: false),
          ),
        );
      },
    );
  }
}

class MyRealEsateShimmer extends StatelessWidget {
  final bool isProperty;
  const MyRealEsateShimmer({super.key, required this.isProperty});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        children: List.generate(
          3,
          (index) => ItemBackground(
            isProperty: isProperty,
            curveColor: ColorsManager.grey,
            child: Column(
              children: [
                10.verticalSpace,
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomShimmer(width: double.infinity, height: 15)),
                24.verticalSpace,
                CustomShimmer(width: 120, height: 15),
                14.verticalSpace,
                CustomShimmer(width: 220, height: 15),
                20.verticalSpace,
                Center(
                    child: CustomShimmer(height: 36, width: double.infinity)),
                30.verticalSpace
              ],
            ),
          ),
        ).joinWith(8.verticalSpace));
  }
}
