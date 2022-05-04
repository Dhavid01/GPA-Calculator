import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF212121),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Colors.redAccent, shape: BoxShape.circle),
                  ),
                   Positioned(
                     right: 5,
                     left: 5,
                     bottom: 5,
                     top: 5,
                     child: Container(
                       clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration( 
                        shape: BoxShape.circle,
                        ),
                        child:CachedNetworkImage(
                              imageUrl:
                                  "https://images.pexels.com/photos/4491441/pexels-photo-4491441.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.fill,) ,
                                     ),
                   ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const AppButton(
                text: "Add Grades",
                height: 45,
                width: 115,
              ),
              const SizedBox(
                height: 15,
              ),
              const AppButton(
                text: "About Developers",
                height: 45,
                width: 165,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
