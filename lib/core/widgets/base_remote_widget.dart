import 'package:flutter/cupertino.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';

import '../enums/enums.dart';

class BaseRemoteWidget extends StatelessWidget {
  final RequestState requestState;
  final Widget successWidget;
  final Widget? initialWidget;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  const BaseRemoteWidget({
    super.key,
    required this.requestState,
    this.initialWidget,
    required this.successWidget,
    this.loadingWidget,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    switch (requestState) {
      case RequestState.initial:
        {
          return initialWidget ?? 0.verticalSpace;
        }
      case RequestState.loading:
        {
          return loadingWidget ??
              Center(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const CupertinoActivityIndicator()));
        }
      case RequestState.success:
        {
          return successWidget;
        }
      case RequestState.error:
        return errorWidget ?? const SizedBox();
    }
  }
}
