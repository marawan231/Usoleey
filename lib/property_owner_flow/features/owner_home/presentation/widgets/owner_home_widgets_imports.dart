import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/shared_cubits/user_cubit/user_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/presentation/logic/cubit/owner_home_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/navigator/named_routes.dart';
import '../../../../../core/navigator/navigator.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/ticket_item.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../tenant_flow/features/login/data/models/auth_model.dart';

part 'home_item_curve_clipper.dart';
part 'notification_button.dart';
part 'owner_home_app_bar.dart';
part 'owner_home_bar_content.dart';
part 'owner_home_body.dart';
part 'owner_home_stats.dart';
part 'recent_tickets.dart';
part 'stats_item.dart';
