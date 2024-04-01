part of'create_unit_widgets_imports.dart';

class PropertiesLoadingWidget extends StatelessWidget {
  const PropertiesLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 16.h),
          child: CupertinoActivityIndicator()),
    );
  }
}
