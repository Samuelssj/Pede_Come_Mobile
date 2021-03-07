class Produto {
  String nome;
  String descricao;
  String marca;
  int quantidade;
  String tempoPreparo;
  bool disponivel;
  double valor;
  int empresa;
  String image;

  Produto(
      {this.nome,
        this.descricao,
        this.marca,
        this.quantidade,
        this.tempoPreparo,
        this.disponivel,
        this.valor,
        this.empresa,
        this.image});

  Produto.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    descricao = json['descricao'];
    marca = json['marca'];
    quantidade = json['quantidade'];
    tempoPreparo = json['tempo_preparo'];
    disponivel = json['disponivel'];
    valor = json['valor'];
    empresa = json['empresa'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['marca'] = this.marca;
    data['quantidade'] = this.quantidade;
    data['tempo_preparo'] = this.tempoPreparo;
    data['disponivel'] = this.disponivel;
    data['valor'] = this.valor;
    data['empresa'] = this.empresa;
    data['image'] = this.image;
    return data;
  }
}
