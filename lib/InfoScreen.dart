import 'package:eco_residuos/ReportScreen.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información del Proyecto'),
        backgroundColor: Colors.teal[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        'El proyecto EcoResiduos utiliza datos históricos sobre la generación y disposición de residuos sólidos desde 2016 hasta 2024.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal[900],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        _buildReportButton(
                            context,
                            'Gráfico de Dispersión: Toneladas de Residuos No Aprovechables vs. Toneladas de Residuos Aprovechables',
                            ReportScreen(reportType: 'dispersion1')),
                        _buildReportButton(
                            context,
                            'Gráfico de Dispersión: Valor del Peaje vs. Toneladas de Residuos Generados',
                            ReportScreen(reportType: 'dispersion2')),
                        _buildReportButton(
                            context,
                            'Gráfico de Barras Apiladas: Distribución de Toneladas de Residuos por Tipo de Sitio de Destino',
                            ReportScreen(reportType: 'barrasApiladas')),
                        _buildReportButton(
                            context,
                            'Gráfico de Barras Agrupadas: Toneladas de Residuos por Municipio y Tipo de Residuo',
                            ReportScreen(reportType: 'barrasAgrupadas')),
                        _buildReportButton(
                            context,
                            'Gráfico de Líneas: Evolución Anual de Toneladas de Residuos Aprovechables y No Aprovechables',
                            ReportScreen(reportType: 'lineas')),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        'La correcta gestión de los residuos es crucial para un entorno urbano saludable y sostenible.',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.teal[900],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal[600],
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        child: Text(title),
      ),
    );
  }
}
