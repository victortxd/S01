#include <iostream>
using namespace std;
class Pessoa 
{
    public:
    string nome;

    Pessoa(string nome)
    {
      this->nome = nome;
    }

    virtual void apresentar()
    {
      cout << "oii, meu nome é " << nome << " e sou uma pessoa." << endl;
    }

    virtual ~Pessoa(){}
};
class Professor : public Pessoa 
{
    public:
    string diciplina;

    Professor(string nome, string materia) : Pessoa(nome){
      this->nome = nome;
      this->materia = materia;
    }

    void apresentar() override{
      cout << "oi, meu nome é " << nome << " e sou um professor de " << materia << "." << endl;
    }
};
class Aluno : public Pessoa 
{
    public:
    string curso;
    int matricula;

    Aluno(string nome, string curso, int matricula) : Pessoa(nome)
    {
      this->nome = nome;
      this->curso = curso;
      this->matricula = matricula;
    }

    void apresentar() override
    {
      cout << "oi, meu nome é " << nome << " e sou um aluno de " << curso << "." << endl;
    }
};

int main() 
{
  Pessoa* pessoaA = new Professor("Hugo", "Matemática");
  Pessoa* pessoaB = new Aluno("Pedro", "Engenharia civil", 12843);

  pessoaA->apresentar();
  cout << endl;
  pessoaB->apresentar();
  
  delete pessoaB;
  delete pessoaA;
  
  return 0;
}
