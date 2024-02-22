import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../operator/presentation/views/summary/summary_state.dart';
import '../../../domain/entities/collect.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../driver_module.dart';
import 'summary_driver_state.dart';
import 'summary_driver_viewmodel.dart';

class SummaryDriverPage extends StatefulWidget {
  @override
  _SummaryDriverPageState createState() => _SummaryDriverPageState();
}

class _SummaryDriverPageState
    extends ViewState<SummaryDriverPage, SummaryDriverViewModel> {
  @override
  void initState() {
    super.initState();
    viewModel.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final harvestForm =
        ModalRoute.of(context)!.settings.arguments as HarvestForm;

    return Scaffold(
      appBar: AppBar(
        title: Text('Resumo'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ViewModelConsumer<SummaryDriverViewModel, SummaryDriverState>(
          viewModel: viewModel,
          listener: (context, state) => switch (state) {
            SummaryDriverInitial() => {viewModel.onInitData(harvestForm)},
            // LoadedSummaryDriverState(
            //   :final collectedData,
            // ) =>
            //   {
            //     codigo = collectedData?.codigo ?? codigo,
            //     destinoColheita =
            //         collectedData?.destinoColheita ?? destinoColheita,
            //     observacoes = collectedData?.observacoes ?? observacoes,
            //     descricao = collectedData?.descricao ?? descricao,
            //     variedade = collectedData?.variedade ?? variedade,
            //     quantidadeColetada =
            //         collectedData?.quantidadeColetada ?? quantidadeColetada,
            //     unidade = collectedData?.unidade ?? unidade,
            //     nomeMotorista = collectedData?.nomeMotorista ?? nomeMotorista,
            //     cpfMotorista = collectedData?.cpfMotorista ?? cpfMotorista,
            //     placaCaminhao = collectedData?.placaCaminhao ?? placaCaminhao,
            //     nomeTransportadora =
            //         collectedData?.nomeTransportadora ?? nomeTransportadora,
            //   },
            SummaryDriverSuccess() => {
                Nav.popAndPushNamed(DriverModule.home, arguments: harvestForm)
              },
            _ => null,
          },
          builder: (context, state) {
            return switch (state) {
              LoadedSummaryDriverState(
                :final collectedData,
              ) =>
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Seção: Dados Sobre o Produto
                        _buildSectionTitle('Dados Sobre o Produto:'),
                        _buildInfoItem(
                          'Código:',
                          harvestForm.product?.productCode ?? '',
                        ),
                        _buildInfoItem(
                          'Descrição:',
                          harvestForm.product?.productDescription ?? '',
                        ),
                        _buildInfoItem(
                          'Variedade:',
                          harvestForm.product?.productVariety ?? '',
                        ),
                        _buildInfoItem(
                          'Quantidade Coletada:',
                          harvestForm.product?.quantity ?? '',
                        ),

                        SizedBox(height: 16.0),

                        // Seção: Dados Sobre o Motorista
                        _buildSectionTitle('Dados Sobre o Motorista:'),
                        _buildInfoItem(
                          'Nome do Motorista:',
                          harvestForm.driver?.driverName ?? '',
                        ),
                        _buildInfoItem(
                          'CPF do Motorista:',
                          harvestForm.driver?.driverCpf ?? '',
                        ),
                        _buildInfoItem(
                          'Placa do Caminhão:',
                          harvestForm.driver?.truckPlate ?? '',
                        ),
                        _buildInfoItem(
                          'Nome da Transportadora:',
                          harvestForm.driver?.shippingCompanyName ?? '',
                        ),

                        SizedBox(height: 16.0),

                        // Seção: Dados Sobre o Destino
                        _buildSectionTitle('Dados Sobre o Destino:'),
                        _buildInfoItem(
                          'Destino da Colheita:',
                          harvestForm.destination?.entityName ?? '',
                        ),
                        _buildInfoItem(
                          'Observação:',
                          harvestForm.destination?.details ?? '',
                        ),

                        SizedBox(height: 26.0),

                        _buildSubmitButton(harvestForm, viewModel),
                      ],
                    ),
                  ),
                ),
              SummaryDriverLoading() => Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              SummaryDriverError() => Scaffold(
                    body: Center(
                  /// TODO: tela de erro
                  child: Center(
                    child: Row(
                      children: [Text('Erro')],
                    ),
                  ),
                )),
              SummarySuccess() => _buildSuccessPage(),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }

  Widget _buildSuccessPage() {
    Timer(Duration(seconds: 5), () {
      Nav.pushReplacementNamed(DriverModule.home);
    });

    return Scaffold(
      body: Center(
        /// TODO: tela de erro
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check),
                Text(
                  'Romaneio enviado com sucesso!',
                  style: TextStyle(color: Colors.lightGreen),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(
      HarvestForm formData, SummaryDriverViewModel viewModel) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          viewModel.sendData(formData);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          'Realizar coleta',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
