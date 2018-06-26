programa
{
		inclua biblioteca Util-->u
		inclua biblioteca Arquivos-->a
		inclua biblioteca Texto-->t
		inclua biblioteca Teclado
		cadeia nome
		cadeia end
		cadeia tel
		cadeia cpf
		inteiro opcao
		real temp
		cadeia linha
		logico fim = falso
	funcao inicio(){
		enquanto(nao fim){
			zeraForms()
			menuPrincipal()
		}
	}
	funcao zeraForms(){
			nome="a"
			end="a"
			tel="a"
			cpf="a"
	}
	funcao menuPrincipal(){
		limpa()
		escreveLinha()
		escreva("|Escolha uma das op��es abaixo?      |\n")
		escreveLinha()
		escreva("\n1 - Cadastrar Pessoa")
		escreva("\n2 - Consultar Pessoa")
		escreva("\n3 - Exibir Todas as Pessoas Cadastradas\n")
		escreva("4 - Apagar Todos os cadastros\n")
		escreva("5 - Sair do programa\n")
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
			limpa()
			escreva("Tem certeza, brother?\n1-Sim\n2-N�o\n")
			leia(opcao)
			escolha(opcao){
			caso 1:
				se(a.arquivo_existe("dados.txt")){
				apagaDados()
				pare
				}
				senao{limpa()
					escreva("O arquivo nem existe par�a!\n")
					u.aguarde(1500)
					limpa()
					menuPrincipal()
				pare
				}
			caso 2:
			retornaMenu()
			pare
			caso contrario:
			pare
			}
			caso 5:
			limpa()
			escreva("\nAt� mais!")
			Util.aguarde(1000)
			fim=verdadeiro
			pare
		}
	}
	funcao salvaEmTexto(){
		limpa()
		se(a.arquivo_existe("dados.txt")){
			inteiro arquivo = a.abrir_arquivo("dados.txt", Arquivos.MODO_ACRESCENTAR)
			a.escrever_linha(nome+";"+end+";"+tel+";"+cpf, arquivo)
			a.fechar_arquivo(arquivo)
		}
		senao{	
			inteiro arquivo = a.abrir_arquivo("dados.txt", a.MODO_ESCRITA)
			a.escrever_linha(nome+";"+end+";"+tel+";"+cpf, arquivo)
			a.fechar_arquivo(arquivo)	
		}
	}
	funcao escreveLinha(){
		escreva("--------------------------------------\n")
	}
	funcao cadastraPessoa(){
			limpa()
			escreveLinha()
			escreva("Digite o nome da pessoa:\n")
			leia(nome)
			escreva("Digite o endere�o:\n")
			leia(end)
			escreva("Digite o n�mero de telefone:\n")
			leia(tel)
			escreva("Digite o n�mero do cpf:\n")
			leia(cpf)
			escreveLinha()
			salvaEmTexto()
			escreva("Deseja adicionar mais um contato?\n")
			escreva("1-Sim\n2-N�o\n")
			leia(opcao)
			escolha(opcao){
				caso 1: cadastraPessoa()
				pare

				caso 2: menuPrincipal()
				pare 	
		}
		}
	funcao consultaPessoa(){
		limpa()
		cadeia numero
		cadeia palavra
		cadeia resultado
		inteiro texto
		escreva("Digite um par�metro para pesquisa(ex:Nome, End, Tel, CPF, etc...)\n")
		leia(palavra)
		 		se(a.arquivo_existe("dados.txt")){
		 			texto = a.abrir_arquivo("dados.txt", Arquivos.MODO_LEITURA)
		 
		
				faca{linha = a.ler_linha(texto)
					inteiro pesquisa = Texto.posicao_texto(palavra, linha, 0)
					se(pesquisa>-1){
					resultado = linha
					linha = t.substituir(resultado, ";", "\n")
					escreveLinha()
					escreva("Cadastro encontrado\n", linha, "\n")
			
					}
				}
	
				enquanto(nao a.fim_arquivo(texto))
					a.fechar_arquivo(texto)
		 		}
		 		senao{limpa()
		 			escreveLinha()
		 			escreva("|            N�o encontrado          |\n")
		 			escreveLinha()
		 		}
		 		
				u.aguarde(1500)
				limpa()
				escreva("\nDeseja consultar mais algum cadastro?\n")
				escreva("1-Sim\n2-N�o\n")
				leia(opcao)
				escolha(opcao){
					caso 1: consultaPessoa()
					pare
					caso 2: menuPrincipal()
					pare
		}
	}
	funcao exibeTodosCadastrados(){
		limpa()
		cadeia numero
		cadeia palavra
		cadeia resultado
			se(a.arquivo_existe("dados.txt")){inteiro texto = a.abrir_arquivo("dados.txt", Arquivos.MODO_LEITURA)
			faca{linha = a.ler_linha(texto)
			resultado = linha
			linha = t.substituir(resultado, ";", "\n")
			escreveLinha()
			escreva(linha, "\n")
			}
			enquanto(nao a.fim_arquivo(texto))
			a.fechar_arquivo(texto)
			retornaMenu()
			}
			senao{limpa()
				escreveLinha()
				escreva("|N�o existem dados a serem exibidos! |\n")
				escreveLinha()
				u.aguarde(3000)
				limpa()
				menuPrincipal()
			}
	}
	funcao retornaMenu(){
		escreva("Deseja retornar ao menu principal ou sair do programa?\n1-Retornar ao menu principal\n2-Sair do programa\n")
		leia(opcao)
		escolha(opcao){
			caso 1:
			menuPrincipal()
			pare
			caso 2:
			limpa()
			escreva("\nAt� mais!")
			Util.aguarde(1000)
			fim=verdadeiro
			pare
		}
	}
	funcao apagaDados(){
		limpa()
		a.apagar_arquivo("dados.txt")
		escreveLinha()
		escreva("|Dados apagados com sucesso!         |\n")
		escreveLinha()
		u.aguarde(3000)
		menuPrincipal()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @DOBRAMENTO-CODIGO = [20, 37, 26, 77, 90, 93, 117, 161, 186, 201];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */