import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_property/presentation/logic/cubit/update_property_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_property/presentation/utils/update_property_utils.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_shared_appbar.dart';
import '../../../../../core/widgets/custom_cached_image.dart';
import '../../../../../generated/l10n.dart';

part 'update_property_screen.dart';