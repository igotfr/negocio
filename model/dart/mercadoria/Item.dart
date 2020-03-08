import "./Produto.dart";

class Item
{
  Produto produto;
  int quantidade;
  double _preco, _precoComDescontoPorProduto;

  Item({this.produto, this.quantidade});

  // Produto.preco * Item.quantidade
  double get preco
  {
    if ( this.produto != null && this._preco == null )
      this._preco= this.produto.precoVenda * this.quantidade;

    return this._preco;
  }

  // (Produto.preco * Produto.desconto) * Item.quantidade
  double get precoComDescontoPorProduto
  {
    if ( this.produto != null && this._precoComDescontoPorProduto == null )
      this._precoComDescontoPorProduto= this.produto.precoComDesconto * this.quantidade;

    return this._precoComDescontoPorProduto;
  }

  // precoComDescontoPorItem= Produto.preco * Item.quantidade * Item.desconto
  // precoComDescontoPorProdutoeItem= (Produto.preco * Produto.desconto) * Item.quantidade * Item.desconto

  void set preco(double novoPreco)
  {
    if ( novoPreco > 0 )
      this._precoComDescontoPorProduto= novoPreco;
  }
}