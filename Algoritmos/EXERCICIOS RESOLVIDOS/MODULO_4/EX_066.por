programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	funcao inicio()
	{
		//variaveis
		inteiro num[3][3], maior=0
		cadeia teclado

		//entradas
		escreva("-----|| EXERCICIO 066 - ANALISE DE MATRIZ 3X3 ||-----")
		escreva("\nInsira manualmente valores de 1 a 10 nas posicoes da matriz!\n\n")

		//preenchimento da matriz pelo usuario
		para(inteiro l=0;l<u.numero_linhas(num);l++){
			para(inteiro c=0;c<u.numero_colunas(num);c++){
				//validacao do numero inserido pelo usuario( deve ser um numero inteiro entre 1 e 10)
				enquanto(verdadeiro){
				escreva("Digite o valor para a posicao [",l,"] [",c,"] : ")
				leia(teclado)
					se(t.cadeia_e_inteiro(teclado,10) == verdadeiro){
						se(t.cadeia_para_inteiro(teclado, 10)>=1 e t.cadeia_para_inteiro(teclado,10)<=10){
							num[l][c]= t.cadeia_para_inteiro(teclado,10)
							pare
						}senao{
							escreva("\n=======================================")
							escreva("\nVoce nao digitou um numero VALIDO!")
							escreva("\nO numero deve ser um INTEIRO de 1 a 10.")
							escreva("\nTente NOVAMENTE!")
							escreva("\n======================================\n\n")	
						}
					}senao{
						escreva("\n=======================================")
						escreva("\nVoce nao digitou um numero VALIDO!")
						escreva("\nO numero deve ser um INTEIRO de 1 a 10.")
						escreva("\nTente NOVAMENTE!")
						escreva("\n======================================\n\n")
					}
				
				}
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
 * @POSICAO-CURSOR = 129; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */