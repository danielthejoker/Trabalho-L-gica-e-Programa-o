
programa
{
	funcao inicio()
	{
		real altura =0
		inteiro idade =0
		real soma_idade =0.0
		real soma_altura = 0.0
		inteiro alunos =0
		inteiro altoes =0
		escreva("Numero de alunos: ")
		leia(alunos)
		para(inteiro c=1; c<=alunos; c++){
			
			escreva("Altura do Aluno ",c,"� Aluno\n")	
			leia(altura)
			soma_altura = soma_altura + altura
			
			escreva("Idade do ",c,"� Aluno\n")
			leia(idade)
			se(altura>0){
			soma_idade = soma_idade + idade
			altoes++
			}
			escreva("\n")
		}
		se(altoes>0 e alunos>0){
		real Ma
		real Mi
		Ma = soma_altura/altoes
		escreva("M�dia de Altura: ",Ma)
		Mi = soma_idade/altoes
		escreva("\nM�dia das Idades: ",Mi)
		}
		

		
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 677; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
