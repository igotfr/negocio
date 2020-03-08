import "../pessoal/Cliente.dart";
import "./Produto.dart";
import "./Item.dart";
import "./Venda.dart";

main()
{
  Produto p= Produto
  (
    codigo: 67,
    nome: "caneta",
    precoVenda: 5,
    desconto: 0.38
  );

  print("Preço com desconto, produto p: R\$ ${p.precoComDesconto}");


  Item i= Item
  (
    quantidade: 5,
    produto: Produto
    (
      codigo: 67,
      nome: "caneta",
      precoVenda: 5,
      desconto: 0.38
    )
  );

  print("Preço sem desconto item i: R\$ ${i.preco}");

  print("Preço com desconto item i: R\$ ${i.precoComDescontoPorProduto}");


  Venda v= Venda
  (
    cliente: Cliente
    (
      nome: "Maria",
      cpf: "548678484"
    ),

    itens: <Item>
    [
      Item
      (
        quantidade: 5,
        produto: Produto
        (
          codigo: 34,
          nome: "caneta",
          precoVenda: 10,
          desconto: 0.25
        )
      ),
      Item
      (
        quantidade: 10,
        produto: Produto
        (
          codigo: 67,
          nome: "caneta",
          precoVenda: 5,
          desconto: 0.5
        )
      ),
    ]
  );

  print("Valor total da venda: R\$ ${v.valorTotal}");
}