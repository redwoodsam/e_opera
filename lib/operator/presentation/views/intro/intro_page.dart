import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../operator.dart';
import '../../../operator_module.dart';

/// Page to operator insert some informations
class OperatorIntroPage extends StatefulWidget {
  /// Constructor of [OperatorIntroPage]
  const OperatorIntroPage({super.key});

  @override
  State<OperatorIntroPage> createState() => _OperatorIntroPageState();
}

class _OperatorIntroPageState
    extends ViewState<OperatorIntroPage, IntroViewModel> {

      @override
  void initState() {
    super.initState();
    viewModel.getFarms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.21, -0.98),
            end: Alignment(0.21, 0.98),
            colors: [Color(0xFF93ECB0), Color(0xFF074624)],
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: Dimension.md.width,
                    top: const Dimension(6.43).height,
                  ),
                  child: Text(
                    'Operador',
                    style: TextStyle(
                      color: const Color(0xFF121517),
                      fontSize: 20.fontSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/map.png',
                    height: const Dimension(20).height,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxHeight: context.screenHeight - const Dimension(31).height,
                maxWidth: context.screenWidth,
              ),
              margin: EdgeInsets.only(top: const Dimension(31).height),
              decoration: const BoxDecoration(
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
                    Padding(
                      padding: EdgeInsets.only(top: Dimension.xl.height),
                      child: Text(
                        'Qual a sua localização atual?',
                        style: TextStyle(
                          color: const Color(0xFF121517),
                          fontSize: 18.fontSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimension.md.height),
                      child: const _CustomItemSearch(
                        title: 'Fazenda',
                        hintText: 'Qual fazenda você se encontra?',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimension.md.height),
                      child: const _CustomItemSearch(
                        title: 'Safra',
                        hintText: 'Qual safra você se encontra?',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimension.md.height),
                      child: const _CustomItemSearch(
                        title: 'Talhão',
                        hintText: 'Qual talhão você se encontra?',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimension.xxl.height),
                      child: CustomFilledButton(
                        onPressed: () => Nav.pushNamed(OperatorModule.home),
                        text: 'Continuar',
                      ),
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

class _CustomItemSearch extends StatelessWidget {
  final String title;
  final String hintText;

  const _CustomItemSearch({
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF121517),
              fontSize: 18.fontSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Dimension.xs.height),
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xFFF0F3F4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      style: TextStyle(
                        color: context.foreground.active,
                        fontSize: 16.fontSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: Dimension.sm.width,
                          vertical: Dimension.sm.height,
                        ),
                        focusedBorder: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                          color: const Color(0xFF8391A1),
                          fontSize: 16.fontSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: Dimension.xs.width,
                      right: Dimension.sm.width,
                    ),
                    child: Image.asset(
                      'assets/icons/search.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
