programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		//variaveis
		inteiro num[4][4], soma=0

		//entradas
		escreva("----|| EXERCICIO 065 - SOMADOR COLUNAS ||----")
		escreva("\nO sistema ira sortear um conjunto de numeros...\n")

		//sorteio para preenchimento da matriz
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				num[l][c] = u.sorteia(1, 10)
			}
		}

		//imprimir os valores sorteados na tela em forma de tabela
		escreva("\nA MATRIZ gerada foi: \n\n")
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				se(num[l][c]<10){
					escreva("0",num[l][c],"\t")
					u.aguarde(400)	
				}senao{
					escreva(num[l][c],"\t")
					u.aguarde(400)
				}	
			}
			escreva("\n")
		}
		
		//saidas
		//somando valores das colunas e imprimindo para o usuario
		escreva("\n-------------------------------------------------------")
		para(inteiro c=0;c<u.numero_colunas(num);c++){
			escreva("\nSomando a coluna ",c, ": ")
			para(inteiro l=0;l<u.numero_linhas(num);l++){
				
				soma+=num[l][c]
				
				se(l == u.numero_linhas(num)-1){
					se(num[l][c]<10){
						escreva("0",num[l][c]," = ", soma)
						u.aguarde(400)
					}senao{
						escreva(num[l][c]," = ", soma)
						u.aguarde(400)
					}	
				}senao{
					se(num[l][c]<10){
						escreva("0",num[l][c]," + ")
						u.aguarde(400)	
					}senao{
						escreva(num[l][c]," + ")
						u.aguarde(400)
					}	
				}
			}
			soma=0
			escreva("\n")
		}
		escreva("\n\n\n-------------------FIM--------------------")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 521; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 8, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */