import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/collect.dart';
import 'summary_driver_state.dart';
import 'summary_driver_viewmodel.dart';

class SummaryDriverPage extends StatefulWidget {
  @override
  _SummaryDriverPageState createState() => _SummaryDriverPageState();
}

class _SummaryDriverPageState
    extends ViewState<SummaryDriverPage, SummaryDriverViewModel> {
  String codigo = '';
  String destinoColheita = '';
  String observacoes = '';
  String descricao = '';
  String variedade = '';
  String quantidadeColetada = '';
  String unidade = '';
  String nomeMotorista = '';
  String cpfMotorista = '';
  String placaCaminhao = '';
  String nomeTransportadora = '';

  @override
  void initState() {
    super.initState();
    viewModel.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Collect;
    // print(routeArgs);

    codigo = routeArgs.codigo;
    descricao = routeArgs.descricao;
    variedade = routeArgs.variedade;
    quantidadeColetada = routeArgs.quantidadeColetada;
    unidade = routeArgs.unidade;
    nomeMotorista = routeArgs.nomeMotorista;
    cpfMotorista = routeArgs.cpfMotorista;
    placaCaminhao = routeArgs.placaCaminhao;
    nomeTransportadora = routeArgs.nomeTransportadora;
    observacoes = routeArgs.observacoes;
    destinoColheita = routeArgs.destinoColheita;

    // codigo = routeArgs.codigo ?? "";
    // descricao = routeArgs.descricao ?? "";
    // variedade = routeArgs.variedade ?? "";
    // quantidadeColetada = routeArgs.quantidadeColetada ?? "";
    // unidade = routeArgs.unidade ?? '';
    // nomeMotorista = routeArgs.nomeMotorista ?? '';
    // cpfMotorista = routeArgs.cpfMotorista ?? '';
    // placaCaminhao = routeArgs.placaCaminhao ?? '';
    // nomeTransportadora = routeArgs.nomeTransportadora ?? '';
    // observacoes = routeArgs.observacoes ?? '';
    // destinoColheita = routeArgs.destinoColheita ?? '';

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
            SummaryDriverInitial() => {viewModel.onInitData(routeArgs)},
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
            SummaryDriverSuccess() => {},
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
                          codigo,
                        ),
                        _buildInfoItem(
                          'Descrição:',
                          descricao,
                        ),
                        _buildInfoItem(
                          'Variedade:',
                          variedade,
                        ),
                        _buildInfoItem(
                          'Quantidade Coletada:',
                          quantidadeColetada,
                        ),
                        _buildInfoItem(
                          'Unidade:',
                          unidade,
                        ),

                        SizedBox(height: 16.0),

                        // Seção: Dados Sobre o Motorista
                        _buildSectionTitle('Dados Sobre o Motorista:'),
                        _buildInfoItem(
                          'Nome do Motorista:',
                          nomeMotorista,
                        ),
                        _buildInfoItem(
                          'CPF do Motorista:',
                          cpfMotorista,
                        ),
                        _buildInfoItem(
                          'Placa do Caminhão:',
                          placaCaminhao,
                        ),
                        _buildInfoItem(
                          'Nome da Transportadora:',
                          nomeTransportadora,
                        ),

                        SizedBox(height: 16.0),

                        // Seção: Dados Sobre o Destino
                        _buildSectionTitle('Dados Sobre o Destino:'),
                        _buildInfoItem(
                          'Destino da Colheita:',
                          destinoColheita,
                        ),
                        _buildInfoItem(
                          'Observação:',
                          observacoes,
                        ),

                        SizedBox(height: 26.0),

                        _buildSubmitButton(routeArgs),
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
                  child: Text('Erro'),
                )),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }

  Widget _buildSubmitButton(formData) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
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
