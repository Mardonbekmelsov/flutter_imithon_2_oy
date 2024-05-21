import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/utils/cart.dart';
import 'package:flutter_imithon_2_oy/utils/wishlist.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String, dynamic> product;
  ProductDetailPage({required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    widget.product["isLiked"] =
        wishlist.contains(widget.product) ? true : false;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 330,
              decoration: const BoxDecoration(
                color: Color(0xff63771E),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        widget.product["image"],
                        width: 255,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "images/bell.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, -0.1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 190,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color(0xff89A335),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      for (int i = 0; i < 3; i++)
                        Container(
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                widget.product["image"],
                              ),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.product["name"],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$${widget.product["price1"]}",
                                  style: const TextStyle(
                                      color: Color(0xff63771E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const InkWell(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Select Model",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                if (widget.product["isLiked"] == false) {
                                  wishlist.add(widget.product);
                                } else {
                                  wishlist.removeWhere(
                                      (element) => element == widget.product);
                                }
                              },
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.circle,
                            ),
                            child: widget.product["isLiked"]
                                ? const Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.grey,
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Stock: ${widget.product["stock"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Sold: ${widget.product["sold"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.orange,
                            ),
                            Text(
                              "${widget.product["rating"]}",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Additional Info:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "All oak veneered and solid oak surfaces painted with clear lack 25% gloss. All surfaces painted with polyurethane paint 25% gloss.Handles coat painted 30% gloss.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Brand:",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(" Dekorin"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Size:",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(" ${widget.product["size"]}"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Type:",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(" ${widget.product["height"]}"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Weight:",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(" ${widget.product["weight"]}"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "User Review:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              child: Image.asset(
                                "images/john_smith.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "John Smith",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            for (int i = 0; i < 5; i++)
                              Icon(
                                Icons.star_rounded,
                                color: Colors.orange,
                                size: 20,
                              )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "This wooden cabinet is very cool, the best product quality. Once again I am grateful to Dekorin, its..."),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              child: Image.asset(
                                "images/john_smith.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "John Smith",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            for (int i = 0; i < 4; i++)
                              Icon(
                                Icons.star_rounded,
                                color: Colors.orange,
                                size: 20,
                              ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.grey.shade400,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "This Perect wooden cabinet is very cool, the best product quality."),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFCFDF8),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (amount > 1) amount -= 1;
                });
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.remove,
                  color: Color(0xff63771E),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "${amount}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xff63771E,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  amount += 1;
                });
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xff63771E),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {
                if (cart.contains(widget.product)) {
                  amounts[cart.indexOf(widget.product)] += amount;
                } else {
                  cart.add(widget.product);
                  amounts.add(amount);
                }
                Navigator.pop(context);
              },
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xff89A335),
                ),
              ),
              child: Text(
                "Add To Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
