import 'package:get/get.dart';
import 'package:vinculacao_empresa/app/data/models/ativacao_model.dart';
import 'package:vinculacao_empresa/app/data/models/empresa_model.dart';

class VinculacaoController extends GetxController {
  final _empresa = Rxn<EmpresaModel>();
  AtivacaoModel? ativacao;
  EmpresaModel get empresa => _empresa.value!;
  set empresa(EmpresaModel newEmpresa) => _empresa(newEmpresa);
}
