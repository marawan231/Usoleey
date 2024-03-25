import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/core/widgets/bottom_sheet_header.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_property/presentation/screens/create_property_screens_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/my_real_estate/presentation/logic/cubit/my_real_estate_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_bottom_sheet_dialog.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/my_real_estate_widgets_imports.dart';

part 'my_real_estate_screen.dart';