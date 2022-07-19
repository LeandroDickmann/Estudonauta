programa {
    
    inclua biblioteca Util --> u
    inclua biblioteca Tipos --> t
    
    funcao inicio() {
    //variaveis
        inteiro num[4][5] , tiro_bom=1, bomba=0 , linha=0, coluna=0, acertou=0, errou=0, limpeza=0
        caracter tabela[4][5]
        cadeia teclado
    //entradas
        //prencher vetor num 
        para(inteiro l=0;l<u.numero_linhas(num);l++){
            para(inteiro c=0;c<u.numero_colunas(num);c++){
                num[l][c]=u.sorteia(0,1)
                tabela[l][c]='?'
            }
        }
        
        
        //mostrar painel inicial
        escreva("\n====||| EXERCICIO 068 - JOGO DE CAMPO MINADO |||====")
        escreva("\n\n   0_1_2_3_4")
        para(inteiro l=0;l<u.numero_linhas(num);l++){
            escreva("\n",l,"| ")
            para(inteiro c=0;c<u.numero_colunas(num);c++){
                escreva(tabela[l][c]," ")
            }
        }
        
        //looping para validar se o usuario errou 3 vez ou se acertou 5 vezes
        enquanto(verdadeiro){
            //o usuario ira escolher a posicao da linha e da coluna que quer jogar
            escreva("\n\nDigite na sequencia o numero da Linha e Coluna que quer jogar!\n")

            //demanda ao usuario a entrada de dado do tipo inteiro e valida se o numero e um inteiro e esta dentro dos limites da matriz para a LINHA
            enquanto(verdadeiro){
            	escreva("LINHA : ")
            	leia(teclado)
            	
            	se(t.cadeia_e_inteiro(teclado,10)==verdadeiro){
            		linha=t.cadeia_para_inteiro(teclado,10)
            		se(linha>=0 e linha<=u.numero_linhas(tabela)-1){
            			pare
            		}senao{
            			escreva("ERRO!! (O valor da linha deve estar entra 0 e ",u.numero_linhas(tabela)-1,") \n\n")
            		}
            	}senao{
            		escreva("\n------------|| ERRO ||---------------")
            		escreva("\nVoce nao digitou um numero valido INTEIRO")
            		escreva("\nTente NOVAMENTE!")
            		escreva("\n-------------------------------------")
            	}
            }

            //demanda ao usuario a entrada de dado do tipo inteiro e valida se o numero e um inteiro e esta dentro dos limites da matriz para a COLUNA
            enquanto(verdadeiro){	
            	escreva("COLUNA : ")
            	leia(teclado)

            	se(t.cadeia_e_inteiro(teclado, 10)==verdadeiro){
            		coluna=t.cadeia_para_inteiro(teclado, 10)
            		se(coluna>=0 e coluna<=u.numero_colunas(tabela)-1){
            			pare
            		}senao{
            			escreva("ERRO!! (O valor da coluna deve estar entra 0 e ",u.numero_colunas(tabela)-1,") \n\n")
            		}
            	}senao{
            		escreva("\n------------|| ERRO ||---------------")
            		escreva("\nVoce nao digitou um numero valido INTEIRO")
            		escreva("\nTente NOVAMENTE!")
            		escreva("\n-------------------------------------")
            	}
            }
            
            limpa()
            escreva("\n====||| EXERCICIO 068 - JOGO DE CAMPO MINADO |||====")
        //saidas
            // imprimir a tabela com a escolha do usuario
            escreva("\n\n   0_1_2_3_4")
            para(inteiro l=0;l<u.numero_linhas(num);l++){
                escreva("\n",l,"| ")
                para(inteiro c=0;c<u.numero_colunas(num);c++){
                  se(linha==l e coluna==c){
                      se(num[l][c]==0){
                            tabela[l][c]='V'
                            escreva(tabela[l][c]," ")
                            acertou++
                      }senao{
                            tabela[l][c]='X'
                            escreva(tabela[l][c]," ")
                            errou++
                      }
                  }senao{
                      escreva(tabela[l][c]," ")
                  }
                }
            }
            se(acertou>3 ou errou>2){
            	pare
            }
        }   
        
        //imprimir uma mensagem de vitoria se o usuario acertou mais de 5 vezes, ou imprimir uma mensagem de derrota se o usuario errou 3 vezes
        se(acertou>3){
            escreva("\n\nPARABENS!! VOCE GANHOU acertando 4 vezes e saindo ileso!!")
        }senao{
            escreva("\n\nVOCE PERDEU!!Voce ACERTOU 03 CAMPOS MINADOS!")
        }

        escreva("\n\n\n--------------------||  FIM  ||--------------------------")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3978; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 8, 16, 3}-{coluna, 8, 59, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */