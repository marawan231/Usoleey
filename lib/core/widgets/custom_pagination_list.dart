import 'package:flutter/cupertino.dart';

class CustomPaginationList<T> extends StatelessWidget {
  const CustomPaginationList(
      {super.key,
      required this.scrollController,
      required this.paginationList,
      required this.itemBuilder,
      required this.allListCount,
      this.childAspectRatio,
      this.padding, this.mainAxisSpacing});

  final ScrollController scrollController;
  final List<T> paginationList;
  final Widget Function(int index) itemBuilder;
  final int allListCount;
  final double? childAspectRatio;
  final EdgeInsets? padding;
  final double? mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: childAspectRatio ?? 2.2,
                crossAxisCount: 1,
                mainAxisSpacing: mainAxisSpacing ?? 8),
            delegate: SliverChildBuilderDelegate(
                (context, index) => itemBuilder(index),
                childCount: paginationList.length,
                addAutomaticKeepAlives: true,
                addRepaintBoundaries: true,
                addSemanticIndexes: true),
          ),
          if (paginationList.length < allListCount)
            SliverToBoxAdapter(
                child: Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 16),
                    child: CupertinoActivityIndicator()))
        ],
      ),
    );
  }
}
