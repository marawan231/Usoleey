import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_invoices/presentation/logic/cubit/owner_invoices_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_shared_appbar.dart';
import '../../../../../core/widgets/ticket_item.dart';
import '../../../../../generated/l10n.dart';
import '../logic/cubit/owner_tickets_cubit.dart';

part 'owner_tickets_screen.dart';