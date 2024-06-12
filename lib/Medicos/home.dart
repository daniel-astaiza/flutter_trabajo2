import 'package:flutter/material.dart';
import 'package:flutter_application_16/Medicos/citas.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Hospital'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
       body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: opcionesAcademicas.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: IconButton(
              onPressed: () {
                if (opcionesAcademicas[index]['codigo'] == '001') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CitasMedicas(),
                    ),
                  );
                } else {
                  
                }
              },
                icon: Column(
                  children: [
                    Icon(opcionesAcademicas[index]["icono"], color: Colors.orange,),
                    Text(opcionesAcademicas[index]["titulo"]),
                    Text(opcionesAcademicas[index]["codigo"]),
                  ],
                ),
              ));
            },
          ),
        );
  }
}


List opcionesAcademicas = [
  {
    'codigo': '001',
    'titulo': 'Citas Médicas',
    'icono': Icons.event_available, 
    
  },
  {
    'codigo': '002',
    'titulo': 'Urgencias',
    'icono': Icons.local_hospital, 
  },
  {
    'codigo': '003',
    'titulo': 'Especialistas',
    'icono': Icons.medical_services, 
  },
  {
    'codigo': '004',
    'titulo': 'Farmacia',
    'icono': Icons.local_pharmacy,
  },
  {
    'codigo': '005',
    'titulo': 'Pacientes',
    'icono': Icons.person, 
  },
  {
    'codigo': '006',
    'titulo': 'Terapias',
    'icono': Icons.spa, 
  },
  {
    'codigo': '007',
    'titulo': 'Laboratorios',
    'icono': Icons.science, 
  },
  {
    'codigo': '008',
    'titulo': 'Sangre',
    'icono': Icons.bloodtype, 
  },
  {
    'codigo': '009',
    'titulo': 'Rehabilitación',
    'icono': Icons.blind 
  },
  {
    'codigo': '010',
    'titulo': 'Consultas',
    'icono': Icons.chat,
  },
  {
    'codigo': '011',
    'titulo': 'Informes',
    'icono': Icons.insert_chart, 
  },
  {
    'codigo': '012',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today,
  },
  {
    'codigo': '013',
    'titulo': 'Pagos',
    'icono': Icons.payment, 
  },
  {
    'codigo': '014',
    'titulo': 'Contactos',
    'icono': Icons.contact_phone,
  },
  {
    'codigo': '015',
    'titulo': 'Información',
    'icono': Icons.info, 
  }
];
