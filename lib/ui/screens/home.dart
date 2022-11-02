import 'package:agrify/ui/utilities/colors.dart';
import 'package:agrify/ui/utilities/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimarySwatch,
        title: Row(
          children: [Text('Agrify')],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          CircleAvatar(),
          spacer(width: 20)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                spacer(height: 25),
                const Text(
                  'Dashboard',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                spacer(height: 10),
                const Text(
                  'Welcome Nishant Pokhrel!',
                  style: TextStyle(fontSize: 16),
                ),
                spacer(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Weather Forecast', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded),),
                    ],
                  ),
                ),
                spacer(height: 20),
                Text('Weather seems to be partly cloudy today. Make good preparations', style: TextStyle(fontSize: 16),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
