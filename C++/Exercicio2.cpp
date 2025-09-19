#include <iostream>
using namespace std;

float somarArray(float arr[], int tam)
{
	float soma = 0;
	
	for(int i = 0; i < tam; i++)
	{	
		soma += arr[i];
	}
 return soma;
}
int main()
{
	int tamanho;
	float arr[100];
	
	cout << "Insira a quantidade de numeros: ";
	  cin >> tamanho;
	
	for(int i = 0; i < tamanho; i++)
	{	
		  cin >> arr[i];
	}
	
	cout << "Soma: " << somarArray(arr,tamanho);
	
	return 0;
