object FormTeste: TFormTeste
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderStyle = bsNone
  Caption = 'FormTeste'
  ClientHeight = 480
  ClientWidth = 1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 1079
    Height = 480
    Cursor = crHandPoint
    Align = alClient
    ColCount = 7
    Color = clCream
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    PanelHeight = 48
    PanelWidth = 151
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    RowCount = 10
    ExplicitWidth = 1060
    ExplicitHeight = 1100
    object DBText1: TDBText
      Left = 41
      Top = 0
      Width = 105
      Height = 26
      DataField = 'VEI_NUN'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 1
      Top = 32
      Width = 145
      Height = 33
      Alignment = taRightJustify
      DataField = 'MOD_DES'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 7
      Top = 8
      Width = 42
      Height = 35
      Picture.Data = {
        07544269746D617036150000424D361500000000000036000000280000002A00
        00002A0000000100180000000000001500000000000000000000000000000000
        0000696B6966717492806CEFB172C9A97AD0A470E2AE72DFAC74E4AF74E0AD75
        E3B076DEAC75E3AF76E6B175E2AE76E5B174DDAE75E0AF77E2AF74E5B076E2AF
        78E6B176E5B075E2AF75E4AF76E4B075E8B374E4B075E6B076E7B074E8B074E9
        B273E7B173E8B173E8B172EFB672CFA876ECB374E7B173E9B374E6B075E9B376
        000000000000080A3A1C00E07803A46B19A45E06C56D06C86E09CC700ACA710A
        CB710CD27409CB720ED3750DD1740EC8710DCC7211CD7311D1740ECC7310D176
        12D6760DDA7208D1730ED27610CE740FD5770ECF740FD5750DD6760AD7770AD4
        7509D8760CD8760BD77608E47C09B1680DDC7A08D8770DD7770BD5760DDA7A0D
        00000108010000003E2708DE7C109F7125B66911C37316CD7716CC7718C97619
        C87617CB7619D07A1AD07918D37B19CE7819D47B1BD27C18CF7A1CD27B1CD67A
        17CD7B1E8A8D62D97713D97B16D17A19DB7D19D77D1BD87E18DB7E17DB7E17D8
        7D15E08114D87C15DA7C15EA8613B56F1AE08016DC7E15DE8116DA7E18DC8016
        00000107030000013E2608E37E10A17429B76B14CF7614C57519CE771ACC7719
        CD771CD0791AD17A1AD17B1AD27B1DCB781DD77D1DD37B1CD47C1AD57919CE7D
        2200B1EF00B6EE00B4EECB7F26D67B1AD97F19D87E1CDB8019DC7F19D97E18DA
        7D18D97D17DE8014DB7E16E78614B5711CE18015DB8017DB7E16DB8019DC8118
        00000103020000023B2408EA82149F732ABF6E11D17916CA771AD2781ACD7A1C
        CB7A1BD07A1DD57B1DD37C1DCF7B1ED47C19D17A1DD17B1DD67D1FE2791042A2
        A100B4E700B5E723AEC6E27B12D57C1CD87E1CDB811DDC821CD77E1ADC7F19DA
        7E18DC8018DE8014DD7F14EB8816B6731CE48517DE8119DD8119DD811ADF821A
        000001040300000350310AEA86179C7228C57018CF7816CE771ACA781DD2791C
        D17B1CD47B1CD17B20D07A1DD27C1CD27B1DD37B1DD47D1DD57E1EEE780900B3
        E300B6E500B4E8E9770EDC7F1CDA811FDB811BDC841FE4891AD97C1BD87D19D8
        7E19DD7F16DE8016E08416EB8A18B7741DE1851DE28719DD8219DF851BDF821B
        00000005030003017C4B09EF8E1D846A26D07416D0791AC6761ED37A1ACC791F
        CD7B1CCC7920D27D1ECD7A20D07C20D17B1ECF7B1ED07C22CE7B21EE760600B5
        E800B9EF769579E17B13D87F1EDB801DD67D1BD47A1CCD7515D87D19D77E19D9
        7D1CDA7F18DB7D1BDE8218EA8919B7741FE3871CE0871BDD821CDC811DDC831A
        0000010A02000200C67112DC9739845D18D3781BD47816CB7313CA771BDA710B
        D67919D17C21CF7C20D37E20CF7D21D17D20D98221D57F1ED27D23E87D112FA8
        B600C7FFC8842FE2841CD57F1FE0861DD67F1DD87F1DD97D1CDA801DDD811ADE
        821AE67E13F88008F3820AE98717BA761EE5891BE18719E08419DF841BDF851F
        0000000A00262605EF84189D7C35B8701AD6761A90864E00C5FF00BCFD00B3E5
        9F854BDF7C15CF7C21D7811FD78122D98221DF871DD98221DB8420DC831CD580
        20B29247E88315E0841FDE851DE38919D8801FDE831DD7801EE1851CE38518F8
        7C058F986215B6D422B4CCE7841EBA731AE0831CE3881ADE821ADD821ADE831C
        0000000500B86C10CE8A2FB28132BA7726D18328F8831256AD9E00C2FA09C0ED
        00CAFFD29036E58B20E78F24E79022E78F23E99122EE9120F28F19F58F1AF491
        1AF39219E79022EA911EEC911EED911CE98E1EEB8E1DEB8C1BEE8D1AFA860927
        BBCF00CDFF00C6F700CEFF9BAC77BF6E10EB881AEE8F18EA8C1AE98A1BE98D1D
        000061470DD58022C19A49BF771EBC7C23BC7A23B97B24D4730E63917300AFE3
        02A7CF2C96A6C6761AB37727B57A2AC47A21CD791AA1814176906C6D92768B8B
        5DC97B24C98328BC8431BD852EBD852EBC852EBE862EBD842ED17C181EABC210
        B5D915B2D101B8DF457F809E661EAE7522B47D28B87F2BB8802AB77F28B87E28
        0000D27C1CD8A952DD8C20E59327E18F25DF8E27E38F25E28F25F58D17A99F59
        0CC6EA00D7FFEF8F1FF2911DEE8C1E6CB09804CCF900D3FF00D0FF00D3FF00D2
        FF00D5FF9BA571F6941FE6972AE79626E89728E89628F3951DA1A46600D7FF00
        D8FF26C7DECC9F45CE7F13F49619EF9F27EE9C28EC9C26ED9B27ED9C23EF9C22
        0000DDAB4BD58924E79523E08F25DF8C25DA8B27DE8F25DF8F28E29228EB9222
        FA8C14C6953CE2922BA6975B00D0FF00CEFF00C8F801CBF602CAF801CCF902CB
        F700CEFB00D7FFCA9642E69527E2942CE3952BE39529F7901923C3D800D1FFA8
        A263FF910DF59A20C98525EA9824E89D2BE79B2BE79B29E89A2AE89A28ED9A1B
        0000D58A25E79322E49225DD8D27E08D24DE8F29DF8E28E19027E49529E3962A
        E0942BF78F1B8DA16E00D3FF00CCFA01CBF802CDF902CDF901CBF701CEFA02CF
        F902CCF800D4FF98A674ED9525E29630E2962FE2962DE7962ACA9B41EC9222EF
        9722EB9B29EF9B27C68228E89728E99E2BE99D2EE99D2EE99C2BE39D34E0AF69
        0000E49225E49225E39226DF8F28E19027DE8F29DE912AE0922CE5952AE1962E
        E8952AC2974700D4FF01CAF702CCFA01CCF801CEF801CFFB02CFF901CFFB01CE
        FA02D0FB00D5FF98A374F79020F49422E4982DE4992FE3972FE8982AE7982DE6
        9A2DEC9C2CEE9D28CD8627E89A2BE89E2FE99D2FE79E2FE89C2BE49E39DDB67B
        0000E49324E39323E19228DF8F27E09127DE912ADD922DDF932BE4972FE19730
        F98E1C16C6E500CDFD01CDFA01CFF902CDF901CFFA02D0F900CFFB01D0FC01D0
        FC01D0FC01D1FB00D6FF00D6FF5BB7B0F49225EA982AE69932E49930E79E2EE7
        9C2FEDA131EDA130D48B26E89C2DE99F2DE99F30EBA02FEA9E2DE99E2FE6AD5A
        0000E39324E39227E29226E08F28DD922BDF932ADE912FDF932FE39930EA982B
        BB9D5300D6FF01CEFA01CEFB01CFFC01D0FA01CFFB03CFFB01D0FA01CFFB02D1
        FC00D2FD00D3FF00D6FF00D5FF00D7FF00D4FFDF993CE99B2FE59B35E89E32E9
        9D32EEA02FEDA132D58D27EA9C2EE89F32EBA032EAA031E9A132E99D28E8B973
        0000E29227E39228E09329E1922BDE942EDE942EDF942FE1962FE49932F29629
        69B39D00D3FF00D0FB01D0FC00D0FB00CFFC01D1FB02D1FC03D1FB02D1FB00D6
        FF00D7FF40C2C781B08C0FD1F002D6FF00D7FF13D0F2FF961FE89F35EBA031E9
        9F34EEA12FECA236D88E29EA9F31EAA234EBA333ECA534EBA234EB9E28DFC698
        0000E39529E2942AE09229DF932BDF942FDF952FDE9532E09732E59B32F79625
        30C2D200D2FF01D0FB01D1FB02D1FC02D1FC02D1FB01D1FB03D3FC00D9FF64B8
        A9FE9424F89928FF99249EAC7200D9FF08D4FC00DEFFBFA461EE9E2FEBA235EA
        A235EEA231EDA639D08C2CEBA133E9A236EDA537ECA435EAA236EEA02DE5BF84
        0000E2942BE2952CDE932DDF942DDF9533DF9634E09736E19734E69C37FC9623
        13C9EC00D2FF01D1FB02D1FB02D3FB01D3FB00D7FF02D4FB00D7FF49C1C5FF95
        1FE49E39E39F39EB9D34D69E4400DCFF06D5FB00D9FF8AB58DF69F2FECA537EC
        A138EEA637EDA339CF8D2AEAA23CEBA73DEFA83BEDA63BEBA339ECA436ECAA46
        0000E0952CE1942EE09430E09630E49630E49730E39832E29A34E69E38F89728
        1FC9E100D3FF02D3FB03D2FB01D5FB00D6FF74B39A00DAFF00DBFFE19C41E89F
        37E5A03BE6A03BED9E34B4AA6800DBFF0BD7FC00DCFF96B387F7A333EFA438F0
        A638F0AA43ECA641D5912EECA63FECA943EDA941EDA73CECA53AEDA93EF0AB44
        0000E1962DE5962CF69224F48E1EDD9335D8963DDC963BEE932BEF9D30F69A2C
        3EC1C800D6FF03D2FB03D3FC00D5FF1ECBE8FF921100D5FB1ECEEAFE9A27E3A0
        3EE5A13EE6A13CFF992135C9D602DAFF0AD8FC00E1FFD8A251FFA22EE3A54ADE
        A755FAA63EFFA534DB8E27F0A941EDAE4BEEAA44ECA53DEBA539ECA63DEEAD49
        0000E39531CE98402FBECD00D6FF00D9FF00D8FF00DAFF00E2FF97AF81F89829
        71B79D00D9FF04D4FC04D4FB00D6FD0DD3F8FF961A6ABAA54DC3C1F49D30E5A1
        3DE6A13DFA9D2C94B18500DEFF07D7FB07D9FF22D0EFFF9C1D58C5C800E6FF00
        E0FF13DAFF41CEDE929F71FFA32EF7AA40EEAC4AEBA741E9A43BECA73EEFAD48
        0000F1E9F500D0FF00D2FF00D0FC00D1FD00D5FF00D4FF9CAC7DEB9E36E79E3B
        EF993600D5FF01D6FF03D4FB06D4FA00DEFFE2A048EA9E3DD4A551E9A13CE7A2
        3FFC9F2EAEAC7000DDFF09D8FD0CD9FD00E0FFBBAC6EF2A338F5A63F98B88C38
        CFE40CDCFF0DE0FF00CDFB2DD6F4C1AE6DFFA535EBA83EEAA43EEBA63FF0AD4A
        000007C85563D19551D3E91ED3FF00D4FF38BEC4F29427F29E2EE7A03CE49F3F
        EB9F39CEA25200DDFF04D7FC08D7FB00D9FF5DBFB8FF9B21FA9F31F8A032FF9C
        2A8FB38D00E0FF09D9FD0BD8FD00DCFF51C6CBFFA12DECA741F1AA40F7A63BFF
        A839C3B06F1FD8F904CDF616DFFF00E4FF6DC3BAF9A431E9A63FEBA743F0AF4C
        000015D0620ED0600FCE544CCF76BBDABAFFEDF6EECDAFE4A753E7982AE69E37
        E7A13DF5A034AEAB6F00DFFF05D8FD08D6FC00DBFF23CFE95DC1BA5BC1B913D4
        F700DDFF0BD8FD0AD8FD02DAFF14D5F8FF9F30EEA63EECA83FEFA841ECA942F0
        AF4EF8AA42FFA73B44B6BA26D3F121D2EEB3B37AF3A535EAA640ECA743F1AE4B
        000019D16416D26416D26314D16008D15C08C95B72D7A2D9EBF1F9E7EBE9C290
        E1A03EEA9D2EFB9D2BB2AB6B00DEFF04D8FF09D7FC04D8FF02D9FF00DAFF06D9
        FF0BD8FD0AD8FC03DAFF0CD7FFF5A13CF1A63BEAA540ECA640EFA73EEBA643EF
        AE4CEDA946F0AD4DE8922AFFA231FF9C2AF4A539EAA641E9A641EAA844EFAC48
        000028D36F29D1742AD1742BD5772CD7782CD87623D77514D4694BD58EADEAD3
        FFFFFFFBECDEF7CE90FFAE3CEAB3531FE4FF13E8FF17E7FF14E7FF16E6FF17E6
        FF16E7FF10E7FF29E2FEFFB243FFB43DFFB542FFB543FFB43FFFB442FFB441FF
        B444F7AF3EF7AF41DB9B3BF1A83AF5A933FDAE37FEB039FDB23DFCB13DFFB53C
        000037C57338C37438D37A27A85D1A8C501D844C2080491B844B19864D108649
        0A7E4453907888A5AC87A9B28A8F7B9B76351A96A61299AA189AAD1797AA1698
        AA1898AB1199AD9E7938977834907A388F7837927837917632937734947732AC
        822EEBA644E8A440CA963EECA33CECA33CB5812C99722797722A9B732E997528
        00002BCB6E26E3781166412A4D49365953345A5229534E29554D355B542E544E
        355B57285750285A52295952295B56295B57315B54365D5436594F31584F325B
        4F31574F32574E2556532359572557582657532956523E696A355E5B33605B31
        5B591D4945CB9D49FFBB49C394421841393057523A5F5B355A522E554E315650
        0000227B5318A35833504D2A5E54155251265A527191870C4B4F1A5A69688F8F
        1D574E616D571B514439685E3C665E416C663B666041756C597C7847706A3C65
        6057837F5E97976097975D95985F9A9B679FA13A6F712956521A45364A736F3A
        665F26504924473DFFB849184039496B6B52727C3D626532544D264C41456A69
        0000265D49237A542F59563775730C4635285C54A3C1BE13564F1A52465D8784
        446F661E564E23574A195042164B3B174C3E0F4737417162335D5222554F2E5B
        51558481679D9F699FA2659F9E6A9FA289C0C445787A2E5C5C1D4939476F683B
        655B1F493D204A44947D46244F4861768A6275904D68772D554B254A3A587D7E
        00002B5E4E237A55345C5735726E134635205E6356A0D05DA6CA1851487A9C99
        2E5C50144A3E2B5C5533615936656137645937645E4A756B507770426F6B3C66
        61537F7B6395975D8F906DA0A47DB1B487B8BF46777732615D1D473A48716A3E
        6962224D471F47357B969C2347377B89AD858CB661708F2E584D254C3E5E7389
        00002D6151277D5732584E21564C15493A1950431D5956205C59134A3F829F9C
        1D4F441550451C514820554B2152472155491D50464B70653B665929574F2552
        4745746E33625D30615C2D5D55366B6833656123514C224D4321473949736E2F
        5A522851472A493E488B732A4C396879958A90B66A7797335951294F415F738D
        0000305F4E287F57355A523A665E16493825544B6694944F7F7F104F4F7B9B96
        2A5447215D5B1C4F451949391B4D401942311042334B716530594F244D3F3961
        5655807B6B97986893936C9797669393719FA037696B27544C224B40476E682F
        52462A51452C4D433A8A64315047647987838DAE6A769531584C2A4D3F637790
        0000335F4F2B805A385A5129564C1D4C3B27544B779C9C52817E114B4C7E9C97
        3A6258245D5D4C79722150461E4E421B47351744354F73652E5950214A3E4067
        5D5A85847BA09F789D9C7C9F9E6B8F8D61878631606228544D274A3C3F676130
        5B51295046334C413B8E6A3551474E69735F6E86445E6733584E274F42425E62
        0000365F52327E593B5D582A584B214D3E29554C568180699293255C58779490
        3F706C306462477575285B57215048204E3E1D4A3B52766B2E574A2D5147355A
        51517874688E8C628A885F86855D8481547B793363652E5A53264D403F655E2C
        5648294E433450473E8E653C57503B5D57355B543B5E5536584D2E5044345B4F
        00003A635633835F3D5E57305D532950452C584E416C664974733F6B656A8985
        487571396A661F534E225756275C5A28534A264E4452766A34594B2F51462B4E
        41456C644D79764C77734C756F486F6D466D6938686A355A542F52483D665E36
        554B284B3B39544D3C8E654259523756483352483451432B4E402B483B25463A
        00003A63553983603D5E56365F562C544A325A504B746E456F6A3E6B6457786E
        4C7A7748726D2F5C582C5B5A2B58522E54482F5449537367375B503150412F4E
        43496D663C6764416964456C64406863547877416968345B55335548456B633B
        5E533054483C554F3F8F63455B533C5E533E6158395B513B5B4F3B5E553C5C4F
        00004164573D85653B5A51294E43254A382C504330574E2F53462D524837594F
        2B504330554C2C51452F52452B50472B52492D50432E5144294D42264B3F2648
        392F51462A4D402B4D432C4E41304D3F2E50472B4C412D4A392C4B3A35524532
        50422C4A3C415B5344926C4B5E55324F412F4B3E314F403550423852443B5446
        000044675B45896A46645E44645842645A3B5C50395D553C5F56385A517A9691
        436B643B5D523B5E56385C553A5D523C5D5338584D486A5E4C6C5D4A695D4766
        5A4F726A4565594B6D6444645A456A6048675C42645846645A486A614B706748
        675B405C4E475B533F906351685D4A695E4B675C456355436054496557446155
        00004A685E478A694C665E43665B4062593F60583C5F53406459385D539BB0AC
        4670673D62573C615741675E3F655A3F655B3F635B5776684A6C6044675B4A6D
        63577B7552766D5175695274684F706652766D51736751746A50726654777053
        7468446054465F4E99A7A650675E4B685B456356446152426051426051426055
        0000}
      Stretch = True
      Transparent = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Pai.QrVeiculosCompletos
    Left = 688
    Top = 40
  end
end