#include <iostream>
#include <list>
using namespace std;

class SerVivo {
  public:
    string nome;

    SerVivo(string nome) {
        this->nome = nome;
    }

    virtual void apresentar() {
      cout << "Nome: " << nome << " sou ser vivo." << endl;
    }
    virtual ~SerVivo() {};
};
class Humano : public SerVivo {
  public:
    Humano(string nome) : SerVivo(nome) {
      this->nome = nome;
    }

    void apresentar() override {
      cout << "Olá, meu nome é " << nome << " prazer em conhecer, sou um humano." << endl;
    }
};
class Elfo : public SerVivo {
  public:
    Elfo(string nome) : SerVivo(nome){
      this->nome = nome;
    }

    void apresentar() override{
      cout << "Prazer em conhecer, me chamo " << nome << " sou um elfo." << endl;
    }
};
class Fada : public SerVivo {
  public:
    Fada(string nome) : SerVivo(nome){
      this->nome = nome;
    }

    void apresentar() override {
      cout << "Ei! Escute! Escute! Meu nome é " << nome << " sou uma fada." << endl;
    }
};

int main() {
  list<SerVivo*> seres;

  seres.push_back(new Humano("João"));
  seres.push_back(new Elfo("Tharival"));
  seres.push_back(new Fada("Navi"));

  for (SerVivo* ser : seres)
    ser->apresentar();
  
  for (SerVivo* ser : seres)
    delete ser;

  seres.clear();
  
  return 0;
}
