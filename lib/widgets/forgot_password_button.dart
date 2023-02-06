import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.1, vertical: height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: const Text("Forgot password?",
                style: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                )),
            onTap: () {
              print("Forgot password?");
            },
          )
        ],
      ),
    );
  }
}
