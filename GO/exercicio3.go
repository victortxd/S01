package main
import "fmt"
func fi(n int)
{
	var a int = 0
  	var b int = 1
  
	for i := 0; i < n; i++ 
  {
		fmt.Print(a, " ")
		a, b = b, a+b
	}
}

func main()
{
	fmt.Println("Quantos números da sequência de Fibonnaci você quer?: ")
	
	var k int
	fmt.Scanln(&k)

	fi(k)
}
