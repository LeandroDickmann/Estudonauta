programa {
    
    inclua biblioteca Util --> u
    
    funcao inicio() {
    //variaveis
        inteiro num[4][5] , tiro_bom=1, bomba=0 , linha, coluna, acertou=0, errou=0
        caracter tabela[4][5]
    //entradas
        //prencher vetor num 
        para(inteiro l=0;l<u.numero_linhas(num);l++){
            para(inteiro c=0;c<u.numero_colunas(num);c++){
                num[l][c]=u.sorteia(0,1)
                tabela[l][c]='?'
            }
        }
        
        
        //mostrar painel inicial
        escreva("\n====||| JOGO DE BATALHA NAVAL |||====")
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
            escreva("\n\nDigite na sequencia o numero da Linha e Coluna que quer jogar!")
            escreva("\nLINHA : ")
            leia(linha)
            escreva("COLUNA : ")
            leia(coluna)
            
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
            escreva("\n\nPARABENS!! VOCE GANHOU acertando 4 vezes!!")
        }senao{
            escreva("\n\nVOCE PERDEU!!Voce acertou 3 navios ERRADOS!")
        }

        escreva("\n\n\n--------------------||  FIM  ||--------------------------")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 7, 16, 3}-{acertou, 7, 65, 7}-{errou, 7, 76, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */