using System;
using System.Collections.Generic;

public class Pokemon
{
  public string nome;
  public Pokemon(string nome)
    
  {
    this.nome = nome;
    
  }
  
  public virtual void Atacar()
  {
    Console.WriteLine($"{nome} usou glask");
    
  }
}

public class PokemonsDeFogo : Pokemon 
{
  public PokemonsDeFogo (string nome) : base(nome) {}
  public override void Atacar()
  
  {
    Console.WriteLine($"{nome} usou aniquilador flamejante");
    
  }
}
public class PokemonsDeAgua : Pokemon 
{
  public PokemonsDeAgua (string nome) : base(nome) {}
  public override void Atacar()
  
  {
    Console.WriteLine($"{nome} usou tsunami");
    
  }
}

class Program 
{
  public static void Main (string[] args) 
    
  {
    List<Pokemon> pokemons = new List<Pokemon>();
    
    pokemons.Add(new PokemonsDeFogo("Charizard"));
    
    pokemons.Add(new PokemonsDeAgua("Blastoise"));

    foreach(Pokemon pokemon in pokemons)
      
    {
      pokemon.Atacar();
    }
  }
}
