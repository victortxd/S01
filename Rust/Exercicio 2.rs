use std::io;

fn eh_par(numero: i32) -> bool
  {
    numero % 2 == 0
}

fn main() 
  {
  let mut l1 = String::new();
  let mut l2 = String::new();

  println!("Jogador 1 digite seu número: ");
  io::stdin()
    .read_line(&mut l1)
    .expect("Falha ao ler a entrada");
  
  println!("Jogador 2 digite seu número: ");
  io::stdin()
    .read_line(&mut l2)
    .expect("Falha ao ler a entrada");
  let n1: i32 = l1.trim().parse().expect("Falha ao converter n1 para numero");
  let n2: i32 = l2.trim().parse().expect("Falha ao converter n2 para numero");

  let soma = eh_par(n1+n2);
  let k1 = eh_par(n1);
  let k2 = eh_par(n2);

  if soma == k1 && soma == k2
  {
    println!("Soma: {}", n1+n2);
    println!("Empate");
  } else if soma == k1 
  {
      println!("Soma: {}", n1+n2);
      println!("Jogador 1 venceu");
  } else {
      println!("Soma: {}", n1+n2);
      println!("Jogador 2 venceu");
  }
}
