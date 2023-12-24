#INCLUDE "Protheus.ch"

/*/(Protheus.doc) Operadores da Linguagem
Função : Analista de Sistemas
@author Kassio B.
Since 21/12/2023
@version 12 superior
/*/

User Function Datas()

    Local dDataAtual     := DATE()
    Local cHora          := TIME()
    Local cData          := ""
    Local nDiasAcres     := 0
    Local dDataRes       := StoD("")
    Local nResp          := 0
    Local cResp          := ""

    
    // Converte uma data para texto nao formato DD/MM/AAAA
    cData       := DTOC(dDataAtual)

    dDataRes    := CTOD("16/10/2002")

    // Converte uma data para texto nao formato AAAAMMDD (Esse é o formato que as datas são gravadas nas tabelas Protheus)
    cData       := DTOS(dDataAtual)

    // Converte um texto no formato AAAAMMDD para data
    dDataRes    := STOD("20231224")

    // Retorna uma data sem considerar final de semana e feriado - Funciona apenas executando o Protheus
    dDataRes        := DataValida(CTOD("23/12/2023"), .T.) // Proximo dia util
    dDataRes        := DataValida(CTOD("23/12/2023"), .F.) // Dia util anterior a data passada no parametro

    // Retorna o número do dia de uma data - Domingo = 1; Segunda = 2...
    nResp           := DAY(dDataAtual)

    // Retorna o número do mês de uma data  
    nResp           := MONTH(dDataAtual)

    // Retorna o número do ano de uma data 
    nResp           := YEAR(dDataAtual)

    // Retorna o nome do mês de uma data
    cResp           := MesExtenso(dDataAtual)

    // Retorna uma string de ano e mes no formato AAAAMM
    cResp           := AnoMes(dDataAtual)

    // Retorna uma string de mes e dia no formato MMDD
    cResp           := MesDia(dDataAtual)

    // Retorna uma string do dia no formato DD
    cResp           := Day2Str(dDataAtual)

    // Retorna uma string do mes no formato MM
    cResp           := Month2Str(dDataAtual)

    // Retorna uma string do ano no formato AAAA
    cResp           := Year2Str(dDataAtual)

    // Adicionar ou reduzir dias de uma data
    nDiasAcres      := 15
    dDataRes        := dDataAtual + nDiasAcres
    dDataRes        := dDataAtual - nDiasAcres
    dDataRes        := DaySum(dDataAtual, nDiasAcres)
    dDataRes        := DaySub(dDataAtual, nDiasAcres)

    // Adicionar ou reduzir meses de uma data
    dDataRes        := MonthSum(dDataAtual, 3)
    dDataRes        := MonthSub(dDataAtual, 3)

    // Adicionar ou reduzir anos de uma data
    dDataRes        := YearSum(dDataAtual, 3)
    dDataRes        := YearSub(dDataAtual, 3)

    // Diferença de dias, meses ou anos entre duas datas
    nResp           := DateDiffDay(CtoD("16/10/2002"), Date())
    nResp           := DateDiffMonth(CtoD("16/10/2002"), Date())
    nResp           := DateDiffYear(CtoD("16/10/2002"), Date())

    // Retona o numero do dia da semana - Domingo = 1 Segunda = 2 ...
    nResp           := Dow(dDataAtual)

    // Descrição do dia da semana 
    cResp           := DiaSemana(dDataAtual)

    // Retorna a primeira ou a ultima data do mes corrente
    nResp           := FirstDate(dDataAtual)
    nResp           := LastDate(dDataAtual)

    // Retorna o numero do ultimo dia do mes
    nResp           := Last_Day(dDataAtual)

    // Retorna o primeiro ou o ultimo dia do ano de uma data
    dDataRes        := FirstYDate(dDataAtual)
    dDataRes        := LastYDate(dDataAtual)

RETURN

