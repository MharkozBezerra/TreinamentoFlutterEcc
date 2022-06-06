import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            "images/logo.png",
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_rounded),
            onPressed: () {},
          ),
          SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
