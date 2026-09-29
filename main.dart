import 'package:flutter/material.dart';

void main() {
  runApp(ClothingShopApp());
}

// ================= APP =================

class ClothingShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "StyleHub",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

// ================= HOME PAGE =================

class HomePage extends StatelessWidget {
  final List<Map<String, String>> featuredProducts = [
    {
      "name": "Classic T-Shirt",
      "image":
      "https://images.unsplash.com/photo-1618453292459-53424b66bb6a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHQlMjBzaGlydHN8ZW58MHx8MHx8fDA%3D",
    },
    {
      "name": "Denim Jacket",
      "image":
      "https://images.unsplash.com/photo-1611312449408-fcece27cdbb7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVuaW0lMjBqYWNrZXR8ZW58MHx8MHx8fDA%3D",
    },
    {
      "name": "Casual Shirt",
      "image":
      "https://images.unsplash.com/photo-1740711152088-88a009e877bb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FzdWFsJTIwc2hpcnR8ZW58MHx8MHx8fDA%3D",
    },
    {
      "name": "Summer Dress",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOfpnMDlAFQA3bZ6Ij-FYhLHe2DIQShPXoVchrY-fdQ&s=10",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "STYLEHUB",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupPage(),
                ),
              );
            },
            child: Text(
              "Signup",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),

      body: ListView(
        children: [

          // ================= HERO SECTION =================

          Container(
            height: 320,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [

                // LEFT SIDE

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [

                      Text(
                        "WELCOME TO",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "STYLEHUB",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Fashion for every style.\nSimple. Stylish. You.",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),

                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CategoryPage(),
                            ),
                          );
                        },
                        child: Text(
                          "SHOP NOW",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 15),

                // RIGHT SIDE IMAGE

                Expanded(
                  child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAUV8e_gw-5vIcEHDot1TTwcgc73LuEdG-j_Q21TVtZw&s=10",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // ================= FEATURED =================

          Center(
            child: Text(
              "Featured Collection",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 15),

          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredProducts.length,
              itemBuilder: (context, index) {

                return Container(
                  width: 365,
                  margin: EdgeInsets.only(
                    left: 15,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [

                      Container(
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              featuredProducts[index]["image"]!,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        featuredProducts[index]["name"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 25),

          // ================= OUR COLLECTION =================

          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [

                Text(
                  "Our Collection",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 25),

                Row(
                  children: [
                    Icon(
                      Icons.checkroom,
                      size: 35,
                    ),

                    SizedBox(width: 20),

                    Text(
                      "Men's Fashion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      size: 35,
                    ),

                    SizedBox(width: 20),

                    Text(
                      "Women's Fashion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Icon(
                      Icons.child_care,
                      size: 35,
                    ),

                    SizedBox(width: 20),

                    Text(
                      "Children's Fashion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // ================= FOOTER =================

          Container(
            padding: EdgeInsets.all(25),
            color: Colors.black,
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                Text(
                  "STYLEHUB",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Fashion for everyone, made simple and stylish.",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "Contact Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Phone: +91 98765 43210",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Email: stylehub@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Mumbai, Maharashtra",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 25),

                Center(
                  child: Text(
                    "© 2026 StyleHub. All Rights Reserved.",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ================= CATEGORY PAGE =================

class CategoryPage extends StatelessWidget {

  final List<Map<String, String>> categories = [

    {
      "name": "Men",
      "description": "Stylish clothes for men",
      "image":
      "https://vacht.in/cdn/shop/files/vacht_men_leather_jacket_106_1080x.jpg?v=1756625058",
    },

    {
      "name": "Women",
      "description": "Fashionable clothes for women",
      "image":
      "https://images.unsplash.com/photo-1496747611176-843222e1e57c",
    },

    {
      "name": "Girl",
      "description": "Cute clothes for girls",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqyeJD5weu9-66bMPk-bOIZGA4GNatGOMq4viOw8qKeA&s=10",
    },

    {
      "name": "Boy",
      "description": "Comfortable clothes for boys",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZsNp0Cay9XX0oGkgVuZV9yKT0-6HVx7ULKDKPqrGbVw&s=10",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: categories.length,

        itemBuilder: (context, index) {

          return GestureDetector(
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    category:
                    categories[index]["name"]!,
                  ),
                ),
              );
            },

            child: Container(
              height: 150,
              margin: EdgeInsets.only(bottom: 15),
              padding: EdgeInsets.all(10),

              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),

              child: Row(
                children: [

                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(12),

                      image: DecorationImage(
                        image: NetworkImage(
                          categories[index]["image"]!,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,

                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        Text(
                          categories[index]["name"]!,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          categories[index]["description"]!,
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Explore →",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ================= PRODUCT PAGE =================

class ProductPage extends StatelessWidget {

  final String category;

  ProductPage({
    super.key,
    required this.category,
  });

  List<Map<String, dynamic>> getProducts() {
    if (category == "Men") {
      return [

        {
          "name": "T-Shirt",
          "price": 599,
          "image":
          "https://images.unsplash.com/photo-1618453292459-53424b66bb6a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHQlMjBzaGlydHN8ZW58MHx8MHx8fDA%3D",
        },

        {
          "name": "Shirt",
          "price": 899,
          "image":
          "https://images.unsplash.com/photo-1740711152088-88a009e877bb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FzdWFsJTIwc2hpcnR8ZW58MHx8MHx8fDA%3D",
        },

        {
          "name": "Polo Shirt",
          "price": 799,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZthlvcyG8nU4g85of96O4PU-zy7nAPKFx_gUps8wJ-w&s",
        },

        {
          "name": "Hoodie",
          "price": 999,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNbXr0qQPHJ08b0JiWh0e4W6y5hQNOzOB5ZsjqEgUmEQ&s=10",
        },

        {
          "name": "Denim Jacket",
          "price": 1499,
          "image":
          "https://images.unsplash.com/photo-1611312449408-fcece27cdbb7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVuaW0lMjBqYWNrZXR8ZW58MHx8MHx8fDA%3D",
        },

        {
          "name": "Jeans",
          "price": 1199,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmrNMMpVdqLDfPvb2pP6fXkQLbuuEZkO1ytdWZx8FMSQ&s=10",
        },

        {
          "name": "Cargo Pants",
          "price": 1099,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ew21vPGs2UstvaBF8O2xkwGd-TQ9jLwAgN-MDnQvkA&s=10",
        },

        {
          "name": "Tank Top",
          "price": 499,
          "image":
          "https://m.media-amazon.com/images/I/71gXtVqq9fL._AC_UY1100_.jpg",
        },

        {
          "name": "Track Pants",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZapK6rDGL1eCmFTtCT08pHsto-1kvWxldX1ZeJbn3cw&s=10",
        },

        {
          "name": "Sweater",
          "price": 1099,
          "image":
          "https://m.media-amazon.com/images/I/61rHc8RtOyL._SL1500_.jpg",
        },

        {
          "name": "Leather Jacket",
          "price": 2499,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzWfLU7FdRkNXyOZVJMkVrlkUgUg0viseSHu6qP9K4hw&s=10",
        },

        {
          "name": "Linen Shirt",
          "price": 899,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdZCRq1qOwACJ_Yy5ycwCirRuaML4Wfcnn5jNqmk7ozg&s=10",
        },
      ];
    }

    if (category == "Women") {
      return [

        {
          "name": "Jeans",
          "price": 1099,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqKj8gFI1NP8IuaNyCvzJZL3l0ytpcGaP8fbVvO5X5RA&s=10",
        },

        {
          "name": "Skirt",
          "price": 799,
          "image":
          "https://rukminim3.flixcart.com/image/480/640/xif0q/skirt/b/v/t/32-80-sada-black-the-md-fashion-original-imaggrb64qu6y7h2.jpeg?q=90",
        },

        {
          "name": "Hoodie",
          "price": 999,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVCCOr3dsPXVeVxpdeo_mfSli8X0v8XFE76JvGya9QBQ&s=10",
        },

        {
          "name": "Sweater",
          "price": 1099,
          "image":
          "https://plus.unsplash.com/premium_photo-1695339146983-fb1937c107b1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D",
        },

        {
          "name": "Grey Hoddie",
          "price": 599,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNbXr0qQPHJ08b0JiWh0e4W6y5hQNOzOB5ZsjqEgUmEQ&s=10",
        },

        {
          "name": "Cargo Pants",
          "price": 899,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVNvPxZX_P1nOgAfTyy6htrSJ-9HTo6sdO1UGJ0OOjoA&s=10",
        },

        {
          "name": "Tank Top",
          "price": 599,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRLT2pyzUJ4V30yIA-9StXLx9ITYqunBQmuEGN8eq59Q&s=10",
        },

        {
          "name": "Cardigan",
          "price": 999,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbFhN5waupiVeYkNX0eKpd9az-ct7Qc04Qk4hjVqQLGg&s",
        },

        {
          "name": "Party Dress",
          "price": 1599,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTazTmE6jNetcazSgJeq1fk0KkZpNBP-VNj6aJyUh4Fag&s=10",
        },

        {
          "name": "Denim Jacket",
          "price": 1299,
          "image":
          "https://images.unsplash.com/photo-1611312449408-fcece27cdbb7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVuaW0lMjBqYWNrZXR8ZW58MHx8MHx8fDA%3D",
        },

        {
          "name": "Long Skirt",
          "price": 899,
          "image":
          "https://images.unsplash.com/photo-1758186168047-00dd2621d27f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bG9uZyUyMHNraXJ0fGVufDB8fDB8fHww",
        },

        {
          "name": "Black Jeans",
          "price": 499,
          "image":
          "https://stylishwodrobe.com/cdn/shop/files/2_16_1586270e-b13c-4318-aed9-6de306ceb2e7.jpg?v=1788522250&width=2048",
        },
      ];
    }

    if (category == "Children Girl") {
      return [

        {
          "name": "T-Shirt",
          "price": 399,
          "image":
          "https://www.veromoda.in/cdn/shop/files/901190201_g5.jpg?v=1745715778&width=1080",
        },

        {
          "name": "Dress",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRj6V8aWDL4q3mO8hTGNJm82c1z_mcA8JrjLOQqcMeZw&s",
        },

        {
          "name": "Top",
          "price": 499,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm9wC6kMusxG4MdEU36-Gx1pmEoVB7eEhTWJgwOGghMw&s=10",
        },

        {
          "name": "Skirt",
          "price": 599,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4i8oBQk_e7QyZfirAlpdxdXzd1C4tNoQColyzZEho4A&s=10",
        },

        {
          "name": "Jeans",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm9wC6kMusxG4MdEU36-Gx1pmEoVB7eEhTWJgwOGghMw&s=10",
        },

        {
          "name": "Hoodie",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn9fvoVo_Ml5sv2nygmXkjLH0pQjq7tQrlamBGhhYuLA&s=10",
        },

        {
          "name": "Leather Jacket",
          "price": 899,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ49h3kcdQ_gkpEigxA2jbG8e8bpvQ9u7aWAp2orc0Rg&s=10",
        },

        {
          "name": "Sweater",
          "price": 799,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz8JChfrdMrEPYvBXmlk6XwMir-vdE7X7LEEY-iqO4jQ&s=10",
        },

        {
          "name": "Track Pants",
          "price": 999,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcSlgeFoNkblVZrsL7HWdkWNORwQrqFLTyaCUXkaNwsA&s",
        },

        {
          "name": "Cargo Pants",
          "price": 1199,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP9vfZAtUwMT1O4sIqnSdvtkJjHXWNkp1ZxUISkaCufw&s=10",
        },

        {
          "name": "ZipUP Hoodie",
          "price": 1399,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiRArFmx1CX1xOttscV_jEA-8KuzcaLRabzFBALVG3cQ&s=10",
        },

        {
          "name": "Winter Jacket",
          "price": 999,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmHDepfp1zWJ-0pOvaWnaB7hE4rLN4HnhAeAXySnVxfg&s=10",
        },
      ];
    }

      return [

        {
          "name": "T-Shirt",
          "price": 399,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSijLq-yPV_DAPzvfkESOAtAwMgK0Y_rcoVRz0Rq1hnwQ&s=10",
        },

        {
          "name": "Shirt",
          "price": 499,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA2xS8MLjD8Pzab8fRwk-Xow7zjsJ06Ag4TCVy7xNoAA&s=10",
        },

        {
          "name": "Jeans",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe83deNpCiXQ6TTCjpY_nPJniLsBmbU5SkXBRvF1Sp6Q&s=10",
        },

        {
          "name": "Hoodie",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEdmCAuvMJK4keWi3n0dyes0Mpi4YCZGGlaLdW_kn2uQ&s=10",
        },

        {
          "name": "Jacket",
          "price": 899,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtLlqmNoxb2uJ_gc0lkUY4fdV4fBXah7RIXHk4ywhnhA&s",
        },

        {
          "name": "Sweater",
          "price": 799,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNxHPRDrJr6T0o5B03TJC64BboZs9uvCR766LlR-RgDw&s=10",
        },

        {
          "name": "Polo Shirt",
          "price": 499,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj1QdH13y5nRiW8laVapQJnGAzhY256V4LGkXI2il-BA&s=10",
        },

        {
          "name": "Cargo Pants",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd7mvd1WIUGpVfCg2omGPA7GVMHCZuyvNczgl-7-gaMA&s=10",
        },

        {
          "name": "Formal Shirt",
          "price": 699,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-an5lwWKx6yey7kPng0vCAGUAkkkbUTZUjZ06d3Zjlg&s=10",
        },

        {
          "name": "Sweatshirt",
          "price": 599,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqsM7R8eaU1LuS5-TZ4Sg3VGFCPgeY3_WB28bWE8ZQZQ&s=10",
        },

        {
          "name": "Tank Top",
          "price": 349,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs4coUqlxNSmOvM-7PTnK2gpHcSUD5v0H9Lk-WFmGkyw&s=10",
        },

        {
          "name": "Denim Jacket",
          "price": 799,
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqXW9xPSYdFDrwpJCW9SbxjWVNnHA3YRldudUnfU1b3Q&s=10",
        },
      ];
    }


  @override
  Widget build(BuildContext context) {

    final products = getProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),

      body: GridView.builder(
        padding: EdgeInsets.all(15),

        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          childAspectRatio: 0.68,
        ),

        itemCount: products.length,

        itemBuilder: (context, index) {

          return GestureDetector(
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailPage(
                        name: products[index]["name"],
                        price: products[index]["price"],
                        image: products[index]["image"],
                      ),
                ),
              );
            },

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                  ),
                ],
              ),

              child: Column(
                children: [

                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),

                      child: Image.network(
                        products[index]["image"],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    products[index]["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "₹${products[index]["price"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ================= PRODUCT DETAIL =================

class ProductDetailPage extends StatefulWidget {

  final String name;
  final int price;
  final String image;

  ProductDetailPage({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  State<ProductDetailPage> createState() =>
      _ProductDetailPageState();
}

class _ProductDetailPageState
    extends State<ProductDetailPage> {

  String selectedSize = "M";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),

      body: ListView(
        padding: EdgeInsets.all(20),

        children: [

          // ================= IMAGE =================

          ClipRRect(
            borderRadius: BorderRadius.circular(15),

            child: Image.network(
              widget.image,
              width: double.infinity,
              height: 350,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 20),

          // ================= NAME =================

          Text(
            widget.name,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10),

          // ================= PRICE =================

          Text(
            "₹${widget.price}",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          // ================= DESCRIPTION =================

          Text(
            "Description",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 8),

          Text(
            "Stylish and comfortable clothing made for everyday wear. "
                "Perfect for casual and fashionable looks.",
          ),

          SizedBox(height: 25),

          // ================= SIZE =================

          Text(
            "Select Size",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 12),

          Row(
            children: [

              ChoiceChip(
                label: Text("S"),
                selected: selectedSize == "S",
                onSelected: (value) {
                  setState(() {
                    selectedSize = "S";
                  });
                },
              ),

              SizedBox(width: 10),

              ChoiceChip(
                label: Text("M"),
                selected: selectedSize == "M",
                onSelected: (value) {
                  setState(() {
                    selectedSize = "M";
                  });
                },
              ),

              SizedBox(width: 10),

              ChoiceChip(
                label: Text("L"),
                selected: selectedSize == "L",
                onSelected: (value) {
                  setState(() {
                    selectedSize = "L";
                  });
                },
              ),

              SizedBox(width: 10),

              ChoiceChip(
                label: Text("XL"),
                selected: selectedSize == "XL",
                onSelected: (value) {
                  setState(() {
                    selectedSize = "XL";
                  });
                },
              ),
            ],
          ),

          SizedBox(height: 25),

          // ================= BUY NOW =================

          ElevatedButton(
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlaceOrderPage(
                        productName: widget.name,
                        price: widget.price,
                        size: selectedSize,
                      ),
                ),
              );
            },

            child: Text(
              "BUY NOW",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= PLACE ORDER PAGE =================

class PlaceOrderPage extends StatefulWidget {

  final String productName;
  final int price;
  final String size;

  PlaceOrderPage({
    super.key,
    required this.productName,
    required this.price,
    required this.size,
  });

  @override
  State<PlaceOrderPage> createState() =>
      _PlaceOrderPageState();
}

class _PlaceOrderPageState
    extends State<PlaceOrderPage> {

  final formKey = GlobalKey<FormState>();

  final nameController =
  TextEditingController();

  final phoneController =
  TextEditingController();

  final addressController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Place Order"),
      ),

      body: ListView(
        padding: EdgeInsets.all(20),

        children: [

          Text(
            "Your Order",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10),

          Text(
            "Product: ${widget.productName}",
          ),

          SizedBox(height: 5),

          Text(
            "Size: ${widget.size}",
          ),

          SizedBox(height: 5),

          Text(
            "Price: ₹${widget.price}",
          ),

          SizedBox(height: 25),

          Form(
            key: formKey,

            child: Column(
              children: [

                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Please enter your name";
                    }

                    return null;
                  },
                ),

                SizedBox(height: 15),

                TextFormField(
                  controller: phoneController,
                  keyboardType:
                  TextInputType.phone,

                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Please enter phone number";
                    }

                    return null;
                  },
                ),

                SizedBox(height: 15),

                TextFormField(
                  controller: addressController,
                  maxLines: 3,

                  decoration: InputDecoration(
                    labelText: "Delivery Address",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Please enter address";
                    }

                    return null;
                  },
                ),

                SizedBox(height: 25),

                ElevatedButton(
                  onPressed: () {

                    if (formKey.currentState!
                        .validate()) {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OrderSummaryPage(
                                productName:
                                widget.productName,
                                price: widget.price,
                                size: widget.size,
                                name:
                                nameController.text,
                                phone:
                                phoneController.text,
                                address:
                                addressController.text,
                              ),
                        ),
                      );
                    }
                  },

                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ================= ORDER SUMMARY =================

class OrderSummaryPage extends StatelessWidget {

  final String productName;
  final int price;
  final String size;
  final String name;
  final String phone;
  final String address;

  OrderSummaryPage({
    super.key,
    required this.productName,
    required this.price,
    required this.size,
    required this.name,
    required this.phone,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Order Summary"),
      ),

      body: ListView(
        padding: EdgeInsets.all(20),

        children: [

          Container(
            padding: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius:
              BorderRadius.circular(15),
            ),

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  "Product Details",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Product: $productName",
                ),

                SizedBox(height: 10),

                Text(
                  "Size: $size",
                ),

                SizedBox(height: 10),

                Text(
                  "Price: ₹$price",
                ),

                SizedBox(height: 10),

                Text(
                  "Total Amount: ₹$price",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          Text(
            "Delivery Details",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          Text("Name: $name"),

          SizedBox(height: 8),

          Text("Phone: $phone"),

          SizedBox(height: 8),

          Text("Address: $address"),

          SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {

              Navigator.pushAndRemoveUntil(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      OrderSuccessPage(),
                ),

                    (route) => false,
              );
            },

            child: Text(
              "CONFIRM ORDER",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= ORDER SUCCESS =================

class OrderSuccessPage extends StatelessWidget {

  OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),

          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,

            children: [

              Icon(
                Icons.check_circle,
                color: Colors.black,
                size: 100,
              ),

              SizedBox(height: 20),

              Text(
                "Thank You!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Your order has been successfully placed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {

                  Navigator.pushAndRemoveUntil(
                    context,

                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(),
                    ),

                        (route) => false,
                  );
                },

                child: Text(
                  "BACK TO HOME",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= LOGIN PAGE =================

class LoginPage extends StatelessWidget {

  final emailController =
  TextEditingController();

  final passwordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(25),

        children: [

          SizedBox(height: 30),

          Center(
            child: Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 30),

          TextField(
            controller: emailController,

            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            controller: passwordController,
            obscureText: true,

            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 25),

          ElevatedButton(
            onPressed: () {

              Navigator.pushAndRemoveUntil(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      HomePage(),
                ),

                    (route) => false,
              );
            },

            child: Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 15),

          TextButton(
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SignupPage(),
                ),
              );
            },

            child: Text(
              "Don't have an account? Signup",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= SIGNUP PAGE =================

class SignupPage extends StatelessWidget {

  final nameController =
  TextEditingController();

  final emailController =
  TextEditingController();

  final passwordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(25),

        children: [

          SizedBox(height: 30),

          Center(
            child: Text(
              "Create Account",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 30),

          TextField(
            controller: nameController,

            decoration: InputDecoration(
              labelText: "Full Name",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            controller: emailController,

            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            controller: passwordController,
            obscureText: true,

            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 25),

          ElevatedButton(
            onPressed: () {

              Navigator.pushAndRemoveUntil(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      HomePage(),
                ),

                    (route) => false,
              );
            },

            child: Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 15),

          TextButton(
            onPressed: () {

              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      LoginPage(),
                ),
              );
            },

            child: Text(
              "Already have an account? Login",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}