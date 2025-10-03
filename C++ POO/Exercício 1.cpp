#include <iostream>
using namespace std;
class Personagem 
{
    public:
    string nome;
    int nivel;
    int dano;
    int vida;

    Personagem(string nome, int nivel, int dano, int vida)
{
      this->nome = nome;
      this->nivel = nivel;
      this->dano = dano;
      this->vida = vida;
    }

    void atacar(Personagem &inimigo)
{
      cout << "O " << this->nome << " atacou o " << inimigo.nome << " causando " << this->dano << " de dano." << endl;
  
      inimigo.vida -= this->dano;
    }
};

int main()
{
  Personagem demon("demon", 4, 14, 220);
  
  Personagem hashira("hashira", 6, 11, 210);

  hashira.atacar(demon);

  cout << endl;
  cout << "Status do Demon: " << endl;
  cout << "Nome: " << demon.nome << endl;
  cout << "Vida: " << demon.vida << endl;
  cout << "Nivel: " << demon.nivel << endl;
  cout << "Dano: " << demon.dano << endl;
  cout << endl;
  
  cout << "Status do hashira: " << endl;
  cout << "Nome: " << hashira.nome << endl;
  cout << "Vida: " << hashira.vida << endl;
  cout << "Nivel: " << hashira.nivel << endl;
  cout << "Dano: " << hashira.dano << endl;
  cout << endl;
  
  return 0;
}
