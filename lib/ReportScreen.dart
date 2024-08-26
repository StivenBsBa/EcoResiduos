import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Asegúrate de agregar esta dependencia en pubspec.yaml

class ReportScreen extends StatelessWidget {
  final String reportType;

  ReportScreen({required this.reportType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informe: ${_getReportTitle(reportType)}'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _getReportDescription(reportType),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: _getReportChart(reportType),
            ),
          ],
        ),
      ),
    );
  }

  String _getReportTitle(String reportType) {
    switch (reportType) {
      case 'dispersion1':
        return 'Toneladas de Residuos No Aprovechables vs. Aprovechables';
      case 'dispersion2':
        return 'Valor del Peaje vs. Toneladas de Residuos Generados';
      case 'barrasApiladas':
        return 'Distribución de Residuos por Tipo de Sitio de Destino';
      case 'barrasAgrupadas':
        return 'Toneladas de Residuos por Municipio y Tipo';
      case 'lineas':
        return 'Evolución Anual de Residuos Aprovechables y No Aprovechables';
      default:
        return 'Informe No Disponible';
    }
  }

  String _getReportDescription(String reportType) {
    switch (reportType) {
      case 'dispersion1':
        return 'Este gráfico de dispersión muestra la relación entre las toneladas de residuos no aprovechables y las toneladas de residuos aprovechables. Te ayudará a entender si hay una tendencia a generar más residuos aprovechables cuando se generan menos residuos no aprovechables, o viceversa.';
      case 'dispersion2':
        return 'Este gráfico de dispersión explora la relación entre el valor del peaje y la cantidad total de residuos generados. Puede revelar si hay una correlación entre el costo de transporte y la cantidad de residuos, lo que puede ayudar a optimizar rutas y costos.';
      case 'barrasApiladas':
        return 'Este gráfico de barras apiladas muestra cómo se distribuyen los diferentes tipos de residuos entre los sitios de destino. Permite ver cómo cada tipo de residuo contribuye al total en cada tipo de sitio de destino, ayudando a entender el uso y la eficiencia de los sitios.';
      case 'barrasAgrupadas':
        return 'Este gráfico de barras agrupadas compara la cantidad de cada tipo de residuo generada en diferentes municipios. Ayuda a identificar qué municipios generan más de ciertos tipos de residuos, lo que puede señalar áreas que necesitan intervención o mejora en la gestión de residuos.';
      case 'lineas':
        return 'Este gráfico de líneas visualiza la evolución anual de las toneladas de residuos aprovechables y no aprovechables a lo largo del tiempo. Permite observar si hay patrones o tendencias en la generación de estos residuos, como incrementos o disminuciones estacionales o anuales.';
      default:
        return 'Descripción No Disponible';
    }
  }

  Widget _getReportChart(String reportType) {
    switch (reportType) {
      case 'dispersion1':
        return _buildScatterChart(); // Aquí debes implementar el gráfico de dispersión
      case 'dispersion2':
        return _buildScatterChart(); // Aquí debes implementar el gráfico de dispersión
      case 'barrasApiladas':
        return _buildStackedBarChart(); // Aquí debes implementar el gráfico de barras apiladas
      case 'barrasAgrupadas':
        return _buildGroupedBarChart(); // Aquí debes implementar el gráfico de barras agrupadas
      case 'lineas':
        return _buildLineChart(); // Aquí debes implementar el gráfico de líneas
      default:
        return Center(child: Text('Gráfico No Disponible'));
    }
  }

  // Implementaciones de gráficos
  Widget _buildScatterChart() {
    // Aquí debes implementar el gráfico de dispersión
    return Container(
      color: Colors.grey[200],
      child: Center(child: Text('Gráfico de Dispersión Aquí')),
    );
  }

  Widget _buildStackedBarChart() {
    // Aquí debes implementar el gráfico de barras apiladas
    return Container(
      color: Colors.grey[200],
      child: Center(child: Text('Gráfico de Barras Apiladas Aquí')),
    );
  }

  Widget _buildGroupedBarChart() {
    // Aquí debes implementar el gráfico de barras agrupadas
    return Container(
      color: Colors.grey[200],
      child: Center(child: Text('Gráfico de Barras Agrupadas Aquí')),
    );
  }

  Widget _buildLineChart() {
    // Aquí debes implementar el gráfico de líneas
    return Container(
      color: Colors.grey[200],
      child: Center(child: Text('Gráfico de Líneas Aquí')),
    );
  }
}
