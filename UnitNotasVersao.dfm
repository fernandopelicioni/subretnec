object FormNotasVersao: TFormNotasVersao
  Left = 0
  Top = 0
  Caption = 'Notas de Vers'#227'o'
  ClientHeight = 680
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 1112
    Height = 680
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Lines.Strings = (
      '1.0.3.1 - Gerencial apontando para Oleo Motor 8.1.14'
      ''
      
        '0.8.1.61 - Inclus'#227'o dos campos especificados no cadastro dos vei' +
        'culos '
      ''
      '0.8.1.60 - Inclus'#227'o do Identificador nos Servi'#231'os  '
      ''
      
        '0.8.1.60 - Lista de Pendencias - Relatorio de saida de ve'#237'culos ' +
        'inclui op'#231#227'o de saida para Grupo Especifico.'
      ''
      
        '0.8.1.58 - Relatorio de Entradas por Produtos - Calculo baseava-' +
        'se no valor do movimento, quando deveria se basear no Item do Mo' +
        'vimento Tittmov.'
      ''
      
        '0.8.1.57 - Central de Componentes - Sistema n'#227'o consistia busca ' +
        'por Caracteristica do componente.'
      ''
      
        '0.8.1.56 - Central de Componentes - Sistema considera apenas ve'#237 +
        'culos em Opera'#231#227'o'
      ''
      
        '0.8.1.55 - Central de Componentes - Produtividade dos itens de R' +
        'evis'#227'o'
      ''
      
        '0.8.1.54 - Relatorio de abastecimento - Exibe o numero atual do ' +
        'veiculo para consulta'
      ''
      
        '0.8.1.53 - Relatorio de abastecimento - Aplica'#231#227'o n'#227'o exibia cal' +
        'culo de % de arla por combustivel, Dataset estava apontado para ' +
        'outra Query'
      ''
      
        '0.8.1.52 - Gerencial - Alterada a formata'#231#227'o do relatorio de Med' +
        'ia de combustivel - Considerando LAYOUT'
      ''
      '0.8.1.51 - Inventario Diario Corrigido'
      ''
      
        '0.8.1.50 - Baixas - Ao executar uma baixa, sistema apresentava e' +
        'rro na inser'#231#227'o na tabela CLCTLOTE, foi desconsiderada.'
      ''
      
        '0.8.1.49 - Saidas por Grupos - Corrigido tipo de variavel na op'#231 +
        #227'o Analitico;'
      ''
      
        '0.8.1.48 - Posi'#231#227'o de Estoque - Relatorio se baseava no saldo at' +
        'ual, agora '#233' considerado a data inicial do relatorio.'
      ''
      
        '0.8.1.47 - Comparativo de Entradas e Saidas - Vers'#227'o inclui valo' +
        'res de entrada e saida, considerando os valores medios aplicados' +
        ' nas baixas...'
      ''
      
        '0.8.1.46 - Inventario de Pneus - Modulo Central de relatorios pa' +
        'ra Pneus  - Emite relatorio com base na situa'#231#227'o atual e a dispo' +
        'nibilidade destes, varios filtros podem ser '
      'aplicados'
      ''
      
        '0.8.1.45 - Inventario Diario - Emite por total de baixas por dia' +
        ' e saldo final, n'#227'o h'#225' saldo anterior, visto que pode haver entr' +
        'adas no dia e o calculo ficaria errado, Imprime em '
      'Paisagem e tem op'#231#245'es de ordem para emiss'#227'o'
      ''
      
        '0.8.1.44 - Entradas por Grupos Analitica - Tipo de Field estava ' +
        'modificado para DBCD e o correto '#233' INT;'
      ''
      
        '0.8.1.43 - Custo KM e Gerencial - Associados para utilizar o Val' +
        'orLiquido na formula de calculo, diferen'#231'a entre valores ser'#227'o p' +
        'or produtos utilizados em setores e n'#227'o em '
      'veiculos'
      ''
      
        '0.8.1.42 - Entradas por grupos analitica - Relatorio executava c' +
        'omando COUNT(C.Quantidade) ao inves de SUM(C.Quantidade), e exib' +
        'ia valor incorreto;'
      ''
      
        '0.8.1.41 - Relatorio de Abastecimento - Ajuste na exibi'#231#227'o dos c' +
        'ampos, disponivel por Layout e vers'#227'o com toda a frota;'
      ''
      '0.8.1.40 - Atualiza Storage do Rave reports'
      ''
      
        '0.8.1.39 - Inventario Diario - Excluido Aspas da passagem de par' +
        'ametro para Value da sente'#231'a Sql de consulta do relatorio'
      ''
      
        '0.8.1.38 - Informa'#231#245'es de Pneus - Sistema considerava movimento ' +
        'conserto da reformadora para calculo da media da vida, fazendo c' +
        'om que, em alguns casos, apresentasse '
      'dados em duplicidade'
      ''
      
        '0.8.1.37 - Item 20 - Criado na Central de Relatorio - Aba com re' +
        'latorio por dia/periodo de produtos baixados e seu consequente s' +
        'aldo final, para cada baixa, uma informa'#231#227'o;'
      
        '  Importante: Pode haver Entradas entre o intervalo de uma baixa' +
        ' e outra, sendo necessario observar o Saldo anterior para produt' +
        'os com varias aplica'#231#245'es'
      ''
      
        '0.8.1.36 - Relat'#243'rio de Abastecimento - Relatorios ser'#227'o emitido' +
        's por Layout e n'#227'o mais por modelo de chassi'
      ''
      
        '0.8.1.35 -  Item 5 - Relatorio Custo KM - Relatorio '#233' emitido a ' +
        'partir da divis'#227'o de grupos de veiculos, denominados LAYOUT, ess' +
        'a separa'#231#227'o '#233' feita no cadastro do veiculo, onde '
      
        'constam os modelos: Articulado, Convencional, Seletivo, Micro e ' +
        'Toyota;'
      ''
      
        '0.8.1.34 - Item17 - Cardex: Foi criada a op'#231#227'o de gerar o relatr' +
        'io por grupo, anteriomente s'#243' era possivel a gera'#231#227'o de um unico' +
        ' item')
    ParentFont = False
    TabOrder = 0
  end
end
