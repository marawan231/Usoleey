import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/presentation/logic/cubit/property_details_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_property/presentation/screens/update_property_screens_imports.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/base_remote_widget.dart';
import '../../../../../core/widgets/custom_border_container.dart';
import '../../../../../core/widgets/custom_cached_image.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../unit_details/presentation/widgets/unit_details_widgets_imports.dart';
import '../../data/models/propert_details_model.dart';

part 'owner_property_details_screen.dart';