part of 'otp_import.dart';

@RoutePage()
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.mobilenumber});
  final String mobilenumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late OtpViewModel otpViewModel;

  @override
  void initState() {
    otpViewModel = OtpViewModel(repository: context.read<Repository>());
    otpViewModel.otptextEditingController.text = widget.mobilenumber;
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
                        controller: otpViewModel.otptextEditingController,
                        keyboardType: TextInputType.number,
                        hint: "Enter Whatsapp Mobile Number",
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "We have sent ",
                      style: TextStyle(color: Color(0xFF6E6D7A))),
                  TextSpan(
                    text: "OTP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text: " to ", style: TextStyle(color: Color(0xFF6E6D7A))),
                ],
              ),
            ).centered(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: otpViewModel.controllers[0],
                    onChanged: (value) {
                      otpViewModel.FieldChange(value, 0, context);
                    },
                    decoration: const InputDecoration(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: otpViewModel.controllers[1],
                    onChanged: (value) {
                      otpViewModel.FieldChange(value, 1, context);
                    },
                    decoration: const InputDecoration(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: otpViewModel.controllers[2],
                    onChanged: (value) {
                      otpViewModel.FieldChange(value, 2, context);
                    },
                    decoration: const InputDecoration(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: otpViewModel.controllers[3],
                    onChanged: (value) {
                      otpViewModel.FieldChange(value, 3, context);
                    },
                    decoration: const InputDecoration(),
                  ),
                ),
              ],
            ).centered(),
            8.heightBox,
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const MainRegistrationRoute());
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
                  "Join ".textSpan.color(const Color(0xFF6E6D7A)).make(),
                  "18506".textSpan.bold.make(),
                  " Creators today"
                      .textSpan
                      .color(const Color(0xFF6E6D7A))
                      .make(),
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
