// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vinculacao_empresa/app/data/models/empresa_model.dart';
import 'package:vinculacao_empresa/app/data/repositories/empresa/empresa_repository.dart';

import './empresa_service.dart';

class EmpresaServiceImpl extends GetxService implements EmpresaService {
  final String urlPainelBase = "https://api.epoc.com.br/";

  final EmpresaRepository _repository;
  EmpresaServiceImpl({required EmpresaRepository repository}) : _repository = repository;

  @override
  Future<T> init<T>() async {
    return this as T;
  }

  @override
  Future<EmpresaModel?> getEmpresa({required String cnpj}) async {
    String urlEmpresa = '${urlPainelBase}empresa/checkEmpresa';

    try {
      return await _repository.getEmpresa(url: urlEmpresa, cnpj: cnpj);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> gerarToken({required EmpresaModel empresa, required String usuario, required String senha}) async {
    String senhaMd5 = Utils.stringToMd5(senha);
    Map<String, dynamic> dadosToken = {
      'service': 'geraToken',
      'hashemp': empresa.hashEmp,
      'cnpj': empresa.cnpj,
      'mac': empresa.mac,
      'usuario': usuario,
      'ifood': 1,
      'senha': senhaMd5,
    };

    String url = '${empresa.urlBase}/autenticaWs.php';

    return await _repository.gerarToken(url: url, dados: dadosToken);
  }

  @override
  Future<bool> vincularHost({required String urlVincular, required Map<String, dynamic> dados}) async {
    return _repository.vincularHost(dados: dados, urlVincular: urlVincular);
  }

  @override
  Future<EmpresaModel> addEmpresa({required EmpresaModel? empresa}) async {
    return await _repository.addEmpresa(empresa: empresa);
  }

  @override
  Future<void> adicionarAtivacao({required AtivacaoModel ativacao}) async {
    return await _repository.adicionarAtivacao(ativacao: ativacao);
  }

  @override
  Future<void> limparLicenca() async {
    return await _repository.limparLicenca();
  }

  @override
  Future<UsuarioModel> addUsuarioLogado({required UsuarioModel usuario}) async {
    return await _repository.addUsuarioLogado(usuario: usuario);
  }
}
