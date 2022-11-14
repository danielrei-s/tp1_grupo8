class Testar {
  static bool ePrimo(int n) {
    //0 e 1 não são primos
    if (n == 0 || n == 1) {
      return false;
    }

    //2 é primo
    if (n == 2) {
      return true;
    }

    //P ser primo apenas pode dividir por 1 e por ele mesmo
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {}
    }
    return true;
  }
}
