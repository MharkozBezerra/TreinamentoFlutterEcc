import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  ItemProduto({this.descricao = '', this.preco = '', this.imagem = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // Mostra a imagem do produto.
          Expanded(
            flex: 8,
            child: Image.asset(
              "images/${imagem}",
              fit: BoxFit.contain,
            ),
          ),
          // Mostra a descrição do produto.
          Expanded(
            flex: 1,
            child: Text(this.descricao),
          ),
          // Mostra o preço do produto.
          Expanded(
            flex: 1,
            child: Text(
              "R\$ ${this.preco}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Mostra o botão de adicionar ao carrinho.
          Expanded(
            flex: 1,
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Comprar"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    primary: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Visualizar"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    primary: Colors.white,
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
