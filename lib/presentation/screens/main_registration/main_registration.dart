part of 'main_registration_imports.dart';

@RoutePage()
class MainRegistration extends StatefulWidget {
  const MainRegistration({super.key});

  @override
  State<MainRegistration> createState() => _MainRegistrationState();
}

class _MainRegistrationState extends State<MainRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Great!"
                  .text
                  .bold
                  .xl3
                  .fontWeight(FontWeight.w800)
                  .color(MyColors.black)
                  .make()
                  .centered(),
              5.h.heightBox,
              "Help us with basic details for \n personalized recommendations"
                  .text
                  .size(16)
                  .align(TextAlign.center)
                  .color(const Color(0xFF0B0410))
                  .fontWeight(FontWeight.w500)
                  .make()
                  .centered(),
              30.heightBox,
              "First name*".text.letterSpacing(0.5).make(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(
                          color: Colors.black), // Change the input text color
                      decoration: InputDecoration(
                        hintText: "First Name*",
                        hintStyle: TextStyle(
                          color:
                              Color(0xFFD4DAE6), // Change the hint text color
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the underline color when focused
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the default underline color
                        ),
                      ),
                    ),
                    30.heightBox,
                    TextField(
                      style: TextStyle(
                          color: Colors.black), // Change the input text color
                      decoration: InputDecoration(
                        hintText: "Last Name*",
                        hintStyle: TextStyle(
                          color:
                              Color(0xFFD4DAE6), // Change the hint text color
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the underline color when focused
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the default underline color
                        ),
                      ),
                    ),
                    30.heightBox,
                    TextField(
                      style: TextStyle(
                          color: Colors.black), // Change the input text color
                      decoration: InputDecoration(
                        hintText: "Select Your Profile",
                        hintStyle: TextStyle(
                          color:
                              Color(0xFFD4DAE6), // Change the hint text color
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the underline color when focused
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the default underline color
                        ),
                      ),
                    ),
                    30.heightBox,
                    TextField(
                      style: TextStyle(
                          color: Colors.black), // Change the input text color
                      decoration: InputDecoration(
                        hintText: "Experience*",
                        hintStyle: TextStyle(
                          color:
                              Color(0xFFD4DAE6), // Change the hint text color
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the underline color when focused
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the default underline color
                        ),
                      ),
                    ),
                    30.heightBox,
                    TextField(
                      style: TextStyle(
                          color: Colors.black), // Change the input text color
                      decoration: InputDecoration(
                        hintText: "Email*",
                        hintStyle: TextStyle(
                          color:
                              Color(0xFFD4DAE6), // Change the hint text color
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the underline color when focused
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(
                                  0xFFD4DAE6)), // Change the default underline color
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: MyColors.primarycolor,
                      fixedSize: const Size(400, 50)),
                  child: Center(
                    child: "Join For Community"
                        .text
                        .size(20)
                        .fontWeight(FontWeight.w800)
                        .color(const Color(0xFFFFFFFF))
                        .make(),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
