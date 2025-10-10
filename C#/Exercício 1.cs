using System;
public class MembroDaSociedade 
{
  private string nome;
  private string raca;
  private string funcao;

  public MembroDaSociedade(string nome, string raca, string funcao)
  {
    this.nome = nome;
    this.raca = raca;
    this.funcao = funcao;
  }

  public void Descrever()
  {
    Console.WriteLine($" Nome: {nome};)";
    Console.WriteLine($" Raça: {raca})";
    Console.WriteLine($" Função: {funcao}";
  }
}

class Program 
{
  public static void Main (string[] args)
  {
    MembroDaSociedade Aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
    MembroDaSociedade Legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");
    
    Aragorn.Descrever();
    Legolas.Descrever();
  }
}
