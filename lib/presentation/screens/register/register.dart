part of 'register_imports.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late RegisterViewModel registerViewModel;

  @override
  void initState() {
    registerViewModel =
        RegisterViewModel(repository: context.read<Repository>());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Come for Opportunities,\n stay for community"
                .text
                .maxLines(2)
                .fontWeight(FontWeight.w800)
                .size(30)
                .color(MyColors.black)
                .center
                .make(),
            const Spacer(),
            Center(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+91 -',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w700,
                            height: 0.07,
                          ),
                        ),
                      ],
                    ),
                    10.widthBox,
                    Expanded(
                      child: VxTextField(
                        controller: registerViewModel.mobileNumberController,
                        keyboardType: TextInputType.number,
                        hint: "Enter Whatsapp Mobile Number",
                        fillColor: Colors.transparent,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  registerViewModel.sendOtp(
                      registerViewModel.mobileNumberController.text,
                      "1",
                      context);
                  AutoRouter.of(context).push(OtpScreenRoute(
                      mobilenumber:
                          registerViewModel.mobileNumberController.text));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: MyColors.primarycolor,
                    fixedSize: const Size(358, 50)),
                child: Center(
                  child: "Join For Free"
                      .text
                      .size(20)
                      .fontWeight(FontWeight.w800)
                      .color(const Color(0xFFFFFFFF))
                      .make(),
                )),
            8.heightBox,
            ""
                .richText
                .withTextSpanChildren([
                  "Join ".textSpan.make(),
                  "18506".textSpan.bold.make(),
                  " Creators today".textSpan.make(),
                ])
                .make()
                .centered(),
            const Spacer(),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "I agree to ",
                  ),
                  TextSpan(
                    text: "Differ ",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " and ",
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " to receive emails and WhatsApp updates.",
                  ),
                ],
              ),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6E6D7A),
              ),
              maxLines: 2,
            ),
            30.heightBox,
          ],
        ),
      )),
    );
  }
}
