import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/core/extensions/scroll_controller_extension.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/presentation/screens/unit_details_screens_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../tenant_flow/features/more/presentation/screens/more_view.dart';
import '../../../property_details/presentation/screens/owner_property_details_screens_imports.dart';
import '../logic/cubit/my_real_estate_cubit.dart';

part 'add_unit_item.dart';
part 'item_background.dart';
part 'my_properties.dart';
part 'my_real_estate_item.dart';
part 'my_units.dart';
