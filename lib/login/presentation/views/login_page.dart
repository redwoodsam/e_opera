import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/usecases/login_usecase.dart';

/// page to user login
class LoginPage extends StatefulWidget {
  /// 
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ILoginUsecase usecase = Modular.get<ILoginUsecase>();
  @override
  void initState() {
    super.initState();
    usecase.login();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
