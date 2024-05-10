import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/constants/values.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/shared_cubits/user_cubit/user_cubit.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/logic/more_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/navigator/named_routes.dart';
import '../../../../../core/navigator/navigator.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../generated/l10n.dart';
import '../../../choose_language/logic/cubit/choose_language_cubit.dart';
import '../../data/models/profile_item.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  @override
  void initState() {
    getIt<MoreCubit>().getContactInfo();
    super.initState();
  }

  List<ProfileItem> profileItems = [
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).accountInfo,
      icon: AssetsManager.user,
      onTap: () {
        Go.toNamed(NamedRoutes.accountInfo);
      },
    ),
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).notifications,
      icon: AssetsManager.bell,
      onTap: () {
        Go.toNamed(NamedRoutes.ownerNotification);
      },
    ),
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).offers,
      icon: AssetsManager.percent,
      onTap: () {
        Go.toNamed(NamedRoutes.offers);
      },
    ),
    ProfileItem(
        title: S.of(Go.navigatorKey.currentContext!).language,
        icon: AssetsManager.globe,
        onTap: null,
        trailing: BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
          builder: (context, state) {
            return DropdownButton<String>(
              value: state.language!.languageCode,
              items: [
                DropdownMenuItem<String>(child: Text('عربي'), value: 'ar'),
                DropdownMenuItem<String>(child: Text('English'), value: 'en'),
              ],
              onChanged: (String? value) {
                getIt<ChooseLanguageCubit>().changeLanguage(value!);
              },
            );
          },
        )),
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).rateApp,
      icon: AssetsManager.star,
      onTap: () {},
    ),
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).helpAndSupport,
      icon: AssetsManager.helpCircle,
      onTap: () {
        Go.toNamed(NamedRoutes.helpAndSupport);
      },
    ),
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).termsAndConditions,
      icon: AssetsManager.bookOpen,
      onTap: () {
        Go.toNamed(NamedRoutes.termsAndConditions);
      },
    ),
    //about
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).aboutApp,
      icon: AssetsManager.info,
      onTap: () {
        Go.toNamed(NamedRoutes.aboutApp);
      },
    ),
    ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).logout,
      icon: AssetsManager.logOut,
      onTap: () {
        showIosDialog(
          context: Go.navigatorKey.currentContext!,
          title: S.of(Go.navigatorKey.currentContext!).logout,
          okText: S.of(Go.navigatorKey.currentContext!).exit,
          cancelText: S.of(Go.navigatorKey.currentContext!).cancel,
          ok: () {
            clearAllData();
            Go.offAllNamed(NamedRoutes.login);
            // Go.toNamed(NamedRoutes.login);
          },
          cancel: () {},
          content: S.of(Go.navigatorKey.currentContext!).areYouWantToLogout,
        );
      },
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  color: ColorsManager.primary,
                  height: 100.sp,
                ),
              ),
              _buildBody(),
            ],
          ),
          _buildProfileImage(),
        ],
      ),
    );
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 150.sp),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          MoreItem(
              title: S.current.accountInfo,
              icon: AssetsManager.user,
              onTap: () => Go.toNamed(NamedRoutes.accountInfo)),
          MoreItem(
              title: S.current.notifications,
              icon: AssetsManager.bell,
              onTap: () => Go.toNamed(NamedRoutes.ownerNotification)),
          MoreItem(
              title: S.current.offers,
              icon: AssetsManager.percent,
              onTap: () => Go.toNamed(NamedRoutes.offers)),
          MoreItem(
            title: S.current.language,
            icon: AssetsManager.globe,
            trailling: DropdownButton<String>(
              value: getIt<ChooseLanguageCubit>().state.language!.languageCode,
              items: [
                DropdownMenuItem<String>(child: Text('عربي'), value: 'ar'),
                DropdownMenuItem<String>(child: Text('English'), value: 'en'),
              ],
              onChanged: (String? value) {
                getIt<ChooseLanguageCubit>().changeLanguage(value!);
              },
            ),
          ),
          MoreItem(title: S.current.rateApp, icon: AssetsManager.star),
          MoreItem(
              title: S.current.helpAndSupport,
              icon: AssetsManager.helpCircle,
              onTap: () => Go.toNamed(NamedRoutes.helpAndSupport)),
          MoreItem(
            title: S.current.termsAndConditions,
            icon: AssetsManager.bookOpen,
            onTap: () => Go.toNamed(NamedRoutes.termsAndConditions),
          ),
          MoreItem(
            title: S.current.aboutApp,
            icon: AssetsManager.info,
            onTap: () => Go.toNamed(NamedRoutes.aboutApp),
          ),
          MoreItem(
            title: S.current.logout,
            icon: AssetsManager.logOut,
            color: ColorsManager.red,
            iconColor: ColorsManager.red,
            onTap: () => showIosDialog(
              context: Go.navigatorKey.currentContext!,
              title: S.of(Go.navigatorKey.currentContext!).logout,
              okText: S.of(Go.navigatorKey.currentContext!).exit,
              cancelText: S.of(Go.navigatorKey.currentContext!).cancel,
              ok: () {
                clearAllData();
                Go.offAllNamed(NamedRoutes.login);
                // Go.toNamed(NamedRoutes.login);
              },
              cancel: () {},
              content: S.of(Go.navigatorKey.currentContext!).areYouWantToLogout,
            ),
          ),
        ],
      ),
    );
  }

  _buildProfileImage() {
    final userModel = getIt<UserCubit>().state.userModel;
    return Positioned(
      top: 50.sp,
      left: 0,
      right: 0,
      child: Column(
        children: [
          _buildImage(),
          8.verticalSpace,
          //first and last name in ar
          Text(
            '${userModel?.firstName ?? ''} ${userModel?.lastName ?? ''}',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: ColorsManager.primaryDark,
            ),
          ),
          8.verticalSpace,
          Text(
            userModel!.role == 'OWNER'
                ? S.of(context).propertyOwner
                : S.of(context).tenant,
            style: getRegularStyle(
              fontSize: 16.sp,
              color: ColorsManager.primary,
            ),
          ),
        ],
      ),
    );
  }

  _buildImage() {
    return Center(
      child: Container(
        width: 100.sp,
        height: 100.sp,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff3D6A98),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: CustomCachedImage(
                image: getIt<AuthCubit>().userModel?.photo ?? '',
                width: 100.sp,
                height: 100.sp,
              )
              // child:
              ),
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MoreItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Color? color;
  final String icon;
  final Color? iconColor;
  final Widget? trailling;

  const MoreItem(
      {super.key,
      this.onTap,
      required this.title,
      this.color,
      required this.icon,
      this.iconColor,
      this.trailling});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: getBoldStyle(fontSize: 14.sp, color: color),
        ),
        leading: SvgPicture.asset(
          icon,
          // ignore: deprecated_member_use
          color: iconColor ?? ColorsManager.primary,
        ),
        trailing: trailling);
  }
}
