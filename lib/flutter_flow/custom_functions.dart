import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

double clinicHours(
  double? hours,
  int? ferias,
  double? desmarcacoes,
  int? cadeiras,
  int? feriados,
) {
  // Verifica se qualquer um dos parâmetros é nulo
  if (hours == null ||
      cadeiras == null ||
      ferias == null ||
      desmarcacoes == null ||
      feriados == null) {
    return 0.0;
  }
  int days = 254;

  int diasuteis = days - (ferias + feriados);
  // Calcula as horas totais, descontando as férias
  double horasTotais = diasuteis * hours * cadeiras;

  // Calcula as horas desmarcadas com base no percentual de desmarcações
  double desmarcoesHoras = horasTotais * desmarcacoes / 100;

  // Calcula o total de horas ajustadas e arredonda para o inteiro mais próximo
  double totalAjustado = horasTotais - desmarcoesHoras;

  return totalAjustado.roundToDouble();
}

double? somaProlaboreSocios(
  double? socio1,
  double? socio2,
) {
  double? somaSocioValor;
  // socio1 + socio2 as the variable somaSocioValor
  if (socio1 == null || socio2 == null) {
    return null;
  }

  if (socio2 == 0) {
    return socio1;
  }
  somaSocioValor = socio1 + socio2;
  return somaSocioValor;
}

double? calcularLista(List<double>? numeros) {
  if (numeros == null || numeros.isEmpty) {
    return 0.0;
  }

  double soma = 0.0;
  for (double elemento in numeros) {
    soma += elemento;
  }
  return soma;
}

double? somaCustosFixos(
  double? valorProlabore,
  double? valorClinica,
) {
  // Verifica se qualquer um dos parâmetros é nulo
  if (valorClinica == null || valorProlabore == null) {
    return 0.0;
  }

  double total = valorProlabore + valorClinica;
  return total;
}

double? calcularHoraClinica(
  double? totalHoras,
  double? totalCustos,
) {
  // calcular o custo da hora clinica dividindo o total de horas sobre o custo
  if (totalHoras == null || totalCustos == null || totalHoras == 0) {
    return null;
  }
  double custosAno = totalCustos * 12;
  double custoHora = custosAno / totalHoras;
  return custoHora;
}
