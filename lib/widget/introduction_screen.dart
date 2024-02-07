import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'ORDER',
        body: 'Begin your shopping journey with us!  ',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 8,
                ),
                onPressed: () {},
                child: const Text("Lets meow"),
              ),
            ],
          ),
        ),
        image: Image.asset("assets/images/image12123.png"),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'PAYMENT',
        body:
            'Secure your purchases! Add your payment details and enjoy worry-free transactions.',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 8,
                ),
                onPressed: () {},
                child: const Text("Lets meow"),
              ),
            ],
          ),
        ),
        image: Image.asset("assets/images/imag23e.png"),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'DELIVERY',
        body: 'Choose your delivery options to get started.',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 8,
                ),
                onPressed: () {},
                child: const Text("Lets meow"),
              ),
            ],
          ),
        ),
        image: Image.asset("assets/images/imag1231223e.png"),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to wet tamarind company"),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        pages: pages,
        showSkipButton: true,
        skip: const Text("skip"),
        showDoneButton: true,
        done: const Text("done"),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context), // ต้องการ function
        curve: Curves.bounceOut,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Colors.blue,
          activeColor: Colors.orange,
          activeSize: Size.square(20),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefers = await SharedPreferences.getInstance();
    await prefers.setBool("On boarding", false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
