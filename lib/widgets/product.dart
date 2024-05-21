import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/product_detail_page.dart';
import 'package:flutter_imithon_2_oy/utils/wishlist.dart';

class Product extends StatefulWidget {
  Map<String, dynamic> product;
  Product({required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    widget.product["isLiked"] =
        wishlist.contains(widget.product) ? true : false;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (conetxt) =>
                    ProductDetailPage(product: widget.product)));
      },
      child: Container(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: 160,
              height: 185,
              decoration: BoxDecoration(
                color: Color(0xffDAE3E0),
                borderRadius: BorderRadius.circular(15),
                image:
                    DecorationImage(image: AssetImage(widget.product["image"])),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (widget.product["isLiked"] == false) {
                          wishlist.add(widget.product);
                        } else {
                          wishlist.removeWhere(
                              (element) => element == widget.product);
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: widget.product["isLiked"]
                          ? Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.grey.shade400,
                            )
                          : Icon(
                              CupertinoIcons.heart,
                              color: Colors.grey.shade400,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.product["name"],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "${widget.product["sold"]} Sold",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade400,
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${widget.product["price1"]}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff63771E),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.product["rating"],
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
