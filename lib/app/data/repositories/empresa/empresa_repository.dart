// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:vinculacao_empresa/app/data/models/empresa_model.dart';
import 'package:vinculacao_empresa/app/data/models/hash_model.dart';

abstract class EmpresaRepository {
  Future<EmpresaModel?> getEmpresa({required String cnpj, required String url});
  Future<String?> gerarHash({required HashModel hashModel});
  Future<bool> vincularHost({required String urlVincular, required Map<String, dynamic> dados});
  Future<String?> gerarToken({required String url, required Map<String, dynamic> dados});
}
