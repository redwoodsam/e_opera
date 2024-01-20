// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'summary_viewmodel.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});
  @override
  State<StatefulWidget> createState() => _SummaryPageState();
}

class _SummaryPageState extends ViewState<SummaryPage, SummaryViewModel> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.chevron_left,
                    size: 24.fontSize,
                  ),
                ),
                Text(
                  'Realizar Coleta',
                  style: TextStyle(
                    color: const Color(0xFF121517),
                    fontSize: 20.fontSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: const Dimension(.5).height),
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
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Data'),
                            const Dimension(1).vertical,
                            Text('19/01/2023'),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Text('Área'),
                            const Dimension(1).vertical,
                            Text('Fazenda x, Talhão x'),
                          ],
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
