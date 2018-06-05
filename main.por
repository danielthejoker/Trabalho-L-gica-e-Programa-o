
 //https://www.youtube.com/watch?v=K02TnB3IGnQ&list=PLb9yvNDCid3jQAEbNoPHtPR0SWwmRSM-t

 programa
{
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		
		cadeia caminho_do_arquivo = "C:/Users/Daniel/.portugol/dados.txt"
		inteiro dados = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)
		cadeia linha1 = a.ler_linha(dados)
		cadeia linha2 = a.ler_linha(dados)
		cadeia linha3 = a.ler_linha(dados)
		a.fechar_arquivo(dados)
		escreva("Linha 1: ", linha1, "\n")
		escreva("Linha 2: ", linha2, "\n")
		escreva("Linha 3: ", linha3, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 87; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */