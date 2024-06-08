import 'package:flutter/material.dart';

class CitasMedicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Médicas'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: medicos.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                medicos[index]['icono'],
                color: Colors.orange, // Agrega el color que desees aquí
              ),
              title: Text(medicos[index]['nombre']),
            ),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> medicos = [
  {'nombre': 'Medicina General',
   'icono': Icons.local_hospital},
  {'nombre': 'Odontología',
   'icono': Icons.medical_services},
  {'nombre': 'Psicología', 
  'icono': Icons.psychology},
  {'nombre': 'Cardiología',
   'icono': Icons.favorite},
  {'nombre': 'Neurología', 
  'icono': Icons.remove_red_eye_outlined},
  {'nombre': 'Ginecología',
   'icono': Icons.woman},
  {'nombre': 'Dermatología',
   'icono': Icons.person},
  {'nombre': 'Pediatría', 
  'icono': Icons.child_care},
  {'nombre': 'Oftalmología',
   'icono': Icons.visibility},
  {'nombre': 'Ortopedia', 
  'icono': Icons.accessible},
];
