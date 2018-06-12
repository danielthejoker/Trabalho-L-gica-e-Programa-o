programa
{
		inclua biblioteca Util-->u
		inclua biblioteca Arquivos-->a
		cadeia nome[4]
		cadeia end[4]
		real tel[4]
		real cpf[4]
		inteiro opcao
		real temp
		cadeia linha
		logico fim = falso
	funcao inicio()
	{	faca{
		menuPrincipal()
		salvaEmTexto()
		fim=verdadeiro
	}
		enquanto(nao fim)
	}
	funcao zeraArrays(){
		para(inteiro i=0;i<4;i++){
			nome[i]="a"
			end[i]="a"
			tel[i]=0.0
			cpf[i]=0.0
			
		}
	}
	funcao menuPrincipal(){
		limpa()
		zeraArrays()
		escreveLinha()
		escreva("|Escolha uma das opções abaixo?      |\n")
		escreveLinha()
		escreva("\n1 - Cadastrar Pessoa")
		escreva("\n2 - Consultar Pessoa")
		escreva("\n3 - Exibir Todas as Pessoas Cadastradas\n")
		escreva("4 - Sair do programa\n")
		leia(opcao)
		escolha(opcao){
			caso 1:
			cadastraPessoa()
			pare
			caso 2:
			consultaPessoa()
			pare
			caso 3:
			exibeTodosCadastrados()
			caso 4:
			pare
		}
	}
	funcao salvaEmTexto(){
		limpa()
		se(a.arquivo_existe("dados.txt")){
			inteiro arquivo = a.abrir_arquivo("dados.txt", Arquivos.MODO_ACRESCENTAR)
			para (inteiro i=0; i < 4; i++) {
			se(nome[i]=="a")a.escrever_linha(nome[i]+";"+end[i]+";"+tel[i]+";"+cpf[i], arquivo)
			}
			a.escrever_linha("\n", arquivo)
		}
		senao{	
			inteiro arquivo = a.abrir_arquivo("dados.txt", a.MODO_ESCRITA)
			para (inteiro i=0; i < 4; i++) {
			se(nome[i]=="a")a.escrever_linha(nome[i]+";"+end[i]+";"+tel[i]+";"+cpf[i], arquivo)
			}
			a.escrever_linha("\n", arquivo)	
		}
	}
	funcao escreveLinha(){
		escreva("--------------------------------------\n")
	}
	funcao cadastraPessoa(){
		
		se(nao fim){para(inteiro i=0;i<4;i++){
			limpa()
			escreveLinha()
			escreva("Digite o nome da pessoa ",i+1,": \n")
			se(nome[i]=="a"){leia(nome[i])}
			escreva("Digite o endereço: \n")
			se(end[i]=="a"){leia(end[i])}
			escreva("Digite o número de telefone: \n")
			se(tel[i]==0){leia(tel[i])}
			escreva("Digite o número do cpf: \n")
			se(cpf[i]==0){leia(cpf[i])}
			escreveLinha()
			escreva("Deseja adicionar mais um contato\n")
			escreva("1-Sim\n 2-Não\n")
			leia(opcao)
			escolha(opcao){
				caso 1: cadastraPessoa()
				limpa()
				pare

				caso 2: retornaMenu()
				limpa()
				pare 
				
			}
			
			
			
		}
		}
	}
	funcao consultaPessoa(){
		limpa()
		real numero
		escreva("Escolha a forma de pesquisa\n")
		escreva("1- Para inserir CPF\n2- Para inserir número de telefone\n")
		leia(opcao)
		escolha(opcao){
			caso 1:leia(numero)
			para(inteiro i=0;i<4;i++){
			se(numero==cpf[i]){
				escreveLinha()
				escreva("\nCadastro Encontrado:\n")
				escreva(nome[i],"\n", cpf[i], "\n", tel[i], "\n", end[i], "\n")
				escreveLinha()
					}
				}
				retornaMenu()
			pare
			caso 2:leia(numero)
			para(inteiro i=0;i<4;i++){
					se(numero==tel[i]){
						escreveLinha()
							escreva(nome[i],"\n", cpf[i], "\n", tel[i], "\n", end[i], "\n")
							escreveLinha()
						}
				}
				retornaMenu()
				pare
		}
		
	}
	funcao exibeTodosCadastrados(){
		limpa()
		para(inteiro i=0;i<4;i++){
			escreveLinha()
			escreva("\n",nome[i], "\n", cpf[i], "\n", end[i], "\n", tel[i], "\n")
			escreveLinha()
		}
		retornaMenu()
	}
	funcao retornaMenu(){
		escreva("Deseja retornar ao menu principal ou sair do programa?\n 1-Retornar ao menu principal \n 2-Sair do programa\n")
		leia(opcao)
		escolha(opcao){
			caso 1:
			menuPrincipal()
			pare
			caso 2:
			escreva("\nAté mais!")
			Util.aguarde(1000)
			fim=verdadeiro
			
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1566; 
 * @DOBRAMENTO-CODIGO = [12, 20, 29, 53, 70, 106, 137, 146];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {fim, 12, 9, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */