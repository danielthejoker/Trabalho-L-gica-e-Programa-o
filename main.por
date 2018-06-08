programa
{
		inclua biblioteca Util
		inclua biblioteca Arquivos --> a
		inclua biblioteca Texto --> t
		
		cadeia nome[2]
		cadeia end[2]
		real tel[2]
		real cpf[2]
		inteiro opcao
		real temp
		cadeia cache
		cadeia linha
	funcao inicio()
	{	
		zeraArrays()
		menuPrincipal()
		
		se (a.arquivo_existe("cache.txt")) {
			//inteiro arquivo = a.abrir_arquivo("cache.txt", Arquivos.MODO_LEITURA)
			//linha=a.ler_linha(arquivo)
			//escreva(linha)
		}

		inteiro arquivo = a.abrir_arquivo("teste.txt", Arquivos.MODO_ESCRITA)

		para (inteiro i=0; i < 10; i++) {
			a.escrever_linha("testando linha " + (nome[i]) + "\n", arquivo)
		}
		
		
		
	}
	funcao zeraArrays(){
		para(inteiro i=0;i<2;i++){
			nome[i]="a"
			end[i]="a"
			tel[i]=0.0
			cpf[i]=0.0
			
		}
	}
	funcao menuPrincipal(){
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
			caso 4:escreva("Até mais!")
			Util.aguarde(1000)
			pare
		}
	}
	funcao escreveLinha(){
		escreva("--------------------------------------\n")
	}
	funcao cadastraPessoa(){
		
		para(inteiro i=0;i<2;i++){
			limpa()
			escreveLinha()
			escreva("Digite o nome da pessoa ",i+1,": \n")
			leia(nome[i])
			escreva("Digite o endereço: \n")
			leia(end[i])
			escreva("Digite o número de telefone: \n")
			leia(tel[i])
			escreva("Digite o número do cpf: \n")
			leia(cpf[i])
			escreveLinha()
			
			
		}
		retornaMenu()
		
	}
	funcao consultaPessoa(){
		real numero
		escreva("Escolha a forma de pesquisa\n")
		escreva("1- Para inserir CPF\n2- Para inserir número de telefone\n")
		leia(opcao)
		escolha(opcao){
			caso 1:leia(numero)
			para(inteiro i=0;i<2;i++){
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
			para(inteiro i=0;i<2;i++){
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
		para(inteiro i=0;i<2;i++){
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
			pare
		}
	}
}
