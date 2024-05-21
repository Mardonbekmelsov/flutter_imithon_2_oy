import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/cart_page.dart';

class ProfileDetailWidget extends StatelessWidget {
  final Map<String, dynamic> profileDetail;

  ProfileDetailWidget({required this.profileDetail});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (profileDetail["name"] == "My Order")
          ? () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            }
          : () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: profileDetail["hasBorder"]
                  ? Colors.grey.shade400
                  : Colors.white,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  profileDetail["iconimage"],
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  profileDetail["name"],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
