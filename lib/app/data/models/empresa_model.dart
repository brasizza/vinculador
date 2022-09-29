// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EmpresaModel {
  final int codEmp;
  final String codInstalacao;
  final String? nSerie;
  final String cnpj;
  final String? inscrEstadual;
  final String? inscrMunicipal;
  final String versao;
  final String rSocialEmp;
  final String fantasiaEmp;
  final String? respEmp;
  final String? telEmp;
  final String? dataEmp;
  final String? enderEmp;
  final String? bairroEmp;
  final String? cepEmp;
  final String? cidadEmp;
  final String? ufEmp;
  final int nLicencaEmp;
  final String licencaEmp;
  final String licencaCheckEmp;
  final String? numLogradouroEmp;
  final String? complementologradouroEmp;
  final String? sistemaEmp;
  final int? codServicoRps;
  final int codSkin;
  final int? codMunEmp;
  final String? suframaEmp;
  final String? tipoServidor;
  final String? flgAtualizacao;
  final int? regTrib;
  final String? idBalada;
  final String? flgRecarga;
  final String? signAC;
  final String? origem;
  final int? appEpoc3;
  final String? logotipo;
  final String? urlBase;
  final String? hashEmp;

  String? mac;

  EmpresaModel({
    required this.codEmp,
    required this.codInstalacao,
    this.nSerie,
    required this.cnpj,
    this.inscrEstadual,
    this.inscrMunicipal,
    required this.versao,
    required this.rSocialEmp,
    required this.fantasiaEmp,
    this.respEmp,
    this.telEmp,
    this.dataEmp,
    this.enderEmp,
    this.bairroEmp,
    this.cepEmp,
    this.cidadEmp,
    this.ufEmp,
    required this.nLicencaEmp,
    required this.licencaEmp,
    required this.licencaCheckEmp,
    this.numLogradouroEmp,
    this.complementologradouroEmp,
    this.sistemaEmp,
    this.codServicoRps,
    required this.codSkin,
    this.codMunEmp,
    this.suframaEmp,
    this.tipoServidor,
    this.flgAtualizacao,
    this.regTrib,
    this.idBalada,
    this.flgRecarga,
    this.signAC,
    this.origem,
    this.appEpoc3,
    this.logotipo,
    this.urlBase,
    this.hashEmp,
    this.mac,
  });

  EmpresaModel copyWith({
    int? codEmp,
    String? codInstalacao,
    String? nSerie,
    String? cnpj,
    String? inscrEstadual,
    String? inscrMunicipal,
    String? versao,
    String? rSocialEmp,
    String? fantasiaEmp,
    String? respEmp,
    String? telEmp,
    String? dataEmp,
    String? enderEmp,
    String? bairroEmp,
    String? cepEmp,
    String? cidadEmp,
    String? ufEmp,
    int? nLicencaEmp,
    String? licencaEmp,
    String? licencaCheckEmp,
    String? numLogradouroEmp,
    String? complementologradouroEmp,
    String? sistemaEmp,
    int? codServicoRps,
    int? codSkin,
    int? codMunEmp,
    String? suframaEmp,
    String? tipoServidor,
    String? flgAtualizacao,
    int? regTrib,
    String? idBalada,
    String? flgRecarga,
    String? signAC,
    String? origem,
    int? appEpoc3,
    String? logotipo,
    String? urlBase,
    String? hashEmp,
    String? mac,
  }) {
    return EmpresaModel(
      codEmp: codEmp ?? this.codEmp,
      codInstalacao: codInstalacao ?? this.codInstalacao,
      nSerie: nSerie ?? this.nSerie,
      cnpj: cnpj ?? this.cnpj,
      inscrEstadual: inscrEstadual ?? this.inscrEstadual,
      inscrMunicipal: inscrMunicipal ?? this.inscrMunicipal,
      versao: versao ?? this.versao,
      rSocialEmp: rSocialEmp ?? this.rSocialEmp,
      fantasiaEmp: fantasiaEmp ?? this.fantasiaEmp,
      respEmp: respEmp ?? this.respEmp,
      telEmp: telEmp ?? this.telEmp,
      dataEmp: dataEmp ?? this.dataEmp,
      enderEmp: enderEmp ?? this.enderEmp,
      bairroEmp: bairroEmp ?? this.bairroEmp,
      cepEmp: cepEmp ?? this.cepEmp,
      cidadEmp: cidadEmp ?? this.cidadEmp,
      ufEmp: ufEmp ?? this.ufEmp,
      nLicencaEmp: nLicencaEmp ?? this.nLicencaEmp,
      licencaEmp: licencaEmp ?? this.licencaEmp,
      licencaCheckEmp: licencaCheckEmp ?? this.licencaCheckEmp,
      numLogradouroEmp: numLogradouroEmp ?? this.numLogradouroEmp,
      complementologradouroEmp: complementologradouroEmp ?? this.complementologradouroEmp,
      sistemaEmp: sistemaEmp ?? this.sistemaEmp,
      codServicoRps: codServicoRps ?? this.codServicoRps,
      codSkin: codSkin ?? this.codSkin,
      codMunEmp: codMunEmp ?? this.codMunEmp,
      suframaEmp: suframaEmp ?? this.suframaEmp,
      tipoServidor: tipoServidor ?? this.tipoServidor,
      flgAtualizacao: flgAtualizacao ?? this.flgAtualizacao,
      regTrib: regTrib ?? this.regTrib,
      idBalada: idBalada ?? this.idBalada,
      flgRecarga: flgRecarga ?? this.flgRecarga,
      signAC: signAC ?? this.signAC,
      origem: origem ?? this.origem,
      appEpoc3: appEpoc3 ?? this.appEpoc3,
      logotipo: logotipo ?? this.logotipo,
      urlBase: urlBase ?? this.urlBase,
      hashEmp: hashEmp ?? this.hashEmp,
      mac: mac ?? this.mac,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codEmp': codEmp,
      'codInstalacao': codInstalacao,
      'nSerie': nSerie,
      'cnpj': cnpj,
      'inscrEstadual': inscrEstadual,
      'inscrMunicipal': inscrMunicipal,
      'versao': versao,
      'rSocialEmp': rSocialEmp,
      'fantasiaEmp': fantasiaEmp,
      'respEmp': respEmp,
      'telEmp': telEmp,
      'dataEmp': dataEmp,
      'enderEmp': enderEmp,
      'bairroEmp': bairroEmp,
      'cepEmp': cepEmp,
      'cidadEmp': cidadEmp,
      'ufEmp': ufEmp,
      'nLicencaEmp': nLicencaEmp,
      'licencaEmp': licencaEmp,
      'licencaCheckEmp': licencaCheckEmp,
      'numLogradouroEmp': numLogradouroEmp,
      'complementologradouroEmp': complementologradouroEmp,
      'sistemaEmp': sistemaEmp,
      'codServicoRps': codServicoRps,
      'codSkin': codSkin,
      'codMunEmp': codMunEmp,
      'suframaEmp': suframaEmp,
      'tipoServidor': tipoServidor,
      'flgAtualizacao': flgAtualizacao,
      'regTrib': regTrib,
      'idBalada': idBalada,
      'flgRecarga': flgRecarga,
      'signAC': signAC,
      'origem': origem,
      'appEpoc3': appEpoc3,
      'logotipo': logotipo,
      'urlBase': urlBase,
      'hashEmp': hashEmp,
      'mac': mac,
    };
  }

  factory EmpresaModel.fromMap(Map<String, dynamic> map) {
    return EmpresaModel(
      codEmp: int.parse(map['cod_emp'].toString()),
      codInstalacao: map['cod_instalacao'] as String,
      nSerie: map['n_serie'] != null ? map['n_serie'] as String : null,
      cnpj: map['cnpj'] as String,
      inscrEstadual: map['inscr_estadual'] != null ? map['inscr_estadual'] as String : null,
      inscrMunicipal: map['inscr_municipal'] != null ? map['inscr_municipal'] as String : null,
      versao: map['versao'] as String,
      rSocialEmp: map['rsocial_emp'] as String,
      fantasiaEmp: map['fantasia_emp'] as String,
      respEmp: map['resp_emp'] != null ? map['rsocial_emp'] as String : null,
      telEmp: map['tel_emp'] != null ? map['tel_emp'] as String : null,
      dataEmp: map['data_emp'] != null ? map['data_emp'] as String : null,
      enderEmp: map['ender_emp'] != null ? map['ender_emp'] as String : null,
      bairroEmp: map['bairro_emp'] != null ? map['bairro_emp'] as String : null,
      cepEmp: map['cep_end'] != null ? map['cep_end'] as String : null,
      cidadEmp: map['cidad_emp'] != null ? map['cidad_emp'] as String : null,
      ufEmp: map['uf_emp'] != null ? map['uf_emp'] as String : null,
      nLicencaEmp: int.parse(map['n_licenca_emp'].toString()),
      licencaEmp: map['licenca_emp'] as String,
      licencaCheckEmp: map['licenca_check_emp'] as String,
      numLogradouroEmp: map['num_lograroudo_emp'] != null ? map['num_lograroudo_emp'] as String : null,
      complementologradouroEmp: map['complemento_logradouro_emp'] != null ? map['complemento_logradouro_emp'] as String : null,
      sistemaEmp: map['sistema_emp'] != null ? map['sistema_emp'] as String : null,
      codServicoRps: map['cod_servico_rps'] != null ? int.parse(map['cod_servico_rps'].toString()) : null,
      codSkin: int.parse(map['cod_skin'].toString()),
      codMunEmp: map['cod_mun_emp'] != null ? int.parse(map['cod_mun_emp'].toString()) : null,
      suframaEmp: map['suframa_emp'] != null ? map['suframa_emp'] as String : null,
      tipoServidor: map['tipo_servidor'] != null ? map['tipo_servidor'] as String : null,
      flgAtualizacao: map['flg_atualizacao'] != null ? map['flg_atualizacao'] as String : null,
      regTrib: map['reg_trib'] != null ? int.parse(map['reg_trib'].toString()) : null,
      idBalada: map['id_balada'] != null ? map['id_balada'] as String : null,
      flgRecarga: map['flg_recarga'] != null ? map['flg_recarga'] as String : null,
      signAC: map['sign_ac'] != null ? map['sign_ac'] as String : null,
      origem: map['origem'] != null ? map['origem'] as String : null,
      appEpoc3: map['app_epoc3'] != null ? int.parse(map['app_epoc3'].toString()) : null,
      logotipo: map['logotipo'] != null ? map['logotipo'] as String : null,
      urlBase: map['urlRemotoPix'] != null ? map['urlRemotoPix'] as String : null,
      hashEmp: map['hash_emp'] != null ? map['hash_emp'] as String : null,
      mac: map['mac'] != null ? map['mac'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmpresaModel.fromJson(String source) => EmpresaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmpresaModel &&
        other.codEmp == codEmp &&
        other.codInstalacao == codInstalacao &&
        other.nSerie == nSerie &&
        other.cnpj == cnpj &&
        other.inscrEstadual == inscrEstadual &&
        other.inscrMunicipal == inscrMunicipal &&
        other.versao == versao &&
        other.rSocialEmp == rSocialEmp &&
        other.fantasiaEmp == fantasiaEmp &&
        other.respEmp == respEmp &&
        other.telEmp == telEmp &&
        other.dataEmp == dataEmp &&
        other.enderEmp == enderEmp &&
        other.bairroEmp == bairroEmp &&
        other.cepEmp == cepEmp &&
        other.cidadEmp == cidadEmp &&
        other.ufEmp == ufEmp &&
        other.nLicencaEmp == nLicencaEmp &&
        other.licencaEmp == licencaEmp &&
        other.licencaCheckEmp == licencaCheckEmp &&
        other.numLogradouroEmp == numLogradouroEmp &&
        other.complementologradouroEmp == complementologradouroEmp &&
        other.sistemaEmp == sistemaEmp &&
        other.codServicoRps == codServicoRps &&
        other.codSkin == codSkin &&
        other.codMunEmp == codMunEmp &&
        other.suframaEmp == suframaEmp &&
        other.tipoServidor == tipoServidor &&
        other.flgAtualizacao == flgAtualizacao &&
        other.regTrib == regTrib &&
        other.idBalada == idBalada &&
        other.flgRecarga == flgRecarga &&
        other.signAC == signAC &&
        other.origem == origem &&
        other.appEpoc3 == appEpoc3 &&
        other.logotipo == logotipo &&
        other.urlBase == urlBase &&
        other.hashEmp == hashEmp &&
        other.mac == mac;
  }

  @override
  int get hashCode {
    return codEmp.hashCode ^
        codInstalacao.hashCode ^
        nSerie.hashCode ^
        cnpj.hashCode ^
        inscrEstadual.hashCode ^
        inscrMunicipal.hashCode ^
        versao.hashCode ^
        rSocialEmp.hashCode ^
        fantasiaEmp.hashCode ^
        respEmp.hashCode ^
        telEmp.hashCode ^
        dataEmp.hashCode ^
        enderEmp.hashCode ^
        bairroEmp.hashCode ^
        cepEmp.hashCode ^
        cidadEmp.hashCode ^
        ufEmp.hashCode ^
        nLicencaEmp.hashCode ^
        licencaEmp.hashCode ^
        licencaCheckEmp.hashCode ^
        numLogradouroEmp.hashCode ^
        complementologradouroEmp.hashCode ^
        sistemaEmp.hashCode ^
        codServicoRps.hashCode ^
        codSkin.hashCode ^
        codMunEmp.hashCode ^
        suframaEmp.hashCode ^
        tipoServidor.hashCode ^
        flgAtualizacao.hashCode ^
        regTrib.hashCode ^
        idBalada.hashCode ^
        flgRecarga.hashCode ^
        signAC.hashCode ^
        origem.hashCode ^
        appEpoc3.hashCode ^
        logotipo.hashCode ^
        urlBase.hashCode ^
        hashEmp.hashCode ^
        mac.hashCode;
  }

  @override
  String toString() {
    return 'EmpresaModel(codEmp: $codEmp, codInstalacao: $codInstalacao, nSerie: $nSerie, cnpj: $cnpj, inscrEstadual: $inscrEstadual, inscrMunicipal: $inscrMunicipal, versao: $versao, rSocialEmp: $rSocialEmp, fantasiaEmp: $fantasiaEmp, respEmp: $respEmp, telEmp: $telEmp, dataEmp: $dataEmp, enderEmp: $enderEmp, bairroEmp: $bairroEmp, cepEmp: $cepEmp, cidadEmp: $cidadEmp, ufEmp: $ufEmp, nLicencaEmp: $nLicencaEmp, licencaEmp: $licencaEmp, licencaCheckEmp: $licencaCheckEmp, numLogradouroEmp: $numLogradouroEmp, complementologradouroEmp: $complementologradouroEmp, sistemaEmp: $sistemaEmp, codServicoRps: $codServicoRps, codSkin: $codSkin, codMunEmp: $codMunEmp, suframaEmp: $suframaEmp, tipoServidor: $tipoServidor, flgAtualizacao: $flgAtualizacao, regTrib: $regTrib, idBalada: $idBalada, flgRecarga: $flgRecarga, signAC: $signAC, origem: $origem, appEpoc3: $appEpoc3, logotipo: $logotipo, urlBase: $urlBase, hashEmp: $hashEmp, mac: $mac)';
  }
}
