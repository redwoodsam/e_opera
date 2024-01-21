import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'driverData_page.dart';

class ProductDataPage extends StatefulWidget {
  @override
  _ProductDataPageState createState() => _ProductDataPageState();
}

class _ProductDataPageState extends State<ProductDataPage> {
  // Dados fictícios para as listas suspensas
  List<String> codigoList = ['A', 'B', 'C'];
  List<String> variedadeList = ['Tipo1', 'Tipo2', 'Tipo3'];
  List<String> unidadeList = ['Kg', 'Litro', 'Unidade'];

  // Variáveis para armazenar os valores dos campos
  String? selectedCodigo = 'A';
  String descricao = '';
  String? selectedVariedade = 'Tipo1';
  String quantidadeColetada = '';
  String? selectedUnidade = 'Kg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Dados do Produto'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildDropdown(
                labelText: 'Código',
                value: selectedCodigo,
                items: codigoList,
                onChanged: (String? value) {
                  setState(() {
                    selectedCodigo = value;
                  });
                },
              ),
              SizedBox(height: 16.0),

              _buildTextFormField(
                labelText: 'Descrição',
                onChanged: (value) {
                  setState(() {
                    descricao = value;
                  });
                },
              ),
              SizedBox(height: 16.0),

              _buildDropdown(
                labelText: 'Variedade',
                value: selectedVariedade,
                items: variedadeList,
                onChanged: (String? value) {
                  setState(() {
                    selectedVariedade = value;
                  });
                },
              ),
              SizedBox(height: 16.0),

              _buildTextFormField(
                labelText: 'Quantidade Coletada',
                onChanged: (value) {
                  setState(() {
                    quantidadeColetada = value;
                  });
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),

              _buildDropdown(
                labelText: 'Unidade',
                value: selectedUnidade,
                items: unidadeList,
                onChanged: (String? value) {
                  setState(() {
                    selectedUnidade = value;
                  });
                },
              ),
              SizedBox(height: 32.0),

              _buildSubmitButton(),
            ],
          ),
        ),
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
                style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
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
              color: Colors.white70 ,
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
    required String labelText,
    required void Function(String) onChanged,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
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
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DriverDataPage(
              codigo: selectedCodigo!,
              descricao: descricao,
              variedade: selectedVariedade!,
              quantidadeColetada: quantidadeColetada,
              unidade: selectedUnidade!,
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
    );
  }
}