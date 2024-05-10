import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/extensions/scroll_controller_extension.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/widgets/custom_pagination_list.dart';
import 'package:flutter_complete_project/core/widgets/custom_shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/navigator/navigator.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/widgets/app_shared_appbar.dart';
import '../../../../../core/widgets/base_remote_widget.dart';
import '../../../../../core/widgets/empty_lottie.dart';
import '../../../../../generated/l10n.dart';
import '../../../home/presentation/logic/cubit/home_cubit.dart';
import '../logic/cubit/tenant_tickets_cubit.dart';
import '../widgets/create_ticket_view.dart';
import '../widgets/filter_by_button.dart';
import '../widgets/tenant_ticket_item.dart';

part 'tenant_tickets_screen.dart';