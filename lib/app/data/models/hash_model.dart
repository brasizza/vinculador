// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HashModel {
  final String hashEmp;
  final String cnpj;
  final String mac;

  final String usuario;
  final String senha;
  HashModel({
    required this.hashEmp,
    required this.cnpj,
    required this.mac,
    required this.usuario,
    required this.senha,
  });

  HashModel copyWith({
    String? hashEmp,
    String? cnpj,
    String? mac,
    String? usuario,
    String? senha,
  }) {
    return HashModel(
      hashEmp: hashEmp ?? this.hashEmp,
      cnpj: cnpj ?? this.cnpj,
      mac: mac ?? this.mac,
      usuario: usuario ?? this.usuario,
      senha: senha ?? this.senha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashEmp': hashEmp,
      'cnpj': cnpj,
      'mac': mac,
      'usuario': usuario,
      'senha': senha,
    };
  }

  factory HashModel.fromMap(Map<String, dynamic> map) {
    return HashModel(
      hashEmp: map['hashEmp'] as String,
      cnpj: map['cnpj'] as String,
      mac: map['mac'] as String,
      usuario: map['usuario'] as String,
      senha: map['senha'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HashModel.fromJson(String source) => HashModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HashModel(hashEmp: $hashEmp, cnpj: $cnpj, mac: $mac, usuario: $usuario, senha: $senha)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HashModel && other.hashEmp == hashEmp && other.cnpj == cnpj && other.mac == mac && other.usuario == usuario && other.senha == senha;
  }

  @override
  int get hashCode {
    return hashEmp.hashCode ^ cnpj.hashCode ^ mac.hashCode ^ usuario.hashCode ^ senha.hashCode;
  }
}
