#include <iostream>
using namespace std;

int fib(int ns) 
{
    if (ns == 0) 
    {
        return 0;
    }
    if (ns == 1) 
    {
        return 1;
    }
        return fib(ns - 1) + fib(ns - 2);
}

int main()
{
      int a;
  
      cout << "Digite um numero: ";
  
      cin >> a;
  
      cout << fib(a) << endl;
  
  return 0;
}
