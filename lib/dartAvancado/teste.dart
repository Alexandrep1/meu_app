Future<void> fetchData() async {
  try {
    final data = await getDataFromServer();
    print('Dados recebidos: $data');
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}

Future<String> getDataFromServer() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception('Erro ao acessar o servidor');
}

void main() async {
  print("iniciando");
  await fetchData();
  print("finalizando");
}
