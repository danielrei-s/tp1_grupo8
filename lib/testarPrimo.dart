class Testar {
  static bool ePrimo(int n) {
    int divisores = 0;
    //Para ser primo apenas pode dividir por 1 e por ele mesmo
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        divisores++;
      }
    }
    if (divisores == 2) {
      return true;
    }
    return false;
  }
}
