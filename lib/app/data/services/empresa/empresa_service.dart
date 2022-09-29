import 'package:vinculacao_empresa/app/data/models/empresa_model.dart';
import 'package:vinculacao_empresa/app/data/models/hash_model.dart';

abstract class EmpresaService {
  Future<T> init<T>();
  Future<EmpresaModel?> getEmpresa({required String cnpj, required String url});
  Future<String?> gerarHash({required HashModel hashModel});
  Future<bool> vincularHost({required String urlVincular, required Map<String, dynamic> dados});
  Future<String?> gerarToken({required EmpresaModel empresa, required String usuario, required String senha});
}
