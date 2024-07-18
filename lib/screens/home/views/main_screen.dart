import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow
                        ),
                      )  
                      ,
                      const SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                              CupertinoIcons.person_fill,
                              color: Color.fromARGB(255, 70, 56, 230),
                              size: 30,
                              
                            ),
                      ),                  ]
                    ),
                         
                         const SizedBox(width: 15),
                         Column(
                      children: [
                        Text("welcome",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.outline
                        ),
                        ),
                        Text("joe Daoe",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onBackground,
                        ))
                      ],
                    )
                  ],
                ),
                IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.settings))
              ],

            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/2,
              decoration:  BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,

              ],
              transform: const GradientRotation(pi/4),
              ),
                borderRadius: BorderRadius.circular(25)


              ),


            )

          ],
        ),
      ),
    );
  }
}