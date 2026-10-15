import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/Frame 5 (1).png',
            width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 24),

          const Text(
            'Task Management &\n         To-Do List',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 16),
          const Text(
            'This productive tool is designed to help\nyou better manage your task\n project-wise conveniently!',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff6E6A7C),
            ),
          ),

          const SizedBox(height: 26),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'WelcomScreen');
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7F3DFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),

                child: Text(
                  'Let’s Start',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
