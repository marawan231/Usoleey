part of 'owner_notification_screens_imports.dart';

class OwnerNotificationScreen extends StatelessWidget {
  const OwnerNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OwnerNotificationCubit>(),
      child: OwnerNotificationView(),
    );
  }
}

class OwnerNotificationView extends StatefulWidget {
  const OwnerNotificationView({super.key});

  @override
  State<OwnerNotificationView> createState() => _OwnerNotificationViewState();
}

class _OwnerNotificationViewState extends State<OwnerNotificationView> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<OwnerNotificationCubit>().getOwnerNotifications(firstTime: true);
    scrollController.onScrollEndsListener(
        () => getIt<OwnerNotificationCubit>().getOwnerNotifications());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: S.current.notifications),
      body: RefreshIndicator(
        onRefresh: () => getIt<OwnerNotificationCubit>()
            .getOwnerNotifications(firstTime: true),
        child: BlocBuilder<OwnerNotificationCubit, OwnerNotificationState>(
          builder: (context, state) {
            return BaseRemoteWidget(
                requestState: state.getOwnerNotificationState,
                loadingWidget: OwnerNotificationShimmer(),
                successWidget: state.notifications.isNotEmpty
                    ? CustomPaginationList(
                        mainAxisSpacing: 0,
                        childAspectRatio: 4.5,
                        padding: EdgeInsets.zero,
                        scrollController: scrollController,
                        itemBuilder: (index) => NotificationItem(
                            notification: state.notifications[index]),
                        allListCount: getIt<OwnerNotificationCubit>().count,
                        paginationList: state.notifications)
                    : EmptyLottie(
                        lottiePath: AssetsManager.emptyNotifications,
                        title: S.current.emptyNotifications,
                        subTitle: '',
                        isButtonVisible: false,
                        padding: 0));
          },
        ),
      ),
    );
  }
}

class OwnerNotificationShimmer extends StatelessWidget {
  const OwnerNotificationShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
          15,
          (index) => ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              horizontalTitleGap: 8,
              leading: CustomShimmer(width: 50, height: 50, radius: 25),
              title: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: CustomShimmer(width: 50, height: 15),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomShimmer(width: 200, height: 10),
                  4.verticalSpace,
                  CustomShimmer(width: 50, height: 10)
                ],
              ))),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final OwnerNotificationItem notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          notification.status == 'UNSEEN' ? ColorsManager.primaryLighter : null,
      child: ListTile(
          onTap: () {
            if (notification.ticketId != null) {
              Go.toNamed(NamedRoutes.ownerTicketDetails,
                  arguments: TicketDetailsScreen(id: notification.ticketId!));
            }
          },
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          horizontalTitleGap: 8,
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: notification.status == 'UNSEEN'
                ? ColorsManager.primaryLight
                : ColorsManager.grey,
            child: SvgPicture.asset(AssetsManager.bell,
                // ignore: deprecated_member_use
                color: notification.status == 'UNSEEN'
                    ? null
                    : ColorsManager.greyLight),
          ),
          title: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(notification.title ?? '',
                style: getBoldStyle(
                    color: ColorsManager.primaryDark, fontSize: 14)),
          ),
          subtitle: Text(notification.body ?? '',
              style: getRegularStyle(
                  color: ColorsManager.greyLight, fontSize: 12))),
    );
  }
}
