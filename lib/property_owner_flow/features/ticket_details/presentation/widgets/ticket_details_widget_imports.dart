
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file/open_file.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../../core/extensions/ticket_status_extention.dart';
import '../../../../../core/extensions/ticket_type_extention.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/base_remote_widget.dart';
import '../../../../../core/widgets/custom_border_container.dart';
import '../../../../../core/widgets/ticket_item.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/ticket_details_model.dart';
import '../logic/cubit/ticket_details_cubit.dart';

part 'ticket_content.dart';
part 'ticket_details_body.dart';
part 'ticket_details_bottom_button.dart';
part 'ticket_header.dart';
part 'ticket_images.dart';
part 'ticket_information.dart';
part 'ticket_information_row.dart';
