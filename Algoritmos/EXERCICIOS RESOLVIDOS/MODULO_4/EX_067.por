programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	funcao inicio()
	{
		//variaveis
		inteiro num[4][5] 
		real soma=0., media
		
		//entradas
		escreva("---|| EXERCICIO 067 - MEDIA DE VALORES - MATRIZ ||---")
		escreva("\n\nSorteando valores da matriz")
		para(inteiro p=0;p<4;p++){
			escreva(".")
			u.aguarde(600)
		}
		escreva("PRONTO!!\n")

		//preencher valores da matriz e imprimir na tela para o usuario
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				num[l][c]=u.sorteia(1, 10)
				soma+=num[l][c]
				
				se(num[l][c]<10){
					escreva("0",num[l][c],"\t")
					u.aguarde(500)				
				}senao{
					escreva(num[l][c],"\t")	
				}
			}
			escreva("\n")
		}

		//Calculo da media dos valores gerados para a matriz
		media = (soma /(u.numero_linhas(num)*u.numero_colunas(num)))
		//imprimi o valor da media
		escreva("\n==============================================")
		escreva("\nO valor total da media do numeros e: ",media)
		escreva("\n==============================================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */