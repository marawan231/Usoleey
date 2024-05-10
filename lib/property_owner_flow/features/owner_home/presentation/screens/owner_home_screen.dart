part of 'owner_home_screens_imports.dart';

class OwnerHomeScreen extends StatelessWidget {
  const OwnerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<OwnerHomeCubit>()),
        BlocProvider(create: (context) => getIt<UserCubit>()),
      ],
      child: OwnerHomeView(),
    );
  }
}

class OwnerHomeView extends StatefulWidget {
  const OwnerHomeView({super.key});

  @override
  State<OwnerHomeView> createState() => _OwnerHomeViewState();
}

class _OwnerHomeViewState extends State<OwnerHomeView> {
  @override
  void initState() {
    getIt<OwnerHomeCubit>().getHomeStats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: UserHomeAppBar(), body: OwnerHomeBody());
  }
}
