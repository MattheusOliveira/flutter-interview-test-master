import 'package:flutter/material.dart';

class CustomFooterWidget extends StatelessWidget {
  const CustomFooterWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/Youse.png',
                width: 130,
              ),
            )
          ],
        ),
      ),
    );
  }
}
