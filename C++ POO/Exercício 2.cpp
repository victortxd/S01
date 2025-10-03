#include <iostream>
using namespace std;
class Pessoa 
{
    protected:
    string nome;
    int idade;
};
class Protagonista : public Pessoa 
{
    private:
    int nivel;

    public:
    Protagonista(string nome, int nivel)
    {
      this->nome = nome;
      this->nivel = nivel;
    }
    void showProtagonista(Protagonista) 
    {
      cout << "Nome: " << nome << endl;
      cout << "Nivel: " << nivel << endl;
    }
};
class Personagem : public Pessoa 
{
  private:
    int categoria;
  public:
    Personagem(string nome, int categoria)
{
      this->nome = nome;
      this->rank = categoria;
    }
    void showPersonagem(Personagem) 
{
      cout << "Nome: " << nome << endl;
      cout << "Rank: " << categoria << endl;
    }
};


int main() 
{
  Protagonista pro("ruktso", 10);
  Personagem pe("mitsu", 2);

  prota.showProtagonista(pro);
  cout << endl;
  
  pers.showPersonagem(pe);
  cout << endl;
  
  return 0;
}
