<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/doc">
<html>
	<head>
		<title>.:. Paciente cadastrado com sucesso .:. Projeto Neural TB .:.</title>
	</head>
	<body>
		<center>
		<table border="0">
		
		<tr>
			<td><center><font size="5" > Paciente Cadastrado </font></center></td>
		</tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		</table>

		<table align="center" id="dadosPaciente" border="0" cellpadding="0" cellspacing="0" width="90%">
			<tr bgcolor="#8888BB">
				<td align="right" >N�mero Paciente: </td>
				<td ><xsl:value-of select ="paciente[last()]/numeroPaciente" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right" >Endere�o: </td>
				<td><xsl:value-of select ="paciente[last()]/logradouro" />,
					<xsl:value-of select ="paciente[last()]/numero" />
					<xsl:if test="paciente[last()]/complemento != ''">
					&#160;/(<xsl:value-of select ="paciente[last()]/complemento" />)</xsl:if> -
					<xsl:value-of select ="paciente[last()]/estadoEndereco" />- 
					<xsl:value-of select ="paciente[last()]/municipioEndereco" />- 
					<xsl:value-of select ="paciente[last()]/bairroEndereco" /> 
					<xsl:if test="paciente[last()]/cep != ''">
					&#160; - (<xsl:value-of select ="paciente[last()]/cep" />)</xsl:if>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Telefone(s): </td>
				<td><xsl:if test="paciente[last()]/telefone1 != ''">
						(<xsl:value-of select = "paciente[last()]/telefone1" />)
					</xsl:if>
					<xsl:if test="paciente[last()]/telefone2 != ''">
						(&#160;e <xsl:value-of select= "paciente[last()]/telefone2" />)
					</xsl:if>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Georreferenciamento: </td>
				<td>
					<xsl:if test="paciente[last()]/latitude != ''">
					<table border="0">
						<tr>
							<td>Latitude: <xsl:value-of select="paciente[last()]/latitude" /></td>
						</tr>
					</table>
					</xsl:if>
					<xsl:if test="paciente[last()]/longitude != ''">
					<table border="0">
							<tr>
								<td>Longitude: <xsl:value-of select="paciente[last()]/latitude" /></td>
							</tr>
					</table>
					</xsl:if>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Data de nascimento: </td>
				<td><xsl:value-of select="paciente[last()]/txt_diaNascimento"/>&#160;/&#160;<xsl:value-of select="paciente[last()]/txt_mesNascimento"/>&#160;/&#160;<xsl:value-of select="paciente[last()]/txt_anoNascimento"/></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Sexo: </td>
				<td><xsl:value-of select="paciente[last()]/sexo" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Estado Civil: </td>
				<td><xsl:value-of select="paciente[last()]/estadoCivil" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Estuda: </td>
				<td><xsl:value-of select="paciente[last()]/estudaMomento" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Grau de Instru��o: </td>
				<td><xsl:value-of select="paciente[last()]/grauInstrucao" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Ocupa��o: </td>
				<td><xsl:value-of select="paciente[last()]/ocupacao" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Profissional Sa�de: </td>
				<td><xsl:value-of select="paciente[last()]/profissionalSaude" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Atividade: </td>
				<td><xsl:value-of select="paciente[last()]/atividadeTrabalho" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Renda familiar: </td>
				<td><xsl:value-of select="paciente[last()]/rendaFamiliarAtual" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Renda familiar a cerca de dis anos: </td>
				<td><xsl:value-of select="paciente[last()]/rendaFamiliarPassado" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Grau de intru��o do chefe de fam�lia: </td>
				<td><xsl:value-of select="paciente[last()]/grauInstrucaoChefe" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Quantidade de itens que tem em casa: </td>
				<td>
					<table border="0">
						<tr>
							<td>Aspirador de p�: <xsl:value-of select="paciente[last()]/aspiradorPo" />&#160;</td>
						</tr>
						<tr>
							<td>Autom�vel: <xsl:value-of select="paciente[last()]/automovel" />&#160;</td>
						</tr>
						<tr>
							<td>Banheiro: <xsl:value-of select="paciente[last()]/banheiro" />&#160;</td>
						</tr>
						<tr>
							<td>Empregada: <xsl:value-of select="paciente[last()]/empregada" />&#160;</td>
						</tr>
						<tr>
							<td>Freezer: <xsl:value-of select="paciente[last()]/freezer" />&#160;</td>
						</tr>
						<tr>
							<td>Geladeira Duplex: <xsl:value-of select="paciente[last()]/geladeiraDuplex" />&#160;</td>
						</tr>
						<tr>
							<td>Geladeira Simples: <xsl:value-of select="paciente[last()]/geladeiraSimples" />&#160;</td>
						</tr>
						<tr>
							<td>M�quina de lavar roupa: <xsl:value-of select="paciente[last()]/maquinaLavar" />&#160;</td>
						</tr>
						<tr>
							<td>R�dio: <xsl:value-of select="paciente[last()]/radio" />&#160;</td>
						</tr>
						<tr>
							<td>Tv: <xsl:value-of select="paciente[last()]/tv" />&#160;</td>
						</tr>
						<tr>
							<td>DVD/video cassete: <xsl:value-of select="paciente[last()]/dvd" />&#160;</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Naturalidade: </td>
				<td><xsl:value-of select="paciente[last()]/cidadeNaturalidade" />
					<xsl:value-of select="paciente[last()]/estadoNaturalidade" />
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">H� quanto tempo mora no endere�o atual: </td>
				<td><xsl:value-of select="paciente[last()]/tempoEnderecoAtual" /> meses</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Morou em outro endere�o: </td>
				<td><xsl:value-of select="paciente[last()]/morouOutro" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Quantas pessoas moram no domic�lio: </td>
				<td><xsl:value-of select="paciente[last()]/numeroPessoas" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Quantos c�modos: </td>
				<td><xsl:value-of select="paciente[last()]/numeroComodos" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Quantos c�modos utilizados como dormit�rio: </td>
				<td><xsl:value-of select="paciente[last()]/numeroDormitorios" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Ex-morador de rua: </td>
				<td><xsl:value-of select="paciente[last()]/moradorRua" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Ex-morador/morador de asilo: </td>
				<td><xsl:value-of select="paciente[last()]/moradorAsilo" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Ex-detento: </td>
				<td><xsl:value-of select="paciente [last()]/exDetento" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Em rela��o ao h�bito de fumar: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente[last()]/habitoFumar" /></td>
					</tr>
					<xsl:if test="paciente[last()]/inalaFumaca != ''">
					<tr>
						<td>(&#160;Inala fuma�a: <xsl:value-of select="paciente[last()]/inalaFumaca" />)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/tempoParouDias != ''">
					<tr>
						<td>(&#160;Parou h� <xsl:value-of select="paciente[last()]/tempoParouDias" />&#160;dias)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/tempoParouMeses != ''">
					<tr>
						<td>(&#160;Parou h� <xsl:value-of select="paciente[last()]/tempoParouMeses" />&#160;meses)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/tempoParouAnos != ''">
					<tr>
						<td>(&#160;Parou h� <xsl:value-of select="paciente[last()]/tempoParouAnos" />&#160;anos)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/cigarrosDia != ''">
					<tr>	
						<td>(&#160;N�mero de cigarros por dia: <xsl:value-of select="paciente[last()]/cigarrosDia" />)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/anosFuma != ''">
					<tr>
						<td>(&#160;H� quanto tempo fuma: <xsl:value-of select="paciente[last()]/anosFuma" />&#160;anos)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/cargaTabagica != ''">
					<tr>
						<td>(&#160;Carga tab�gica: <xsl:value-of select="paciente[last()]/cargaTabagica" />&#160;cigarros por ano)</td>
					</tr>
					</xsl:if>
					</table>		
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Usu�rio/ex-usu�rio de drogas: </td>
				<td><xsl:value-of select="paciente [last()]/usuarioDrogas" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Bebida preferida: </td>
				<td><xsl:value-of select="paciente [last()]/bebidaPreferida" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Toma bebida alco�lica:  </td>
				<td><table border="0">
					<xsl:if test="paciente[last()]/tomaBebida != ''">
					<tr>
						<td>(&#160;Pacilidade para fazer amizades: <xsl:value-of select="paciente[last()]/tomaBebida" />)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/deveriaDiminuir != ''">
					<tr>
						<td>(&#160;J� sentiu que deveria beber menos: <xsl:value-of select="paciente[last()]/deveriaDiminuir" />)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/recebeuCritica != ''">
					<tr>
						<td>(&#160;J� recebeu cr�ticas: <xsl:value-of select="paciente[last()]/recebeuCritica" />)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/bebeManha != ''">
					<tr>
						<td>(&#160;Bebe de manh� para diminuir o nervosismo/ressaca: <xsl:value-of select="paciente[last()]/bebeManha" />)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/senteCulpa != ''">
					<tr>
						<td>(&#160;Sente-se culpado: <xsl:value-of select="paciente[last()]/senteCulpa" />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Morou com algu�m com tuberculose: </td>
				<td><table border="0">
					<xsl:if test="paciente[last()]/quantoTempoContato != ''">
					<tr>
						<td>(&#160;H� quanto tempo foi o contato: <xsl:value-of select="paciente[last()]/quantoTempoContato " />&#160;meses)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/horasSemanaisContato != ''">
					<tr>
						<td>(&#160;Por quanto tempo foi o contato: <xsl:value-of select="paciente[last()]/horasSemanaisContato " />&#160;horas)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Teve algu�m da fam�lia com tuberculose: </td>
				<td><table broder="0">
					<xsl:if test="paciente[last()]/quantoTempoContato != ''">
					<tr>
						<td>(&#160;H� quanto tempo foi o contato: <xsl:value-of select="paciente[last()]/quantoTempoContato " />&#160;meses)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/horasSemanaisContato != ''">
					<tr>
						<td>(&#160;Por quanto tempo foi o contato: <xsl:value-of select="paciente[last()]/horasSemanaisContato " />&#160;horas)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Teve algu�m de ciclo amizade/trabalho com tuberculose: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/trabalhoTuberculose" /></td>
					</tr>
					<xsl:if test="paciente[last()]/quantoTempoContato != ''">
					<tr>
						<td>(&#160;H� quanto tempo foi o contato: <xsl:value-of select="paciente[last()]/quantoTempoContato " />&#160;meses)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/horasSemanaisContato != ''">
					<tr>
						<td>(&#160;Por quanto tempo foi o contato: <xsl:value-of select="paciente[last()]/horasSemanaisContato " />&#160;horas)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Teve tuberculose: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/teveTuberculose" /></td>
					</tr>
					<xsl:if test="paciente[last()]/quantosAnos != ''">
					<tr>
						<td>(&#160;H� <xsl:value-of select="paciente[last()]/quantosAnos" /> anos)</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/tratamento != ''">
					<tr>
						<td>(&#160;Tratamento: 
						<xsl:if test="paciente[last()]/tratamento != ''">
							<xsl:value-of select="paciente[last()]/tratamento " />
						</xsl:if>
						<xsl:if test="paciente[last()]/outroTratamento != ''">
							<xsl:value-of select="paciente[last()]/outroTratamento " />
						</xsl:if>)
						</td>
					</tr>
					</xsl:if>
					<xsl:if test="paciente[last()]/desfecho != ''">
					<tr>
						<td>(&#160;Desfecho: <xsl:value-of select="paciente[last()]/desfecho " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Riscos para TB MDR: </td>
				<td><xsl:value-of select="paciente [last()]/riscoTbMdr" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Cicatriz BCG: </td>
				<td><xsl:value-of select="paciente [last()]/cicatrizBcg" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Internado nos �ltimos 2 anos: </td>
				<td><xsl:value-of select="paciente [last()]/internadoUltimosAnos" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Co-morbidades: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/comorbidades" /></td>
					</tr>
					<tr>
						<td>(Quais: 
							<xsl:if test="paciente[last()]/transplantes != ''">
								<xsl:value-of select="paciente[last()]/transplantes"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/imunossupressor != ''">
								, <xsl:value-of select="paciente[last()]/imunossupressor"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/diabetes != ''">
								, <xsl:value-of select="paciente[last()]/diabetes"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/imunossupressor != ''">
								, <xsl:value-of select="paciente[last()]/imunossupressor"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/sarcoidose != ''">
								, <xsl:value-of select="paciente[last()]/sarcoidose"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/silicose != ''">
								, <xsl:value-of select="paciente[last()]/silicose"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/ulcera != ''">
								, <xsl:value-of select="paciente[last()]/ulcera"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/rcu != ''">
								, <xsl:value-of select="paciente[last()]/rcu"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/doencaHepaticaCronica != ''">
								, <xsl:value-of select="paciente[last()]/doencaHepaticaCronica"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/insuficienciaRenalCronica != ''">
								, <xsl:value-of select="paciente[last()]/insuficienciaRenalCronica"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/cancer != ''">
								, <xsl:value-of select="paciente[last()]/cancer"/>
							</xsl:if>							
							<xsl:if test="paciente[last()]/infeccaoHiv != ''">
								, <xsl:value-of select="paciente[last()]/infeccaoHiv"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/dpoc != ''">
								, <xsl:value-of select="paciente[last()]/dpoc"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/asmaBronquica != ''">
								, <xsl:value-of select="paciente[last()]/asmaBronquica"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/outras != ''">
								, <xsl:value-of select="paciente[last()]/outras"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/quaisComorbidadesOutras != ''">
								, <xsl:value-of select="paciente[last()]/quaisComorbidadesOutras"/>
							</xsl:if>
							<xsl:if test="paciente[last()]/nenhumaAlteracao != ''">
								, <xsl:value-of select="paciente[last()]/nenhumaAlteracao"/>
							</xsl:if>)
						</td>
					</tr>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Sinais e Sintomas: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/sinaisSintomas" /></td>
					</tr>
					<xsl:if test="paciente[last()]/sinais ='Sim'">
					<tr>
						<td>(Quais:	
							<xsl:if test="paciente[last()]/tosse != ''">
								<xsl:value-of select="paciente[last()]/tosse " />
							</xsl:if>
							<xsl:if test="paciente[last()]/expectoracao != ''">
								<xsl:value-of select="paciente[last()]/expectoracao " />
							</xsl:if>
							<xsl:if test="paciente[last()]/hemoptise != ''">
								<xsl:value-of select="paciente[last()]/hemoptise " />
							</xsl:if>
							<xsl:if test="paciente[last()]/escarro != ''">
								<xsl:value-of select="paciente[last()]/escarro " />
							</xsl:if>
							<xsl:if test="paciente[last()]/dor != ''">
								<xsl:value-of select="paciente[last()]/dor " />
							</xsl:if>
							<xsl:if test="paciente[last()]/febre != ''">
								<xsl:value-of select="paciente[last()]/febre " />
							</xsl:if>
							<xsl:if test="paciente[last()]/sudorese != ''">
								<xsl:value-of select="paciente[last()]/sudorese " />
							</xsl:if>
							<xsl:if test="paciente[last()]/hiporexia != ''">
								<xsl:value-of select="paciente[last()]/hiporexia " />
							</xsl:if>
							<xsl:if test="paciente[last()]/emagrecimento != ''">
								<xsl:value-of select="paciente[last()]/semagrecimento " />
							</xsl:if>
							<xsl:if test="paciente[last()]/cansaco != ''">
								<xsl:value-of select="paciente[last()]/cansaco " />
							</xsl:if>
							<xsl:if test="paciente[last()]/rouquidao != ''">
								<xsl:value-of select="paciente[last()]/rouquidao " />
							</xsl:if>
							<xsl:if test="paciente[last()]/linfadenomegalia != ''">
								<xsl:value-of select="paciente[last()]/linfadenomegalia " />
							</xsl:if>
							<xsl:if test="paciente[last()]/faltaAr != ''">
								<xsl:value-of select="paciente[last()]/faltaAr " />
							</xsl:if>
							<xsl:if test="paciente[last()]/faltaPeso != ''">
								<xsl:value-of select="paciente[last()]/faltaPeso " />
							</xsl:if>
							<xsl:if test="paciente[last()]/chiado != ''">
								<xsl:value-of select="paciente[last()]/chiado " />
							</xsl:if>
							<xsl:if test="paciente[last()]/outros != ''">
								<xsl:value-of select="paciente[last()]/outros " />
							</xsl:if>
							<xsl:if test="paciente[last()]/outrosSintomas != ''">
								<xsl:value-of select="paciente[last()]/outrosSintomas " />
							</xsl:if>
							<xsl:if test="paciente[last()]/assintomatico != ''">
								<xsl:value-of select="paciente[last()]/assintomatico " />
							</xsl:if>)
						</td>
						</tr>
						</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Exame f�sico: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/exameFisico" /></td>
					</tr>
					<xsl:if test="paciente[last()]/alteracoesExameFisico != ''">
					<tr>
						<td>(Altera��es: <xsl:value-of select="paciente[last()]/alteracoesExameFisico " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Resultado HIV: </td>
				<td><xsl:value-of select="paciente [last()]/resultadoAntiHiv" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Probabilidade de tuberculose Pleural: </td>
				<td><xsl:value-of select="paciente [last()]/probabilidadeSemAvaliacao" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Observa��es: </td>
				<td><xsl:value-of select="paciente [last()]/observacoes" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Telerradiografia de t�rax: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/telerradiografia" /></td>
					</tr>
					<xsl:if test="paciente[last()]/txt_diaExame != ''">
						<xsl:if test="paciente[last()]/txt_mesExame != ''">
							<xsl:if test="paciente[last()]/txt_anoExame != ''">
							<tr>
								<td>(Data: <xsl:value-of select="paciente[last()]/txt_diaExame " />/
									   <xsl:value-of select="paciente[last()]/txt_mesExame " />/
									   <xsl:value-of select="paciente[last()]/txt_anoExame " />)
								</td>
							</tr>
							<!--<tr>
								<td>(�rea Acometida: <xsl:value-of select="paciente[last()]/areaAcometida " />)</td>
							</tr>-->
							</xsl:if>
						</xsl:if>
					</xsl:if>
					<xsl:if test="paciente[last()]/selecionouAreaAcometida != 'falso'">
					<tr>
						<td> �rea acometida:
						<xsl:if test="paciente[last()]/superior != ''">
							<xsl:value-of select="paciente[last()]/superior" />(
						<xsl:if test="paciente[last()]/superiorEsquerdo != '' ">
							<xsl:value-of select="paciente[last()]/superiorEsquerdo" />,
						</xsl:if>
						<xsl:if test="paciente[last()]/superiorDireito != '' ">
							<xsl:value-of select="paciente[last()]/superiorDireito" />
						</xsl:if>
						</xsl:if>
						)
						<xsl:if test="paciente[last()]/medio != ''">
							;<xsl:value-of select="paciente[last()]/medio" />(
						<xsl:if test="paciente[last()]/medioEsquerdo != '' ">
							<xsl:value-of select="paciente[last()]/medioEsquerdo" />,
						</xsl:if>
						<xsl:if test="paciente[last()]/medioDireito != '' ">
							<xsl:value-of select="paciente[last()]/medioDireito" />
						</xsl:if>
						</xsl:if>
						)
						<xsl:if test="paciente[last()]/inferior != ''">
							;<xsl:value-of select="paciente[last()]/inferior" />(
						<xsl:if test="paciente[last()]/inferiorEsquerdo != '' ">
							<xsl:value-of select="paciente[last()]/inferiorEsquerdo" />,
						</xsl:if>
						<xsl:if test="paciente[last()]/inferiorDireito != '' ">
							<xsl:value-of select="paciente[last()]/inferiorDireito" />						
						</xsl:if>
						)
						</xsl:if>
						</td>
					</tr>					
					</xsl:if>
					</table>
				</td>
			</tr>
			
			<tr bgcolor="#8888BB">
				<td align="right">Volume do derrame pleural: </td>
				<td><xsl:value-of select="paciente [last()]/volumeDerramePleural" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Derrame pleural livre: </td>
				<td><xsl:value-of select="paciente [last()]/derramePleuralLivre" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Associa��o com altera��es pulmonares: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/associacaoAlteracoesPulmonares" /></td>
					</tr>
					<xsl:if test="paciente[last()]/qualAssociacao != ''">
					<tr>
						<td>(Qual: <xsl:value-of select="paciente[last()]/qualAssociacao " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Outras altera��es pulmonares: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/outrasAlteracoes" /></td>
					</tr>
					<xsl:if test="paciente[last()]/qualAlteracao != ''">
					<tr>
						<td>(Qual: <xsl:value-of select="paciente[last()]/qualAlteracao " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Fez prova tubercul�nica (PT) reatora: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/provaTuberculinicaReatora" /></td>
					</tr>
					<xsl:if test="paciente[last()]/txt_diaProva != ''">
						<xsl:if test="paciente[last()]/txt_mesProva != ''">
							<xsl:if test="paciente[last()]/txt_anoProva != ''">
							<tr>
								<td>(Data : <xsl:value-of select="paciente[last()]/txt_diaProva " />/
									   <xsl:value-of select="paciente[last()]/txt_mesProva " />/
									   <xsl:value-of select="paciente[last()]/txt_anoProva " />)
								</td>
							</tr>
							</xsl:if>
						</xsl:if>
					</xsl:if>
					<tr>
					<xsl:if test="paciente[last()]/txt_diaLeitura != ''">
						<xsl:if test="paciente[last()]/txt_mesLeitura != ''">
							<xsl:if test="paciente[last()]/txt_anoLeitura != ''">
							<tr>
								<td>(Data da aplicac�o: <xsl:value-of select="paciente[last()]/txt_diaLeitura " />/
									   <xsl:value-of select="paciente[last()]/txt_mesLeitura " />/
									   <xsl:value-of select="paciente[last()]/txt_anoLeitura " />)
								</td>
							</tr>
							</xsl:if>
						</xsl:if>
					</xsl:if>					</tr>
					<tr>
						<td>(Mil�metros de endura��o: <xsl:value-of select="paciente[last()]/milimetrosEnduracao " />)</td>
					</tr>
					<tr>
					<xsl:if test="paciente[last()]/txt_diaProva != ''">
						<xsl:if test="paciente[last()]/txt_mesProva != ''">
							<xsl:if test="paciente[last()]/txt_anoProva != ''">
							<tr>
								<td>(Data da Leitura: <xsl:value-of select="paciente[last()]/txt_diaProva " />/
									   <xsl:value-of select="paciente[last()]/txt_mesProva " />/
									   <xsl:value-of select="paciente[last()]/txt_anoProva " />)
								</td>
							</tr>
							</xsl:if>
						</xsl:if>
					</xsl:if>
					</tr>
					<tr>
						<td>(Leitor: <xsl:value-of select="paciente[last()]/leitor " />)</td>
					</tr>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Resultado citometria l�quido pleural (c�lulas mononucleares): </td>
				<td><xsl:value-of select="paciente [last()]/resultadoCiometria" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Resultado prote�nas no l�quido pleural: </td>
				<td><xsl:value-of select="paciente [last()]/resultadoProteinas" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Resultado da raz�o prote�na LP/prote�na soro: </td>
				<td><xsl:value-of select="paciente [last()]/resultadoRazaoProteina" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Resultado da raz�o LDH LP/prote�na soro: </td>
				<td><xsl:value-of select="paciente [last()]/resultadoRazaoLdh" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">BAAR LP: </td>
				<td><xsl:value-of select="paciente [last()]/baarLp" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">BAAR escarro (1� amostra): </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/baarEscarro1" /></td>
					</tr>
					<xsl:if test="paciente[last()]/intensidade1 != ''">
					<tr>
						<td>(Qual a intensidade: <xsl:value-of select="paciente[last()]/intensidade1 " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">BAAR escarro (2� amostra): </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/baarEscarro2" /></td>
					</tr>
					<xsl:if test="paciente[last()]/intensidade2 != ''">
					<tr>
						<td>(Qual a intensidade: <xsl:value-of select="paciente[last()]/intensidade2 " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">BAAR escarro induzido: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/baarEscarroInduzido" /></td>
					</tr>
					<xsl:if test="paciente[last()]/intensidadeInduzido != 'NA'">
					<tr>
						<td>(Qual a intensidade: <xsl:value-of select="paciente[last()]/intensidadeInduzido " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">ADA l�quido pleural: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/adaLiquidoPleural" /></td>
					</tr>
					<xsl:if test="paciente[last()]/quantidade != ''">
					<tr>
						<td>(Quantidade: <xsl:value-of select="paciente[last()]/quantidade " />UI/mL)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Probabilidade de tuberculose com a avalia��o complementar: </td>
				<td><xsl:value-of select="paciente [last()]/probabilidadeComAvaliacao" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Cultura para microbact�rias no LP: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/cultura" /></td>
					</tr>
					<xsl:if test="paciente[last()]/metodo != ''">
					<tr>
						<td>(M�todo: <xsl:value-of select="paciente[last()]/metodo " />)</td>
					</tr>
					<tr>
						<td>(Resultado: <xsl:value-of select="paciente[last()]/resultado " />)</td>
					</tr>
						<xsl:if test="paciente[last()]/tipificacao != ''">
						<tr>
							<td>(Tipifica�ao: <xsl:value-of select="paciente[last()]/tipificacao " />)</td>
						</tr>
						</xsl:if>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Resultado do exame histopatol�gico: </td>
				<td><xsl:value-of select="paciente [last()]/resultadoExameHistopatologico" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Cultura para microbact�rias escarro: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/metodoCultura" /></td>
					</tr>
					<xsl:if test="paciente[last()]/metodoCultura != ''">
					<tr>
						<td>(M�todo: <xsl:value-of select="paciente[last()]/metodoCultura " />)</td>
					</tr>
					<tr>
						<td>(Resultado: <xsl:value-of select="paciente[last()]/resultadoCultura " />)</td>
					</tr>
						<xsl:if test="paciente[last()]/tipificacaoCultura != ''">
						<tr>
							<td>(Tipifica�ao: <xsl:value-of select="paciente[last()]/tipificacaoCultura " />)</td>
						</tr>
						</xsl:if>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Sorologia LP : </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/sorologiaLp" /></td>
					</tr>
					<xsl:if test="paciente[last()]/antigenos != ''">
					<tr>
						<td>(Ant�genos: <xsl:if test="paciente[last()]/antigenos[1] != ''">
											<xsl:value-of select="paciente[last()]/antigenos[1] " />
										</xsl:if>
										<xsl:if test="paciente[last()]/antigenos[2] != ''">
											,<xsl:value-of select="paciente[last()]/antigenos[2] " />
										</xsl:if>
										<xsl:if test="paciente[last()]/antigenos[3] != ''">
											,<xsl:value-of select="paciente[last()]/antigenos[3] " />
										</xsl:if>
										<xsl:if test="paciente[last()]/antigenos[4] != ''">
											,<xsl:value-of select="paciente[last()]/antigenos[4] " />
										</xsl:if>
										<xsl:if test="paciente[last()]/antigenos[5] != ''">
											,<xsl:value-of select="paciente[last()]/antigenos[5] " />
										</xsl:if>
							)
						</td>
					</tr>
					<tr>
						<td>(Resultado: <xsl:value-of select="paciente[last()]/resultadoSorologia " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">PCR: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/pcr" /></td>
					</tr>
					<xsl:if test="paciente[last()]/tecnicaUtilizada != ''">
					<tr>
						<td>(T�cnica utilizada: <xsl:value-of select="paciente[last()]/tecnicaUtilizada " />)</td>
					</tr>
					<tr>
						<td>(Resultado: <xsl:value-of select="paciente[last()]/resultadoPcr " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Outro exame: </td>
				<td><table border="0">
					<tr>
						<td><xsl:value-of select="paciente [last()]/outroExame" /></td>
					</tr>
					<xsl:if test="paciente[last()]/exame != ''">
					<tr>
						<td>(Exame: <xsl:value-of select="paciente[last()]/exame " />)</td>
					</tr>
					<tr>
						<td>(Resultado: <xsl:value-of select="paciente[last()]/resultadoExame " />)</td>
					</tr>
					</xsl:if>
					</table>
				</td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Probabilidade de tuberculose ap�s exames: </td>
				<td><xsl:value-of select="paciente [last()]/probabilidadeAposExames" /></td>
			</tr>

<!--			<tr bgcolor="#8888BB">
				<td align="right">Desfecho do caso se TB: </td>
				<td><xsl:value-of select="paciente [last()]/desfechoCaso" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Desfecho se contato: </td>
				<td><xsl:value-of select="paciente [last()]/desfechoContato" /></td>
			</tr>
			<tr bgcolor="#8888BB">
				<td align="right">Desfecho se SR: </td>
				<td><xsl:value-of select="paciente [last()]/desfechoSr" /></td>
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Desfecho se suspeito: </td>
				<td><xsl:value-of select="paciente [last()]/desfechoSuspeito" /></td>
			</tr>
-->
			<tr bgcolor="#8888BB">
				<td align="right">Data da �ltima consulta/VD: </td>
				<!--<xsl:if test="paciente[last()]/txt_diaUltima != ''">
					<xsl:if test="paciente[last()]/txt_mesUltima != ''">
						<xsl:if test="paciente[last()]/txt_anoUltima != ''">-->
							<td>
								   (<xsl:value-of select="paciente[last()]/txt_diaUltima " />/
								   <xsl:value-of select="paciente[last()]/txt_mesUltima " />/
								   <xsl:value-of select="paciente[last()]/txt_anoUltima " />)
							</td>
				<!--		</xsl:if>	
					</xsl:if>
				</xsl:if>-->
			</tr>
			<tr bgcolor="#CCCCFF">
				<td align="right">Observa��es: </td>
				<td><xsl:value-of select="paciente [last()]/observacoesUltima" /></td>
			</tr>
		</table>
		</center>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
