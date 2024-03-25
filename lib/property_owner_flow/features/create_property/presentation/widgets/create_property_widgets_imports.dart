import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/extensions/validator.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_property/presentation/logic/cubit/create_property_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_property/presentation/utils/create_property_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/enums/enums.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_custom_text_form_field.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';

part 'create_property_form.dart';