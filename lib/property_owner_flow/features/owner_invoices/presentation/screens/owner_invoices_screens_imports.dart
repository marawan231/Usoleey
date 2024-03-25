import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_invoices/presentation/logic/cubit/owner_invoices_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/presentation/widgets/unit_details_widgets_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../generated/l10n.dart';

part 'owner_invoices_screen.dart';