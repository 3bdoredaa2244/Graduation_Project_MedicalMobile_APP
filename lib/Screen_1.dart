import 'package:clickcounter/Screen_2.dart';
import 'package:flutter/material.dart';

class FirstScrean extends StatelessWidget {
  const FirstScrean({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: Size.height,
          width: Size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://as2.ftcdn.net/v2/jpg/02/14/27/15/1000_F_214271552_qfVz2v418ATJZfXjACUV9ivoZsvh6f5n.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "   ",
                //   "Find Your Specialist ! ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Size.height / 30,
              ),
              const Text(
                "  Now it is easy to make an Appointment  With Your Doctor ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Size.height / 30,
              ),
              customButton(Size, context),
              SizedBox(
                height: Size.height / 30,
              )
            ],
          )),
    );
  }

  Widget customButton(Size size, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen())),
      child: Container(
        height: size.height / 15,
        width: size.width / 2.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(255, 115, 100, 1)),
        alignment: Alignment.center,
        child: const Text(
          "Get Started",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
