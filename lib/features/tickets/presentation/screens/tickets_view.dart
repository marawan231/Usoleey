import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
      child: Column(
        children: [
          _buildFilterBy(),
          16.verticalSpace,
          _buildTicketsList(),
        ],
      ),
    );
  }

  _buildFilterBy() {
    return Row(
      children: [
        Container(
            // padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
            width: 100.sp,
            height: 36.sp,
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderRadius.circular(24.sp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.filter_alt_outlined,
                  color: ColorsManager.white,
                  size: 14.sp,
                ),
                5.horizontalSpace,
                Text(S.current.filterBy,
                    style: getBoldStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                    )),
                // 8.horizontalSpace,
              ],
            )),
      ],
    );
    // child: Row();
  }

  _buildTicketsList() {
    return Expanded(
      child: ListView.separated(
          padding:
              EdgeInsets.only(top: 0.sp, bottom: 24.sp, left: 0.sp, right: 0),
          shrinkWrap: true,
          itemBuilder: (context, index) => _buildTicketItem(),
          separatorBuilder: (context, index) => 8.verticalSpace,
          itemCount: 10),
    );
  }

  _buildTicketItem() {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        border: Border.all(color: ColorsManager.grey, width: 1.sp),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          _buildTicketStatusColor(),
          8.horizontalSpace,
          Expanded(child: _buildTicketBody()),
        ],
      ),
      // child:
    );
  }

  Widget _buildTicketStatusColor() {
    return Column(
      children: [
        Container(
          height: 100.sp,
          width: 8.sp,
          decoration: BoxDecoration(
            color: ColorsManager.greenDark,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTicketBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 10.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTicketInfo(),
          10.verticalSpace,
          Text(
            'يوجد مشكلة في صيانة الغاز ارجو إرسال عامل للإصلاح',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: getBoldStyle(fontSize: 14.sp, color: ColorsManager.black),
          ),
          10.verticalSpace,
          Text('تم الإنشاء: منذ ٤ أيام',
              style: getBoldStyle(
                fontSize: 11.sp,
                color: ColorsManager.greyMedium,
              )),
        ],
      ),
    );
  }

  _buildTicketInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildTicketStatus(),
            8.horizontalSpace,
            _buildTicketType(),
          ],
        ),
        // Spacer(),
        _buildTicketHashCode(),
      ],
    );
  }

  _buildTicketStatus() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
        decoration: BoxDecoration(
          color: ColorsManager.green,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              color: ColorsManager.greenDark,
              size: 8.sp,
            ),
            4.horizontalSpace,
            Text(
              'تم الحل',
              style: getBoldStyle(
                fontSize: 12.sp,
                color: ColorsManager.greenDark,
              ),
            ),
          ],
        ));
  }

  _buildTicketType() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        color: ColorsManager.greyLighter,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        'خدمة',
        style: getBoldStyle(
          fontSize: 12.sp,
          color: ColorsManager.greyLight,
        ),
      ),
    );
  }

  _buildTicketHashCode() {
    return Text(
      'رقم التذكرة:#234A',
      style: getBoldStyle(
        fontSize: 12.sp,
        color: const Color.fromRGBO(179, 182, 189, 1),
      ),
    );
  }
}
