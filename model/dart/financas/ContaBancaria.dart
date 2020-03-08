class ContaBancaria
{
  String numero;
  double saldo= 0;

  void depositar(double valor)
  {
    this.saldo+= valor;
    print("Depósito de R\$ ${valor} efetuado com sucesso");
  }

  bool sacar(double valor)
  {
    // verificação para não permitir saldo negativo
    if ( this.saldo - valor >= 0 )
    {
      this.saldo-= valor;
      print("Saque de R\$ ${valor} efetuado com sucesso");
      //print("Novo saldo: R\$ ${this._saldo}\n");

      return true;
    }
    else
    {
      print("Saldo de R\$ ${this._saldo} insuficiente para saque de R\$ ${valor}");
      return false;
    }
  }
}

void main()
{
  ContaBancaria cb= ContaBancaria();
  cb.depositar(100);
  cb.sacar(50);
  cb.sacar(70);

  //print(cb);
}