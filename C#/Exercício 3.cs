using System;
using System.Collections.Generic;

public class Feitico 
{
  public string nome;

  public Feitico(string nome)
  {
    this.nome = nome;
    
  }
}

public class Grimorio 
{
  List<Feitico> feiticos = new List<Feitico>();
  public void AdicionarFeitico(Feitico feitico)
  {
    feiticos.Add(feitico);
    
  }

  public void mostrarFeiticos()
  {
    foreach (Feitico feitico in feiticos)
    {
      Console.WriteLine(feitico.nome);
      
    }
  }
}

public class Ferramenta
{
  public string nome;

  public Ferramenta (string nome)
  {
    this.nome = nome;
    
  }
}

public class Maga 
{
  public string nome;
  public Grimorio grimorio;
  public List<Ferramenta> ferramentas = new List<Ferramenta>();

  public Maga(string nome, List<Ferramenta> ferramentas)
  {
    this.nome = nome;
    this.grimorio = new Grimorio();
    this.ferramentas = ferramentas;
    
  }

  public void mostrarFerramentas()
  {
    foreach (Ferramenta ferramenta in ferramentas)
    {
      Console.WriteLine(ferramenta.nome);
      
    }
  }
}

class Program 
{
  public static void Main (string[] args) 
  {
    List<Ferramenta> ferramentas = new List<Ferramenta>();
    ferramentas.Add(new Ferramenta("cetro"));
    ferramentas.Add(new Ferramenta("Livro de Feiticos"));
    ferramentas.Add(new Ferramenta("manto"));

    Maga frieren = new Maga("Frieren", ferramentas);

    frieren.grimorio.AdicionarFeitico(new Feitico("arvore da vida"));
    frieren.grimorio.AdicionarFeitico(new Feitico("congelar o tempo"));
    frieren.grimorio.AdicionarFeitico(new Feitico("espadas de luz"));

    Console.WriteLine($"Ferramentas de {frieren.nome}: ");
    frieren.mostrarFerramentas();
    
    Console.WriteLine();
    
    Console.WriteLine($"Feiticos de {frieren.nome}: ");
    frieren.grimorio.mostrarFeiticos();
  }
}
