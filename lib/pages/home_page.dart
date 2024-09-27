import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Zheer Barzan'),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('About'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Experince'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Projects'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Contact'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Hello, I'm ",
                              style: GoogleFonts.roboto(
                                color: Theme.of(context).colorScheme.surface,
                              )),
                          Text('Zheer Barzan',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.surface)),
                          Text('I am a Flutter Developer',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.surface)),
                        ],
                      ),
                      Image.asset('assets/images/zheer.png', height: 300),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
