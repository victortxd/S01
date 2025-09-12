package main
import "fmt"
func ad(e, c string) bool
{
	if e == "senha" && c == "admin"
  {
		return true
	} else {
		return false
	}
}
func main() 
{
	var ee string
	var ec string

	for true
  {
		fmt.Print("faça o login: ")
		fmt.Scanln(&ee)
		fmt.Print("senha: ")
		fmt.Scanln(&ec)
		if ad(ee, ec) == true
    {
			fmt.Println("bem vindo(a)!")
			break
		} else {
			fmt.Println("login ou senha inválidas. Tente novamente.")
		}
	}
}
