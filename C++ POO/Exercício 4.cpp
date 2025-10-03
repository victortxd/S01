#include <iostream>
#include <list>
using namespace std;

class SerVivo 
{
    public:
    string nome;

    SerVivo(string nome) 
    {
        this->nome = nome;
    }

    virtual void apresentar() 
    {
      cout << "Nome: " << nome << " sou ser vivo." << endl;
    }
    virtual ~SerVivo() {};
};
class Humano : public SerVivo
{
    public:
    Humano(string nome) : SerVivo(nome) 
    {
    this->nome = nome;
    }

    void apresentar() override 
    {
      cout << "oi, meu nome é " << nome << " prazer em conhecer, eu sou um humano." << endl;
    }
};
class Elfo : public SerVivo 
{
    public:
    Elfo(string nome) : SerVivo(nome)
    {
    this->nome = nome;
    }

    void apresentar() override{
      cout << "oi, meu nome é " << nome << " prazer em conhecer, eu sou um elfo." << endl;
    }
};
class Fada : public SerVivo 
{
    public:
    Fada(string nome) : SerVivo(nome)
    {
    this->nome = nome;
    }

    void apresentar() override 
     {
      cout << "oi, meu nome é " << nome << " prazer em conhecer, eu sou uma fada." << endl;
    }
};

int main() 
{
  list<SerVivo*> seres;

  seres.push_back(new Humano("Danver"));
  seres.push_back(new Elfo("Trinit"));
  seres.push_back(new Fada("Meracila"));

  for (SerVivo* ser : seres)
  ser->apresentar();
  for (SerVivo* ser : seres)
  delete ser;
  seres.clear();
  
  return 0;
}
