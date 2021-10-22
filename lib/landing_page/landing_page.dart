import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getElements(constraints.biggest.width/2),
          );
        } else {
          return Column(
            children: _getElements(constraints.biggest.width),
          );
        }
      },
    );
  }

  List<Widget> _getElements(double contentWidth) {
    return [
      SizedBox(
        width: contentWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Website\nDevelopers',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "We've taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  'Our Packages',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      Image.asset('assets/images/lp_image.png',width: contentWidth,),
    ];
  }
}
