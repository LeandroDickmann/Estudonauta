programa
{
	inclua biblioteca Util
	
	funcao real soma(real n1,real n2){
		retorne n1+n2
	}

	
	funcao inicio()
	{
		inteiro opcao
		real n1,n2
		escreva("==== Calculadora v1.0 ====\n")
		escreva("Qual operacao voce quer fazer?\n")
		escreva("\t1-Adicao\n")
		escreva("\t2-Subtracao\n")
		escreva("\t3-Divisao\n")
		escreva("\t4-Multiplicacao\n\n")
		escreva("Digite o numero correspondente a opcao: ")
		leia(opcao)
		escreva("Digite o primeiro numero: ")
		leia(n1)
		escreva("Digite o segundo numero: ")
		leia(n2)
		escolha(opcao){
			caso 1: escreva("A soma dos numeros inserido e: "+soma(n1,n2))
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */