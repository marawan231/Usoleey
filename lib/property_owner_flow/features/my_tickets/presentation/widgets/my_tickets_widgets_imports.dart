import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/extensions/scroll_controller_extension.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/widgets/base_remote_widget.dart';
import 'package:flutter_complete_project/core/widgets/ticket_shimmer_item.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/widgets/custom_pagination_list.dart';
import '../../../../../core/widgets/empty_lottie.dart';
import '../../../../../core/widgets/ticket_item.dart';
import '../../../../../generated/l10n.dart';
import '../logic/cubit/my_tickets_cubit.dart';

part 'processing_tickets.dart';
part 'reviewing_tickets.dart';
part 'solved_tickets.dart';