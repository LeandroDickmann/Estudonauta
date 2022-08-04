programa
{ 
	inclua biblioteca Util-->u

	/*funcao inteiro preencher_vetor(inteiro num[]){
		para(inteiro i=0;i<u.numero_elementos(num);i++){
			num[i]=u.sorteia(1, 50)
		}
		
		retorne num[]
	}

	*/

	funcao inteiro maior(inteiro num[]){
		
		inteiro maior_num=0
		para(inteiro i=0;i<u.numero_elementos(num);i++){
			se(num[i]>maior_num){
				maior_num=num[i]
			}
		}
		retorne maior_num
	}

	funcao vazio sorteado(inteiro num[]){
		para(inteiro i=0;i<u.numero_elementos(num);i++){
			num[i]=u.sorteia(1, 50)
		}
		escreva("FIM\n")
	}

	funcao vazio imprimir(inteiro num[]){
		escreva("Os valores dos vetores sao: \n")
		para(inteiro p=0;p<u.numero_elementos(num);p++){
			escreva(num[p]+" - ")
			u.aguarde(500)
		}
		escreva("FIM\n")
	}
	
	funcao inicio()
	{
		inteiro num[5]
		
		sorteado(num)
		imprimir(num)
		
		escreva("O maior valor que eu encontrei no vetor foi "+maior(num)+"\n\n")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 738; 
 * @DOBRAMENTO-CODIGO = [14, 25];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */