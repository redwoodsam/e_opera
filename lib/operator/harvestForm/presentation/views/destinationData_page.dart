import 'package:eopera/operator/harvestForm/presentation/views/resumoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DestinationDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Data Form'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: DestinationForm(
        codigo: codigo,
        descricao: descricao,
        variedade: variedade,
        quantidadeColetada: quantidadeColetada,
        unidade: unidade,
        nomeMotorista: nomeMotorista,
        cpfMotorista: cpfMotorista,
        placaCaminhao: placaCaminhao,
        nomeTransportadora: nomeTransportadora,
      ),
    );
  }

  final String codigo;
  final String descricao;
  final String variedade;
  final String quantidadeColetada;
  final String unidade;
  final String nomeMotorista;
  final String cpfMotorista;
  final String placaCaminhao;
  final String nomeTransportadora;

  DestinationDataPage({
    required this.codigo,
    required this.descricao,
    required this.variedade,
    required this.quantidadeColetada,
    required this.unidade,
    required this.nomeMotorista,
    required this.cpfMotorista,
    required this.placaCaminhao,
    required this.nomeTransportadora,
  });
}

class DestinationForm extends StatefulWidget {
  final String codigo;
  final String descricao;
  final String variedade;
  final String quantidadeColetada;
  final String unidade;
  final String nomeMotorista;
  final String cpfMotorista;
  final String placaCaminhao;
  final String nomeTransportadora;

  DestinationForm({
    required this.codigo,
    required this.descricao,
    required this.variedade,
    required this.quantidadeColetada,
    required this.unidade,
    required this.nomeMotorista,
    required this.cpfMotorista,
    required this.placaCaminhao,
    required this.nomeTransportadora,
  });

  @override
  _DestinationFormState createState() => _DestinationFormState();
}

class _DestinationFormState extends State<DestinationForm> {
  // Variáveis para armazenar os valores dos campos
  String _selectedDestination = 'Destino A';
  TextEditingController _observacoesController = TextEditingController();

  // Dados fictícios para o campo de destino
  List<String> destinationList = ['Destino A', 'Destino B', 'Destino C'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDropdown(
            value: _selectedDestination,
            items: destinationList,
            onChanged: (value) {
              setState(() {
                _selectedDestination = value!;
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

          _buildSubmitButton(),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
    required String labelText,
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
          onChanged: onChanged,
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
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

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResumoPage(
                codigo: widget.codigo,
                descricao: widget.descricao,
                variedade: widget.variedade,
                quantidadeColetada: widget.quantidadeColetada,
                unidade: widget.unidade,
                nomeMotorista: widget.nomeMotorista,
                cpfMotorista: widget.cpfMotorista,
                placaCaminhao: widget.placaCaminhao,
                nomeTransportadora: widget.nomeTransportadora,
                destinoColheita: _selectedDestination,
                observacao: _observacoesController.text,
              ),
            ),
          );
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
