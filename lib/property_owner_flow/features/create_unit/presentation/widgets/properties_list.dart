part of 'create_unit_widgets_imports.dart';

class PropertiesList extends StatelessWidget {
  const PropertiesList(
      {super.key,
      required this.scrollController,
      required this.properties,
      required this.selectedProperty,
      this.propertyOnChange});

  final ScrollController scrollController;
  final List<PropertyModel> properties;
  final PropertyModel? selectedProperty;
  final void Function(PropertyModel? property)? propertyOnChange;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4.5, crossAxisCount: 1, mainAxisSpacing: 8),
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                onTap: () => propertyOnChange!(properties[index]),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: selectedProperty != null &&
                              properties.indexOf(selectedProperty!) == index
                          ? ColorsManager.primaryLighter
                          : null,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: ColorsManager.grey)),
                  child: Row(
                    children: [
                      SvgPicture.asset(AssetsManager.building),
                      8.horizontalSpace,
                      Expanded(
                        child: Text(
                            '${properties[index].name!} , ${properties[index].district!} , ${properties[index].street!}',
                            overflow: TextOverflow.ellipsis,
                            style: getBoldStyle(
                                fontSize: 14,
                                color: ColorsManager.primary,
                                height: 1.5)),
                      ),
                    ],
                  ),
                ),
              );
            },
                childCount: properties.length,
                addAutomaticKeepAlives: true,
                addRepaintBoundaries: true,
                addSemanticIndexes: true),
          ),
          if (properties.length < getIt<CreateUnitCubit>().count)
            PropertiesLoadingWidget()
          else if (selectedProperty == null)
            AddNewPropertyButton()
        ],
      ),
    );
  }
}
