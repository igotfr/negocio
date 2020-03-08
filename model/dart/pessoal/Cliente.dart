import "./Pessoa.dart";

class Cliente extends Pessoa
{
  Cliente({String nome, String cpf, String sexo, String endereco, String email, String telefone}):
    super(nome: nome, cpf: cpf, sexo: sexo, endereco: endereco, email: email, telefone: telefone);
}