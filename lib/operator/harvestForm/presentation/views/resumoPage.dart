import 'package:flutter/material.dart';

class ResumoPage extends StatelessWidget {
  final String codigo;
  final String destinoColheita;
  final String observacao;
  final String descricao;
  final String variedade;
  final String quantidadeColetada;
  final String unidade;
  final String nomeMotorista;
  final String cpfMotorista;
  final String placaCaminhao;
  final String nomeTransportadora;

  ResumoPage({
    required this.codigo,
    required this.destinoColheita,
    required this.observacao,
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resumo'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Seção: Dados Sobre o Produto
              _buildSectionTitle('Dados Sobre o Produto:'),
              _buildInfoItem('Código:', codigo),
              _buildInfoItem('Descrição:', descricao),
              _buildInfoItem('Variedade:', variedade),
              _buildInfoItem('Quantidade Coletada:', quantidadeColetada),
              _buildInfoItem('Unidade:', unidade),

              SizedBox(height: 16.0),

              // Seção: Dados Sobre o Motorista
              _buildSectionTitle('Dados Sobre o Motorista:'),
              _buildInfoItem('Nome do Motorista:', nomeMotorista),
              _buildInfoItem('CPF do Motorista:', cpfMotorista),
              _buildInfoItem('Placa do Caminhão:', placaCaminhao),
              _buildInfoItem('Nome da Transportadora:', nomeTransportadora),

              SizedBox(height: 16.0),

              // Seção: Dados Sobre o Destino
              _buildSectionTitle('Dados Sobre o Destino:'),
              _buildInfoItem('Destino da Colheita:', destinoColheita),
              _buildInfoItem('Observação:', observacao),
            ],
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
      ),
    );
  }
}
