#include <iostream>
using namespace std;

double fe(double ce)
{
	return ((ce * 1.8) + 32);
}

double ke(double ce)
{
	return (ce + 273);
}

int main()
{
  int ops;
  double ce;

     do {
       
    cout << " qual converção quer fazer: "<< endl;
    cout << " 1 para converter para Fahrenheit" << endl;
	  cout << " 2 para converter para Kelvin" << endl;
    cout << " 3 sair" << endl;

      cin >> ops;
  		switch(ops)
      {
			      case 1:
				      cout << "Digite o valor em celsius: ";
				      cin >> ce;
				      cout << "Temperatura em Fahrenheit: "<< fe(ce) << endl;
				    break;
  		      case 2:
  		    	cout << "Digite o valor em celsius: ";
  		    	cin >> celsius;
  		    	cout << "Temperatura em Kelvin: " << ke(ce) << endl;
  		    	break;
           case 3:
           cout << "Saindo" << endl;
            break;
	    default:
	    break;
		}
	}
       while(op != 3);
	
	return 0;
}
