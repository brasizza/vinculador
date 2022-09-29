// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AtivacaoModel {
  final String metodo;
  final String hashemp;
  final String nomeEmpresa;
  final String? url;
  final String codHost;
  final String cnpj;
  AtivacaoModel({
    required this.metodo,
    required this.hashemp,
    required this.nomeEmpresa,
    this.url = '',
    required this.codHost,
    required this.cnpj,
  });

  AtivacaoModel copyWith({
    String? metodo,
    String? hashemp,
    String? nomeEmpresa,
    String? url,
    String? codHost,
    String? cnpj,
  }) {
    return AtivacaoModel(
      metodo: metodo ?? this.metodo,
      hashemp: hashemp ?? this.hashemp,
      nomeEmpresa: nomeEmpresa ?? this.nomeEmpresa,
      url: url ?? this.url,
      codHost: codHost ?? this.codHost,
      cnpj: cnpj ?? this.cnpj,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metodo': metodo,
      'hashemp': hashemp,
      'nomeEmpresa': nomeEmpresa,
      'url': url,
      'codHost': codHost,
      'cnpj': cnpj,
    };
  }

  factory AtivacaoModel.fromMap(Map<String, dynamic> map) {
    return AtivacaoModel(
      metodo: map['metodo'] as String,
      hashemp: map['hashemp'] as String,
      nomeEmpresa: map['nomeEmpresa'] as String,
      url: map['url'] != null ? map['url'] as String : null,
      codHost: map['codHost'] as String,
      cnpj: map['cnpj'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AtivacaoModel.fromJson(String source) => AtivacaoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AtivacaoModel(metodo: $metodo, hashemp: $hashemp, nomeEmpresa: $nomeEmpresa, url: $url, codHost: $codHost, cnpj: $cnpj)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AtivacaoModel && other.metodo == metodo && other.hashemp == hashemp && other.nomeEmpresa == nomeEmpresa && other.url == url && other.codHost == codHost && other.cnpj == cnpj;
  }

  @override
  int get hashCode {
    return metodo.hashCode ^ hashemp.hashCode ^ nomeEmpresa.hashCode ^ url.hashCode ^ codHost.hashCode ^ cnpj.hashCode;
  }
}
