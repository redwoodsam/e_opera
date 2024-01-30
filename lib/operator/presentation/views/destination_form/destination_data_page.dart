import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../operator_module.dart';
import '../summary/summary_page.dart';
import 'destination_data_state.dart';
import 'destination_data_viewmodel.dart';

// class DestinationDataPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Destination Data Form'),
//         backgroundColor: Colors.green,
//         centerTitle: true,
//       ),
//       body: DestinationForm(
//         codigo: codigo,
//         descricao: descricao,
//         variedade: variedade,
//         quantidadeColetada: quantidadeColetada,
//         unidade: unidade,
//         nomeMotorista: nomeMotorista,
//         cpfMotorista: cpfMotorista,
//         placaCaminhao: placaCaminhao,
//         nomeTransportadora: nomeTransportadora,
//       ),
//     );
//   }

//   String codigo = '';
//   String descricao = '';
//   String variedade = '';
//   String quantidadeColetada = '';
//   String unidade = '';
//   String nomeMotorista = '';
//   String cpfMotorista = '';
//   String placaCaminhao = '';
//   String nomeTransportadora = '';

//   // DestinationDataPage({
//   //   required this.codigo,
//   //   required this.descricao,
//   //   required this.variedade,
//   //   required this.quantidadeColetada,
//   //   required this.unidade,
//   //   required this.nomeMotorista,
//   //   required this.cpfMotorista,
//   //   required this.placaCaminhao,
//   //   required this.nomeTransportadora,
//   // });
// }

class DestinationDataPage extends StatefulWidget {
  // final String codigo;
  // final String descricao;
  // final String variedade;
  // final String quantidadeColetada;
  // final String unidade;
  // final String nomeMotorista;
  // final String cpfMotorista;
  // final String placaCaminhao;
  // final String nomeTransportadora;

  // DestinationDataPage({
  //   required this.codigo,
  //   required this.descricao,
  //   required this.variedade,
  //   required this.quantidadeColetada,
  //   required this.unidade,
  //   required this.nomeMotorista,
  //   required this.cpfMotorista,
  //   required this.placaCaminhao,
  //   required this.nomeTransportadora,
  // });

  @override
  _DestinationFormState createState() => _DestinationFormState();
}

class _DestinationFormState
    extends ViewState<DestinationDataPage, DestinationDataViewModel> {
  String codigo = '';
  String descricao = '';
  String variedade = '';
  String quantidadeColetada = '';
  String unidade = '';
  String nomeMotorista = '';
  String cpfMotorista = '';
  String placaCaminhao = '';
  String nomeTransportadora = '';

  // _DestinationFormState({
  //   required this.codigo,
  //   required this.descricao,
  //   required this.variedade,
  //   required this.quantidadeColetada,
  //   required this.unidade,
  //   required this.nomeMotorista,
  //   required this.cpfMotorista,
  //   required this.placaCaminhao,
  //   required this.nomeTransportadora,
  // });

  // Variáveis para armazenar os valores dos campos
  String _selectedDestination = 'Destino A';
  TextEditingController _observacoesController = TextEditingController();

  // Dados fictícios para o campo de destino
  List<String> destinationList = ['Destino A', 'Destino B', 'Destino C'];

  @override
  void initState() {
    super.initState();
    viewModel.getDataOptions();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;

    codigo = routeArgs['codigo'] ?? "";
    descricao = routeArgs['descricao'] ?? "";
    variedade = routeArgs['variedade'] ?? "";
    quantidadeColetada = routeArgs['quantidadeColetada'] ?? "";
    unidade = routeArgs['unidade'] ?? '';
    nomeMotorista = routeArgs['nomeMotorista'] ?? '';
    cpfMotorista = routeArgs['cpfMotorista'] ?? '';
    placaCaminhao = routeArgs['placaCaminhao'] ?? '';
    nomeTransportadora = routeArgs['nomeTransportadora'] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Data Form'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ViewModelConsumer<DestinationDataViewModel, DestinationDataState>(
        viewModel: viewModel,
        listener: (context, state) => switch (state) {
          LoadedDestinationDataState(
            :final destinations,
          ) =>
            {
              destinationList = List<String>.from(
                destinations.map((e) => e.destinationName),
              ),
            },
          SuccessDestinationData() => {},
          _ => null,
        },
        builder: (context, state) {
          return switch (state) {
            LoadedDestinationDataState(
              :final destinations,
              :final selectedDestination
            ) =>
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDropdown(
                      value: selectedDestination?.destinationName,
                      items:
                          destinations.map((e) => e.destinationName).toList(),
                      onChanged: (value) {
                        setState(() {
                          viewModel.onSelectDestination(value!);
                        });
                      },
                      labelText: 'Destino da Colheita',
                    ),
                    SizedBox(height: 16.0),
                    _buildTextFormField(
                      controller: _observacoesController,
                      labelText: 'Observações',
                      maxLines: 3,
                    ),
                    SizedBox(height: 16.0),
                    _buildSubmitButton(
                      selectedDestination?.destinationName ?? "",
                    ),
                  ],
                ),
              ),
            LoadingDestinationData() => Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ErrorDestinationData() => Scaffold(
                  body: Center(
                /// TODO: tela de erro
                child: Text('Erro'),
              )),
            _ => const SizedBox.shrink(),
          };
        },
      ),
    );
  }

  Widget _buildDropdown({
    required String labelText,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.green),
        ),
        SizedBox(height: 8.0),
        DropdownButtonFormField2<String?>(
          value: value,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white70,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onSaved: (value) {
            // Faça algo com o valor selecionado
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(right: 8),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black45,
            ),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white70,
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          ),
        ),
      ],
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    TextInputType keyboardType = TextInputType.text,
    int? maxLines,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.green),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      keyboardType: keyboardType,
      maxLines: maxLines,
    );
  }

  Widget _buildSubmitButton(String selectedDestination) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Nav.pushNamed(OperatorModule.summaryPage, arguments: {
            'codigo': codigo ?? "" as String,
            'descricao': descricao ?? "" as String,
            'variedade': variedade ?? "" as String,
            'quantidadeColetada': quantidadeColetada ?? "" as String,
            'unidade': unidade ?? "" as String,
            'nomeMotorista': nomeMotorista ?? "" as String,
            'cpfMotorista': cpfMotorista ?? "" as String,
            'placaCaminhao': placaCaminhao ?? "" as String,
            'nomeTransportadora': nomeTransportadora ?? "" as String,
            'destinoColheita': selectedDestination ?? "" as String,
            'observacoes': _observacoesController.text ?? "" as String,
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          'Finalizar Colheita',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
