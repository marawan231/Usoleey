part of 'update_unit_screens_imports.dart';

class UpdateUnitScreen extends StatelessWidget {
  final UnitDetailsModel unitDetailsModel;

  const UpdateUnitScreen({super.key, required this.unitDetailsModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<UpdateUnitCubit>(),
        child: UpdateUnitView(unitDetailsModel: unitDetailsModel));
  }
}

class UpdateUnitView extends StatefulWidget {
  final UnitDetailsModel unitDetailsModel;

  const UpdateUnitView({super.key, required this.unitDetailsModel});

  @override
  State<UpdateUnitView> createState() => _UpdateUnitViewState();
}

class _UpdateUnitViewState extends State<UpdateUnitView> {
  @override
  void initState() {
    getIt<UpdateUnitCubit>()
        .updateRoomsCount(widget.unitDetailsModel.rooms ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
          title: widget.unitDetailsModel.address, withBottomRounded: false),
      body: ListView(
        children: [
          Container(
            height: 250.h,
            child: Stack(
              children: [
                CachedNetworkImage(
                    imageUrl: widget.unitDetailsModel.image ?? ''),
                PositionedDirectional(
                  bottom: 22.h,
                  start: 24.w,
                  child: CircleAvatar(
                    backgroundColor: ColorsManager.primary,
                    maxRadius: 29.sp,
                    child: SvgPicture.asset(AssetsManager.editIcon,
                        color: ColorsManager.white),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              UpdateUnitItem(
                  title: S.current.unitName,
                  value: widget.unitDetailsModel.name ?? ''),
              UpdateUnitItem(
                  title: S.current.unitRent,
                  value: widget.unitDetailsModel.rent.toString()),
              UpdateUnitItem(
                  title: S.current.unitDate,
                  value: widget.unitDetailsModel.rentCollectionDate.toString()),
              UpdateUnitItem(
                  title: S.current.unitAddress,
                  value: widget.unitDetailsModel.address.toString()),
              UpdateUnitItem(
                  title: S.current.unitSpace,
                  value: widget.unitDetailsModel.space.toString()),
              UpdateUnitItem(
                  title: S.current.electricityAccount,
                  value: widget.unitDetailsModel.electricityAccount.toString()),
              UpdateUnitItem(
                  title: S.current.roomsCount,
                  leadingWidget: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                    builder: (context, state) {
                      return ItemWithCount(count: state.roomsCount);
                    },
                  )),
            ].joinWith(Divider()),
          )
        ],
      ),
    );
  }
}

class ItemWithCount extends StatelessWidget {
  final int count;

  const ItemWithCount({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              if (count > 0)
                getIt<UpdateUnitCubit>().updateRoomsCount(count - 1);
            },
            icon: Icon(Icons.remove, color: ColorsManager.primary)),
        Text(count.toString(),
            style: getBoldStyle(fontSize: 14.sp, color: ColorsManager.primary)),
        IconButton(
            onPressed: () =>
                getIt<UpdateUnitCubit>().updateRoomsCount(count + 1),
            icon: Icon(Icons.add, color: ColorsManager.primary)),
      ],
    );
  }
}

class UpdateUnitItem extends StatelessWidget {
  const UpdateUnitItem(
      {super.key, required this.title, this.value, this.leadingWidget});

  final String title;
  final String? value;
  final Widget? leadingWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: getRegularStyle(
                      fontSize: 14.sp, color: ColorsManager.greyLight),
                ),
                16.verticalSpace,
                if (value != null)
                  SizedBox(
                    width: 227.w,
                    child: Text(
                      value ?? '',
                      style: getBoldStyle(
                          fontSize: 14.sp,
                          color: ColorsManager.primary,
                          height: 1.5),
                    ),
                  ),
              ],
            ),
          ),
          leadingWidget ??
              Text(
                S.current.edit,
                style:
                    getBoldStyle(fontSize: 14.sp, color: ColorsManager.primary),
              )
        ],
      ),
    );
  }
}
