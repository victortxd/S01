using System;

public class MonstroSombrio 
{
  public string nome;

  public MonstroSombrio(string nome)
  {
    this.nome = nome;
    
  }

  public virtual void Mover()
  {
    Console.WriteLine($"O {nome}(monstro) se movimentando");
    
  }
}

public class Zumbi : MonstroSombrio 
{
  public Zumbi(string nome) : base(nome){}

  public override void Mover()
  {
    Console.WriteLine($"O {nome}(zumbi)  se movimentando rapidamente");
    
  }
}

public class Espectro : MonstroSombrio
{
  public Espectro(string nome) : base(nome){}

  public override void Mover()
  {
    Console.WriteLine($"O {nome}(espectro) no alto voando");
    
  }
}

class Program 
{
  public static void Main (string[] args) 
  {
    MonstroSombrio[] monstros = new MonstroSombrio[4];

    monstros[0] = new Zumbi("Zark");
    monstros[1] = new Zumbi("Demiusgos");
    monstros[2] = new Espectro("Alucard");
    monstros[3] = new Espectro("Dracula");

    foreach(MonstroSombrio monstro in monstros)
    {
      monstro.Mover();
      
    }
  }
}
