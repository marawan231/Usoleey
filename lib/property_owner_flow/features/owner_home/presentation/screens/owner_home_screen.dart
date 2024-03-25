part of 'owner_home_screens_imports.dart';

class OwnerHomeScreen extends StatelessWidget {
  const OwnerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<OwnerHomeCubit>()..getHomeStats()),
        BlocProvider(create: (context) => getIt<UserCubit>()),
      ],
      child: OwnerHomeView(),
    );
  }
}

class OwnerHomeView extends StatelessWidget {
  const OwnerHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: OwnerHomeAppBar(), body: OwnerHomeBody());
  }
}
