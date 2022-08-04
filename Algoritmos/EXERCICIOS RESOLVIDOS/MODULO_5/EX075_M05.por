programa
{
	
	inclua biblioteca Util--> u
	
	funcao inicio()
	{
		inteiro num[10]
		para(inteiro c=0;c<u.numero_elementos(num);c++){
			num[c]=u.sorteia(1, 10)
		}

		analisar(num)
	}

	funcao analisar(inteiro vetor[]){
		escreva("===== ANALISANDO O VETOR ======\n")
		escreva("O vetor possui "+ u.numero_elementos(vetor)+"\n")
		u.aguarde(500)
		escreva("Os elementos sao: \n")
		para(inteiro p=0;p<u.numero_elementos(vetor);p++){
			escreva("["+p+"]-> "+vetor[p]+"  ")
			u.aguarde(500)
		}
		
		//percorre o valor e imprime os valores pares
		escreva("\nValores pares nas posicoes: ")
		para(inteiro i=0;i<u.numero_elementos(vetor);i++){
			se(vetor[i]%2==0){
				escreva(i+" ")		
			}
		}

		escreva("\nValores impares nas posicoes: ")
		para(inteiro i=0;i<u.numero_elementos(vetor);i++){
			se(vetor[i]%2!=0){
				escreva(i+" ")
			}
		}
		
		
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 820; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 8, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */