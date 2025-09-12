use std::io;

fn verificar_senha(m: &str) -> bool 
    {
    
    if m.len() < 8 
    {
        return false;
    }

    let mut t_numero = false;
    let mut t_maiuscula = false;

    for c in m.chars()
        {
        if c.is_ascii_digit() 
        {
            t_numero = true;
        }
        if c.is_ascii_uppercase()
        {
            t_maiuscula = true;
        }
    }
    m.len() >= 8 && t_numero && t_maiuscula
}

fn main() 
    {
    loop 
        {
        println!("Digite sua senha:");

        let mut m = String::new();
        io::stdin()
            .read_line(&mut m)
            .expect("Falha ao ler entrada");

        let senha = m.trim();
        if verificar_senha(senha) 
        {
            println!("Senha válida! Acesso concedido.");
            break;
        } else {
            println!("Senha inválida! Tente novamente.");
        }
    }
}
