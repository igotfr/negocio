import "package:meta/meta.dart";

import "../Pessoa.dart";
import "./Usuario/Cliente.dart";
import "./Usuario/Motorista.dart";
import "./Usuario/Administrador.dart";


class Usuario extends Pessoa
{
  String username;
  dynamic senha;

  // 0: administrador, 1: motorista, 2: cliente
  List<Usuario> tipos;

  Usuario({@required this.username, @required this.senha, @required this.tipos, String nome, dynamic cpf, String sexo, String endereco, String email, dynamic telefone}):
    super(nome: nome, cpf: cpf, sexo: sexo, endereco: endereco, email: email, telefone: telefone);
}

main()
{
  Usuario u= Usuario(username: "rokodul", senha: "5458", tipos: [Motorista(), Cliente()]);

  for ( Usuario us in u.tipos )
    if ( us is Motorista )
      print(us is Motorista);

  /*u.tipos.forEach( (Usuario us)
  {
    if ( us is Motorista )
      print(us is Motorista);
  };*/
}