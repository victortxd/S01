use std::io;

fn imprimir_tabuada(numero: i32, limite_inf: i32, limite_sup: i32)
  {
  for i in limite_inf..=limite_sup
    {
    println!("{} x {} = {}", numero, i, numero * i);
  }
}
fn main() 
  {
  let mut numero = String::new();
  let mut limite_inf = String::new();
  let mut limite_sup = String::new();

  println!("Digite o número para a tabuada:");
  io::stdin()
    .read_line(&mut numero)
    .expect("Falha ao ler o número");
  
  println!("Digite o limite inferior:");
  io::stdin()
    .read_line(&mut limite_inf)
    .expect("Falha ao ler o limite inferior");
  
  println!("Digite o limite superior:");
  io::stdin()
    .read_line(&mut limite_sup)
    .expect("Falha ao ler o limite superior");

  let num: i32 = numero.trim().parse().expect("digite um número válido");
  
  let p1: i32 = limite_inf.trim().parse().expect("digite um número válido");
  
  let v1: i32 = limite_sup.trim().parse().expect("digite um número válido");

  imprimir_tabuada(num, p1, v1);
}
