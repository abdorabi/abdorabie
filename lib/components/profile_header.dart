import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const ProfileHeader(
      // ignore: non_constant_identifier_names
      {required this.CoverPic,
      required this.profilePic,
      super.key});
  final String profilePic;
  // ignore: non_constant_identifier_names
  final String CoverPic;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            CoverPic,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: -75,
            child: CircleAvatar(
              backgroundImage: NetworkImage(profilePic),
              radius: 75,
            ),
          ),
        ],
      ),
    );
  }
}
