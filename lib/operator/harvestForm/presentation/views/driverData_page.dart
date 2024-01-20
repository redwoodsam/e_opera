import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'destinationData_page.dart';

class DriverDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Data Form'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: DriverForm(
        codigo: codigo,
        descricao: descricao,
        variedade: variedade,
        quantidadeColetada: quantidadeColetada,
        unidade: unidade,
      ),
    );
  }

  final String codigo;
  final String descricao;
  final String variedade;
  final String quantidadeColetada;
  final String unidade;

  DriverDataPage({
    required this.codigo,
    required this.descricao,
    required this.variedade,
    required this.quantidadeColetada,
    required this.unidade,
  });
}

class DriverForm extends StatefulWidget {
  final String codigo;
  final String descricao;
  final String variedade;
  final String quantidadeColetada;
  final String unidade;

  DriverForm({
    required this.codigo,
    required this.descricao,
    required this.variedade,
    required this.quantidadeColetada,
    required this.unidade,
  });

  @override
  _DriverFormState createState() => _DriverFormState();
}

class _DriverFormState extends State<DriverForm> {
  // Controladores de texto para os campos do formulário
  final TextEditingController _nomeMotoristaController =
  TextEditingController();
  final TextEditingController _cpfController =
  MaskedTextController(mask: '000.000.000-00');
  String _selectedPlacaCaminhao = 'ABC1234';
  String _selectedTransportadora = 'Transportadora1';

  // Dados fictícios para as listas suspensas
  List<String> placaCaminhaoList = ['ABC1234', 'XYZ5678', 'DEF9876'];
  List<String> transportadoraList = [
    'Transportadora1',
    'Transportadora2',
    'Transportadora3'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextFormField(
            controller: _nomeMotoristaController,
            labelText: 'Nome do Motorista',
          ),
          SizedBox(height: 16.0),

          _buildTextFormField(
            controller: _cpfController,
            labelText: 'CPF',
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 16.0),

          _buildDropdown(
            value: _selectedPlacaCaminhao,
            items: placaCaminhaoList,
            onChanged: (value) {
              setState(() {
                _selectedPlacaCaminhao = value!;
              });
            },
            labelText: 'Placa do Caminhão',
          ),
          SizedBox(height: 16.0),

          _buildDropdown(
            value: _selectedTransportadora,
            items: transportadoraList,
            onChanged: (value) {
              setState(() {
                _selectedTransportadora = value!;
              });
            },
            labelText: 'Transportadora',
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
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity, // Ocupa a largura total da tela
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DestinationDataPage(
                codigo: widget.codigo,
                descricao: widget.descricao,
                variedade: widget.variedade,
                quantidadeColetada: widget.quantidadeColetada,
                unidade: widget.unidade,
                nomeMotorista: _nomeMotoristaController.text,
                cpfMotorista: _cpfController.text,
                placaCaminhao: _selectedPlacaCaminhao,
                nomeTransportadora: _selectedTransportadora,
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
          'Prosseguir',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
