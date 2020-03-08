class Mercadoria
{
  int codigo;
  String nome;
  double precoVenda, desconto;

  Mercadoria({this.codigo, this.nome, this.precoVenda, this.desconto= 0});

  double get precoComDesconto=> (1 - this.desconto) * this.precoVenda;
}