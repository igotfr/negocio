import "./Mercadoria.dart";

class Produto extends Mercadoria
{
  Produto({int codigo, String nome, double precoVenda, double desconto= 0}):
    super(codigo: codigo, nome: nome, precoVenda: precoVenda, desconto: desconto);
}