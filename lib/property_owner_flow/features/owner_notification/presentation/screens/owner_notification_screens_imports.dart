import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/scroll_controller_extension.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/core/widgets/custom_shimmer.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_notification/data/models/notification_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_notification/presentation/logic/cubit/owner_notification_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/presentation/screens/ticket_details_screen_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/unit_details_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/widgets/base_remote_widget.dart';
import '../../../../../core/widgets/custom_pagination_list.dart';
import '../../../../../core/widgets/empty_lottie.dart';
import '../../../../../generated/l10n.dart';

part 'owner_notification_screen.dart';