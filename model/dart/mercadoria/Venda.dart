import "../pessoal/Cliente.dart";
import "./Item.dart";

class Venda
{
  Cliente cliente;
  List<Item> itens;

  Venda({this.cliente, this.itens= const []});

  double get valorTotal
  {
    return this.itens
             .map( (Item i)=> i.quantidade * i.preco )
             .reduce( (total, atual)=> total + atual );

    /*
    double total= 0;

    for ( Item i in itens )
      total+= i.quantidade * i.preco;

    return total;
    */
  }
}