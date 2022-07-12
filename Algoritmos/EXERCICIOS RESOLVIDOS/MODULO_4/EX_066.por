programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		//variaveis
		inteiro num[2][2], maior=0

		//entradas
		escreva("-----|| EXERCICIO 066 - ANALISE DE MATRIZ 3X3 ||-----")
		escreva("\nInsira manualmente valores de 1 a 10 nas posicoes da matriz!\n\n")

		//preenchimento da matriz pelo usuario
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				escreva("Digite o valor para a posicao [",l,"] [",c,"] : ")
				leia(num[l][c])
			}
		}
		escreva("\n\n")
		//mostrar ao usuario a sequencia digitada,e comparar o maior valor
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				escreva(num[l][c]," »» ")
				u.aguarde(500)
				se(num[l][c]>maior){
					maior=num[l][c]
				}
			}
		}

		//efeito visual de analisa do hifen...
		para(inteiro p=0;p<4;p++){
			escreva("-")
			u.aguarde(2000)
		}
		escreva(" ANALISADO!!")
		u.aguarde(1000)

		//mostrar o maior numero
		escreva("\n\n--------------------------------------")
		escreva("\nO maior numero encontrado foi : ",maior)
		escreva("\n--------------------------------------\n")

		//analisar os numeros na matriz e mostrar em quais posicoes se encontra o maior numero
		escreva("\nO valor ",maior," foi encontrado nas seguintes posicao(oes): \n")
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				se(num[l][c] == maior){
					escreva("[",l,"] [",c,"] -> ")
				}
			}
		}
		escreva(" FIM")

		escreva("\n\n\n-------------------- || FIM || -------------------------")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1505; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 7, 10, 3}-{maior, 7, 21, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */