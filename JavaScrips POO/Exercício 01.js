class Pokemon 
{
    #vida;
    constructor(nome, tipo, vidaInicial)
  {
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    getVida()
  {
        return this.#vida;
    }

    receberDano(dano)
  {
        this.#vida -= dano;
        if (this.#vida < 0) this.#vida = 0;
    }

    atacar(alvo)
{
        const dano = 5;
        alvo.receberDano(dano);
        console.log(`${this.nome} usou Tackle em ${alvo.nome} e causou ${dano} de dano.`);
    }
}

class PokemonFogo extends Pokemon 
{
    constructor(nome, vidaInicial, bonus)
  {
        super(nome, 'Fogo', vidaInicial);
        this.bonusAtaque = bonus;
    }

    atacar(alvo)
{
        const dano = 10 + this.bonusAtaque;
        alvo.receberDano(dano);
        console.log(`${this.nome} usou bafo do dragão em ${alvo.nome} e causou ${dano} de dano.`);
    }
}

class PokemonAgua extends Pokemon 
{
    #curaBase;
    constructor(nome, vidaInicial, curaBase){
        super(nome, 'Água', vidaInicial);
        this.#curaBase = curaBase;
    }

    atacar(alvo)
  {
        const dano = 8;
        alvo.receberDano(dano);
        console.log(`${this.nome} usou tsunami em ${alvo.nome} e causou ${dano} de dano.`);
        console.log(`${this.nome} recuperou ${this.#curaBase} de vida.`);
    }
}

const Gengar = new Pokemon('Gengar', 'Normal', 20)
const Kyogre  = new PokemonAgua('Kyogre ', 120, 5)
const Ho-ho = new PokemonFogo('Hoho', 120, 10)

let pokemons = [Gengar, Kyogra, Hoho];

pokemons.forEach(pokemon => 
  {
    pokemon.atacar(Gengar);
    pokemon.atacar(Kyogre);
    pokemon.atacar(Ho-ho);
});

console.log("\n Resultados ");
pokemons.forEach(p => 
  {
    console.log(`${p.nome} (${p.tipo}) - Vida: ${p.getVida()}`);
});

