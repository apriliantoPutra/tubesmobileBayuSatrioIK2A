import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.2,
        ),
        Container(
          child: Lottie.asset('asset/jason/loading.json'),
        ),
        Text('Jangan aneh2',
        style: TextStyle(
          fontSize: 16.0,
        ),),
      ],
    );
  }
}
