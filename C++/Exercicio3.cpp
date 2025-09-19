#include <iostream>
using namespace std;

int main()
{
	int n;
	int soma = 0;
	float notas;
	
	cout << "Quantidade de notas: ";
	cin >> n;
	
	for(int i = 0; i < n; i++)
	{
		cin >> notas;
		
		while( notas < 0|| notas > 10)
		{
			cin >> notas;
		}
		
		soma += notas;
    
	}
  cout << "Sua media e de: " << (soma / n) << endl;
    if ((soma / n) >= 7) 
    {
      cout << "Aprovado!";
    } else {
      cout << "Reprovado!";
    }

  return 0;
}
