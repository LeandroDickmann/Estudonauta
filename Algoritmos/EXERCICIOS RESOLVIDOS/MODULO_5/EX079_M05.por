programa
{
	
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t

	funcao cadeia fibonacci(inteiro num){
		cadeia fib= "0 - 1"
		inteiro p1=0, p2=1, p3
		para(inteiro i=3;i<=num;i++){
			p3=p1+p2
			p1=p2
			p2=p3
			fib=fib+" - "+t.inteiro_para_cadeia(p3, 10)
		}

		retorne fib
	}
	
	funcao inicio()
	{
		inteiro num=0
		escreva("Digite o numero de termos: ")
		leia(num)
		escreva("Senquencia de Fibonacci com "+num+" termos: ")
		escreva(fibonacci(num))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @DOBRAMENTO-CODIGO = [6];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */