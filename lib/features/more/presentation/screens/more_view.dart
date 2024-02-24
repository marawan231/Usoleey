import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/constants/values.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

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
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: profileItems[index].onTap,
              title: Text(
                profileItems[index].title ?? '',
                style: getBoldStyle(
                    fontSize: 14.sp,
                    color: index == profileItems.length - 1
                        ? ColorsManager.red
                        : null),
              ),
              leading: SvgPicture.asset(
                profileItems[index].icon!,
                // ignore: deprecated_member_use
                color: index == profileItems.length - 1
                    ? ColorsManager.red
                    : ColorsManager.primary,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return index == 2
                ? Divider()
                : index == profileItems.length - 2
                    ? 16.verticalSpace
                    : SizedBox.shrink();
          },
          itemCount: profileItems.length),
    );
  }

  _buildProfileImage() {
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
            '${getIt<AuthCubit>().userModel?.firstName ?? ''} ${getIt<AuthCubit>().userModel?.lastName ?? ''}',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: ColorsManager.primaryDark,
            ),
          ),
          8.verticalSpace,
          Text(
            getIt<AuthCubit>().userModel?.role ?? '',
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
