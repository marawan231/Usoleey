import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';

import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_shared_appbar.dart';
import '../../../../../core/widgets/empty_lottie.dart';
import '../../../../../core/widgets/ticket_item.dart';
import '../../../../../generated/l10n.dart';
import '../../../owner_home/data/models/home_model.dart';
import '../logic/cubit/owner_tickets_cubit.dart';

part 'owner_tickets_screen.dart';