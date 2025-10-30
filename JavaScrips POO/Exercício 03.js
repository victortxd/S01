class Criatura 
{
    constructor(nome, perigosa)
  {
        this.nome = nome;
        this.perigosa = perigosa;
    }
}

class Personagem 
{
    constructor(nome, idade)
  {
        this.nome = nome;
        this.idade = idade;
    }
}

class Diario 
{
    #autorSecreto;
    #enigmas;
    #criaturasAvistadas;

    constructor(autor)
  {
        this.#autorSecreto = autor;
        this.#enigmas = new Map();
        this.#criaturasAvistadas = [];
    }

    getAutor()
  {
        return this.#autorSecreto;
    }

    adicionarEnigma(num, enigma)
  {
        this.#enigmas.set(num, enigma);
    }

    decodificar(chave, num)
  {
        if(chave !== this.#autorSecreto)
        {
            console.log(`Acesso negado: Chave do autor secreto inválida.`);
            return;
        }
        const enigma = this.#enigmas.get(num);
        if (enigma)
        {
            console.log(`Enigma ${num} decodificado: ${enigma}`)
        } else {
            console.log(`Enigma ${num} não encontrado.`);
        }
    }
}

class Protagonista extends Personagem 
{
    #diario;
    constructor(nome, idade, diario)
  {
        super(nome, idade);
        this.#diario = diario;
    }

    tentarDecodificar(chave, num) 
  {
        return this.#diario.decodificar(chave, num);
    }
}

class CabanaMisterio 
{
    #funcionarios;
    #diario;
    visitantes = [];

    constructor(diario)
  {
        this.#diario = diario;
        this.#funcionarios = [];
    }

    adicionarFuncionarios(personagem)
  {
        this.#funcionarios.push(personagem);
    }

    listarFuncionarios()
  {
        return [...this.#funcionarios];
    }
}

//Main
const Tusk = new Criatura(`Tusk`, false);
const Arcanjo = new Criatura(`Arcanjo`, true);
const Guardião = new Criatura(`Guardião`, false);
const mentor = new Criatura(`Bills`, true);

const diario3 = new Diario(`STANFORD`);
diario3.adicionarEnigma(1, `A tormenta`);
diario3.adicionarEnigma(2, `"Fortaleza"`);
diario3.adicionarEnigma(3, `Oraculo`);

const Sasaki = new Personagem(`Sasaki`, 22)
const Zeuz = new Personagem(`Zeuz`, 15)
const Odin = new Personagem(`Odin`, 67);

const Dipper = new Protagonista(`Dipper`, 13, diario3);

const cabanaMisterio = new CabanaMisterio(diario3);
cabanaMisterio.adicionarFuncionarios(Sasaki);
cabanaMisterio.adicionarFuncionarios(Zeuz);
cabanaMisterio.adicionarFuncionarios(Odin);
cabanaMisterio.visitantes.push("fisher","Kalist", "Moria");

Dipper.tentarDecodificar(`STANFORD`, 1);
Dipper.tentarDecodificar(`STANFORD`, 2);
Dipper.tentarDecodificar(`STANFORD`, 3);
Dipper.tentarDecodificar(`STANFORD`, 4);
Dipper.tentarDecodificar(`DIPPER`, 1);

cabanaMisterio.listarFuncionarios().forEach(f => 
  {
    console.log(` - ${f.nome} (Idade: ${f.idade})`);
});
