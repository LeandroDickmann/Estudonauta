programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		//variaveis
		inteiro num[4][5], ocorrencia=0 
		real soma=0., media, maior_qmedia 
		
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
		escreva("\nO valor total da media do numeros e: ",m.arredondar(media, 2))
		escreva("\n==============================================")

		//teste para verificar se ha numeros ACIMA DA MEDIA na SEGUNDA LINHA
		para(inteiro c=0;c<u.numero_colunas(num);c++){
			se(num[1][c]>media){
				ocorrencia++
			}
		}
		
		//imprimir os valores acima da media na SEGUNDA LINHA, e suas respectivas posicoes ou uma mensagem que nao ha numero acima da media
		se(ocorrencia>0){
			ocorrencia=0
			escreva("\nNa segunda linha, os valores acima da media sao: ")
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				se(num[1][c] > media){
					escreva("\n[1] ["+c+"] = "+num[1][c])
					ocorrencia++
				}
			}
			escreva("\nTOTAL = "+ocorrencia+" ocorrencia(s).")
			ocorrencia=0
		}senao{
			escreva("\nNao houve ocorrencia de numero ACIMA DA MEDIA na linha 02!!")
		}
		escreva("\n-----------------------------------------------")

		//teste para verificar se ha numeros ABAIXO DA MEDIA na TERCEIRA COLUNA
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			se(num[l][2]<media){
				ocorrencia++
			}
		}
		
		//imprimir os valores da TERCEIRA COLUNA que estao ABAIXO DA MEDIA, e suas respectivas posicoes, ou uma mensaagem que nao ha numero abaixo da media
		se(ocorrencia>0){
			ocorrencia=0
			escreva("\nNa terceira coluna, os valores abaixo da media sao: ")
			para(inteiro l=0;l<u.numero_linhas(num);l++){
				se(num[l][2]<media){
					escreva("\n["+l+"] [2] = "+num[l][2])
					ocorrencia++
				}
			}
			escreva("\nTOTAL = "+ocorrencia+" ocorrencia(s)")
			ocorrencia=0
		}senao{
			escreva("\nNao houve ocorrencia de numero ABAIXO DA MEDIA na coluna 03!!")
		}

		escreva("\n----------------------------------------------")


		escreva("\n\n\n================= FIM ========================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1097; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */