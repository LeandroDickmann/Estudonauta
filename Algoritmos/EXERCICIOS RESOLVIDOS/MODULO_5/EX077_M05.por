programa
{
	inclua biblioteca Util
	
	funcao cadeia primo(inteiro num){
		cadeia resp
		inteiro div=0
		para(inteiro i=1;i<=num;i++){
			se(num%i==0){
				div++
			}
		}
		se(div==2){
			resp=("O numero "+num+" E PRIMO!!")
		}senao{
			resp=("O numero "+num+" NAO E PRIMO")
		}
		
		retorne resp
	}

	
	funcao inicio()
	{
		inteiro num
		escreva("Digite um numero para saber se ele e primo: ")
		leia(num)
		escreva(primo(num))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 73; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 5, 29, 3}-{resp, 6, 9, 4}-{div, 7, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */