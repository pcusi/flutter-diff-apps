import 'package:flutter/material.dart';

import '3dApp/3d_component.dart';

class OptionPracticeWidget extends StatelessWidget {
  const OptionPracticeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(color: Color(0xFF232631)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => LayoutComponent()))
                },
                child: Text(
                  '3d App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
