part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToRegister();
    super.initState();
  }

  moveToRegister() async {
    await Future.delayed(Duration(seconds: 3), () {
      AutoRouter.of(context).push(RegisterScreenRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: FadedScaleAnimation(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: const Color(0xFFFFFFFF),
          ),
          child: Image.asset(
            "assets/images/Group.png",
            width: 130,
            height: 55,
          ),
        ),
      )),
    );
  }
}
