// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../operator_module.dart';
import 'home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _OperatorHomePageState();
}

class _OperatorHomePageState extends ViewState<HomePage, HomeViewModel> {
  @override
  void initState() {
    super.initState();
    // viewModel.getLocationParams();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as LocationParams;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.21, -0.98),
          end: Alignment(0.21, 0.98),
          colors: [Color(0xFF93ECB0), Color(0xFF074624)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.xs.width),
            child: Row(
              children: [
                Text(
                  'Operador',
                  style: TextStyle(
                    color: const Color(0xFF121517),
                    fontSize: 20.fontSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.refresh_rounded,
                  size: 24.fontSize,
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimension.xs.height,
                horizontal: Dimension.md.width,
              ),
              child: SizedBox(
                height: Dimension.xxl.height,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF0D8536),
                        shape: OvalBorder(),
                      ),
                      child: Image.asset('assets/icons/map_place.png'),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: const Dimension(1.375).width),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sua Localização',
                            style: TextStyle(
                              color: const Color(0xFF121517),
                              fontSize: 12.fontSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '${routeArgs.farm.farmName}, ${routeArgs.field.fieldDescription}',
                            style: TextStyle(
                              color: const Color(0xFF121517),
                              fontSize: 14.fontSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: Nav.pop,
                      visualDensity: VisualDensity.compact,
                      icon: Icon(
                        Icons.chevron_right_outlined,
                        size: 24.fontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: const Dimension(9).height),
              constraints: BoxConstraints(
                maxHeight: context.screenHeight - const Dimension(7.5).height,
              ),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF074624),
                    blurRadius: 4,
                    offset: Offset(4, 0),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.md.width),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Dimension.xl.vertical,
                    Text(
                      'Olá, José',
                      style: TextStyle(
                        color: const Color(0xFF121517),
                        fontSize: 30.fontSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Dimension(2.25).vertical,
                    Text(
                      'O que você gostaria de fazer hoje?',
                      style: TextStyle(
                        color: const Color(0xFF121517),
                        fontSize: 16.fontSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Dimension.xl.vertical,
                    GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.785,
                        crossAxisSpacing: Dimension.sm.width,
                      ),
                      children: [
                        Container(
                          width: const Dimension(19.5).width,
                          height: const Dimension(25).height,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0xFF0D8536),
                                blurRadius: 4,
                                offset: Offset(3, 4),
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => ProductDataPage(),
                              //   ),
                              // );
                              Nav.pushNamed(OperatorModule.productForm);
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/realizar_colheira.png',
                                ),
                                Text(
                                  'Realizar colheita',
                                  style: TextStyle(
                                    color: const Color(0xFF121517),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                // ajuste conforme necessário
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: const Dimension(19.5).width,
                          height: const Dimension(25).height,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0xFF0D8536),
                                blurRadius: 4,
                                offset: Offset(3, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/icons/relatorios.png'),
                              Text(
                                'Relatórios',
                                style: TextStyle(
                                  color: const Color(0xFF121517),
                                  fontSize: 16.fontSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Dimension.xs.vertical,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
