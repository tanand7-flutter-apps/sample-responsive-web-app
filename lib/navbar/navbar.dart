import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'RetroPortal Studio',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Row(
            children: [
              const Text('Home', style: TextStyle(color: Colors.white)),
              const SizedBox(width: 30),
              const Text('About Us', style: TextStyle(color: Colors.white)),
              const SizedBox(width: 30),
              const Text('Portfolio', style: TextStyle(color: Colors.white)),
              const SizedBox(width: 30),
              MaterialButton(
                color: Colors.pink,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: const Text('Get Started', style: TextStyle(color:Colors.white)),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: [
        const Text(
        'RetroPortal Studio',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Home', style: TextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text('About Us', style: TextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text('Portfolio', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      ],
      ),
    );
  }
}
