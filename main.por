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
		escreva("|Escolha uma das opções abaixo?      |\n")
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
			apagaDados()
			caso 5:
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
			escreva("Digite o endereço:\n")
			leia(end)
			escreva("Digite o número de telefone:\n")
			leia(tel)
			escreva("Digite o número do cpf:\n")
			leia(cpf)
			escreveLinha()
			salvaEmTexto()
			escreva("Deseja adicionar mais um contato?\n")
			escreva("1-Sim\n2-Não\n")
			leia(opcao)
			escolha(opcao){
				caso 1: cadastraPessoa()
				limpa()
				pare

				caso 2: menuPrincipal()
				limpa()
				pare 	
		}
		}
	funcao consultaPessoa(){
		limpa()
		cadeia numero
		cadeia palavra
		cadeia resultado
		escreva("Escolha a forma de pesquisa\n")
		escreva("Digite:\n1-Para pesquisa por Nome ou Endereço\n2-Para pesquisa por Telefone ou CPF\n")
		leia(opcao)
		inteiro texto
		escolha(opcao){
		caso 1: leia(palavra)
		 texto = a.abrir_arquivo("dados.txt", Arquivos.MODO_LEITURA)
		
		faca{linha = a.ler_linha(texto)
		inteiro pesquisa = Texto.posicao_texto(palavra, linha, 0)
		se(pesquisa>-1){
			resultado = linha
			linha = t.substituir(resultado, ";", "\n")
			escreveLinha()
			escreva("Cadastro encontrado\n", linha, "\n")
			pare
			
		}
		}
		enquanto(nao a.fim_arquivo(texto))
		a.fechar_arquivo(texto)
		
		pare
		caso 2: leia(numero)
	     texto = a.abrir_arquivo("dados.txt", Arquivos.MODO_LEITURA)
		
		faca{linha = a.ler_linha(texto)
		inteiro pesquisa = Texto.posicao_texto(numero, linha, 0)
		se(pesquisa>-1){
			resultado = linha
			linha = t.substituir(resultado, ";", "\n")
			escreveLinha()
			escreva("\nCadastro encontrado\n", linha, "\n")
			
			pare	
		}
		}
		enquanto(nao a.fim_arquivo(texto))
		a.fechar_arquivo(texto)
		
		pare
		}
		escreveLinha()
		escreva("\nDeseja consultar mais algum cadastro?\n")
		escreva("1-Sim\n2-Não")
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
			inteiro texto = a.abrir_arquivo("dados.txt", Arquivos.MODO_LEITURA)
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
	funcao retornaMenu(){
		escreva("Deseja retornar ao menu principal ou sair do programa?\n1-Retornar ao menu principal\n2-Sair do programa\n")
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
	funcao apagaDados(){
		limpa()
		a.apagar_arquivo("dados.txt")
		escreva("Dados apagados com sucesso!")
		retornaMenu()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 725; 
 * @DOBRAMENTO-CODIGO = [53, 66, 69, 95, 155];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */