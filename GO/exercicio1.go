package main
import "fmt"
func rank_num(num int) string 
{
	if num > 0 
  {
		return "positivo"
	} else if num < 0 
  {
		return "negativo"
	} else {
		return "zero"
	}
}
func main() 
{
	fmt.Println("Digite um número para ranquear: ")
	var input int
	fmt.Scanln(&input)
	fmt.Println("O número ", input, " é ", rank_num(input))
}
