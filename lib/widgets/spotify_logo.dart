import 'package:flutter/material.dart';

class SpotifyLogo extends StatelessWidget {
  const SpotifyLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: width * 0.18,
        child: Image.asset("assets/images/spotify_logo.png", fit: BoxFit.cover),
      ),
    );
  }
}
