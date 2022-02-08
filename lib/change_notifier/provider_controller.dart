import 'package:flutter/cupertino.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar =
      'https://cdn.pixabay.com/photo/2020/11/10/15/51/bear-5730216_960_720.png';
  String birthDate = 'Data';

  void alterarDados() {
    name = 'Thiago';
    imgAvatar =
        'https://media.istockphoto.com/vectors/bear-cute-young-bear-isolated-on-white-background-zoo-animal-cartoon-vector-id1358839071?s=612x612';
    birthDate = 'Data';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Susana';
    imgAvatar =
        'https://cdn.pixabay.com/photo/2012/04/18/15/20/nurse-37322_960_720.png';
    notifyListeners();
  }
}
