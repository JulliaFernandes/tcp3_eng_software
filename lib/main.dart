import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAppSaude());
}

class MeuAppSaude extends StatelessWidget {
  const MeuAppSaude({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> dependentes = [];
  String nomeDigitado = '';

  void _abrirFormulario() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Adicionar Dependente'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome *'),
                onChanged: (valor) => nomeDigitado = valor,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Idade *'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dependentes.add(nomeDigitado);
                });
                Navigator.of(context).pop(); // Fecha o formulário
              },
              child: const Text('Salvar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meus Dependentes')),
      body: ListView.builder(
        itemCount: dependentes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(dependentes[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar',
        onPressed: _abrirFormulario,
        child: const Icon(Icons.add),
      ),
    );
  }
}