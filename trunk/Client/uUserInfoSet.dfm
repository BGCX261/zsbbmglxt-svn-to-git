object UserInfoSet: TUserInfoSet
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #26426#20027#65288#31995#32479#29992#25143#65289#20449#24687#35774#32622
  ClientHeight = 350
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1: TPanel
    Left = 0
    Top = 306
    Width = 471
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btn_Save: TBitBtn
      Left = 256
      Top = 9
      Width = 75
      Height = 25
      Caption = #30830#23450'[&O]'
      TabOrder = 0
      OnClick = btn_SaveClick
    end
    object btn_Exit: TBitBtn
      Left = 374
      Top = 9
      Width = 75
      Height = 25
      Caption = #36864#20986'[&X]'
      TabOrder = 1
      OnClick = btn_ExitClick
    end
  end
  object grp1: TGroupBox
    Left = 0
    Top = 50
    Width = 471
    Height = 256
    Align = alClient
    Caption = #26426#20027#20449#24687#65306
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 25
      Width = 48
      Height = 14
      Caption = #29992#25143#21517#31216
      FocusControl = dbedt1
    end
    object Label2: TLabel
      Left = 42
      Top = 57
      Width = 24
      Height = 14
      Caption = #22320#22336
      FocusControl = dbedt2
    end
    object Label3: TLabel
      Left = 30
      Top = 89
      Width = 36
      Height = 14
      Caption = #32852#31995#20154
      FocusControl = dbedt3
    end
    object Label4: TLabel
      Left = 246
      Top = 88
      Width = 48
      Height = 14
      Caption = #37038#25919#32534#30721
      FocusControl = dbedt4
    end
    object Label5: TLabel
      Left = 42
      Top = 121
      Width = 24
      Height = 14
      Caption = #21040#31449
      FocusControl = dbedt5
    end
    object Label6: TLabel
      Left = 18
      Top = 153
      Width = 48
      Height = 14
      Caption = #21457#34892#21517#31216
      FocusControl = dbedt6
    end
    object Label7: TLabel
      Left = 18
      Top = 184
      Width = 48
      Height = 14
      Caption = #36135#36816#26041#24335
      FocusControl = dbedt7
    end
    object Label8: TLabel
      Left = 246
      Top = 184
      Width = 24
      Height = 14
      Caption = #25143#21517
      FocusControl = dbedt8
    end
    object Label9: TLabel
      Left = 30
      Top = 215
      Width = 36
      Height = 14
      Caption = #24320#25143#34892
      FocusControl = dbedt9
    end
    object Label10: TLabel
      Left = 246
      Top = 215
      Width = 24
      Height = 14
      Caption = #24080#21495
      FocusControl = dbedt10
    end
    object Label11: TLabel
      Left = 243
      Top = 25
      Width = 36
      Height = 14
      Caption = #27880#20876#30721
      FocusControl = dbedt11
    end
    object dbedt1: TDBEdit
      Left = 82
      Top = 22
      Width = 150
      Height = 22
      DataField = #29992#25143#21517#31216
      DataSource = DataSource1
      TabOrder = 0
    end
    object dbedt2: TDBEdit
      Left = 82
      Top = 53
      Width = 367
      Height = 22
      DataField = #22320#22336
      DataSource = DataSource1
      TabOrder = 1
    end
    object dbedt3: TDBEdit
      Left = 82
      Top = 85
      Width = 150
      Height = 22
      DataField = #32852#31995#20154
      DataSource = DataSource1
      TabOrder = 2
    end
    object dbedt4: TDBEdit
      Left = 300
      Top = 85
      Width = 149
      Height = 22
      DataField = #37038#25919#32534#30721
      DataSource = DataSource1
      TabOrder = 3
    end
    object dbedt5: TDBEdit
      Left = 82
      Top = 117
      Width = 367
      Height = 22
      DataField = #21040#31449
      DataSource = DataSource1
      TabOrder = 4
    end
    object dbedt6: TDBEdit
      Left = 82
      Top = 148
      Width = 367
      Height = 22
      DataField = #21457#34892#21517#31216
      DataSource = DataSource1
      TabOrder = 5
    end
    object dbedt7: TDBEdit
      Left = 82
      Top = 180
      Width = 150
      Height = 22
      DataField = #36135#36816#26041#24335
      DataSource = DataSource1
      TabOrder = 6
    end
    object dbedt8: TDBEdit
      Left = 277
      Top = 180
      Width = 172
      Height = 22
      DataField = #25143#21517
      DataSource = DataSource1
      TabOrder = 7
    end
    object dbedt9: TDBEdit
      Left = 82
      Top = 212
      Width = 150
      Height = 22
      DataField = #24320#25143#34892
      DataSource = DataSource1
      TabOrder = 8
    end
    object dbedt10: TDBEdit
      Left = 277
      Top = 211
      Width = 172
      Height = 22
      DataField = #24080#21495
      DataSource = DataSource1
      TabOrder = 9
    end
    object dbedt11: TDBEdit
      Left = 288
      Top = 22
      Width = 161
      Height = 22
      DataField = #27880#20876#30721
      DataSource = DataSource1
      TabOrder = 10
    end
  end
  object pnl_Title: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object img_Title: TImage
      Left = 0
      Top = 0
      Width = 300
      Height = 50
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000012C00
        0000320806000000E6D6E62A000000097048597300000B1300000B1301009A9C
        1800000A4D6943435050686F746F73686F70204943432070726F66696C650000
        78DA9D53775893F7163EDFF7650F5642D8F0B1976C81002223AC08C81059A210
        92006184101240C585880A561415119C4855C482D50A489D88E2A028B867418A
        885A8B555C38EE1FDCA7B57D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F80111226
        91E6A26A003952853C3AD81F8F4F48C4C9BD80021548E0042010E6CBC26705C5
        0000F00379787E74B03FFC01AF6F00020070D52E2412C7E1FF83BA5026570020
        9100E02212E70B01905200C82E54C81400C81800B053B3640A009400006C797C
        422200AA0D00ECF4493E0500D8A993DC1700D8A21CA908008D01009928472402
        40BB00605581522C02C0C200A0AC40222E04C0AE018059B632470280BD050076
        8E58900F4060008099422CCC0020380200431E13CD03204C03A030D2BFE0A95F
        7085B8480100C0CB95CD974BD23314B895D01A77F2F0E0E221E2C26CB1426117
        29106609E4229C979B231348E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E6
        66E76CEFF4C5A2FE6BF06F223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D603
        70C701B075BF6BA95B00DA560068DFF95D33DB09A05A0AD07AF98B7938FC401E
        9EA150C83C1D1C0A0B0BED2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB
        7AF000719A4099ADC0A383FD71616E76AE528EE7CB0442316EF7E723FEC7857F
        FD8E29D1E234B15C2C158AF15889B850224DC779B952914421C995E212E97F32
        F11F96FD0993770D00AC864FC04EB607B5CB6CC07EEE01028B0E58D27600407E
        F32D8C1A0B91001067343279F7000093BFF98F402B0100CD97A4E30000BCE818
        5CA894174CC608000044A0812AB041070CC114ACC00E9CC11DBCC01702610644
        400C24C03C104206E4801C0AA11896411954C03AD804B5B0031AA0119AE110B4
        C131380DE7E0125C81EB70170660189EC218BC86090441C8081361213A881162
        8ED822CE0817998E04226148349280A420E988145122C5C872A402A9426A915D
        4823F22D7214398D5C40FA90DBC820328AFC8ABC47319481B25103D4027540B9
        A81F1A8AC6A073D174340F5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D
        8A8E6380D1310E668CD9615C8C87456089581A26C71663E55835568F35631D58
        3776151BC09E61EF0824028B8013EC085E8410C26C82909047584C5843A825EC
        23B412BA085709838431C2272293A84FB4257A12F9C478623AB1905846AC26EE
        211E219E255E270E135F9348240EC992E44E0A21259032490B496B48DB482DA4
        53A43ED210699C4C26EB906DC9DEE408B280AC209791B7900F904F92FBC9C3E4
        B7143AC588E24C09A22452A494124A35653FE504A59F324299A0AA51CDA99ED4
        08AA883A9F5A496DA076502F5387A91334759A25CD9B1643CBA42DA3D5D09A69
        6769F7682FE974BA09DD831E4597D097D26BE807E9E7E983F4770C0D860D83C7
        486228196B197B19A718B7192F994CA605D39799C85430D7321B9967980F986F
        55582AF62A7C1591CA12953A9556957E95E7AA545573553FD579AA0B54AB550F
        AB5E567DA64655B350E3A909D416ABD5A91D55BBA936AECE5277528F50CF515F
        A3BE5FFD82FA630DB2868546A08648A35463B7C6198D2116C63265F15842D672
        5603EB2C6B984D625BB2F9EC4C7605FB1B762F7B4C534373AA66AC6691669DE6
        71CD010EC6B1E0F039D99C4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37
        DA7ADABEDA62ED72ED16EDEBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51
        BA85BADB75CFEA3ED363EB79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EF
        D11F373034083690196C313863F0CC9063E86B9869B8D1F084E1A811CB68BA91
        C468A3D149A327B826EE8767E33578173E66AC6F1C62AC34DE65DC6B3C616269
        32DBA4C4A4C5E4BE29CD946B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D5
        9C6B9E61BED9BCDBFC8D85A5459CC54A8B368BC796DA967CCB05964D96F7AC98
        563E567956F556D7AC49D65CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9B
        ADC4769B6DDF14E2148F29D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625
        F66DF6CF1DCC1C121DD63B743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E9
        57671B67A1739DF33517A64B90CB1297769717536DA78AA76E9F7ACB95E51AEE
        BAD2B5D3F5A39BBB9BDCADD96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4
        F0F758E271CCE39DA79BA7C2F390E72F5E765E595EFBBD1E4FB39C269ED6306D
        C8DBC45BE0BDCB7B603A3E3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE
        237ED67E997E07FC9EFB3BFACBFD8FF8BFE179F216F14E056001C101E501BD81
        1A81B3036B031F049904A50735058D05BB062F0C3E15420C090D591F72936FC0
        17F21BF96333DC672C9AD115CA089D155A1BFA30CC264C1ED6118E86CF08DF10
        7E6FA6F94CE9CCB60888E0476C88B81F69199917F97D14292A32AA2EEA51B453
        747174F72CD6ACE459FB67BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC
        9BB880B8AAB8817887F845F1971274132409ED89E4C4D8C43D89E37302E76C9A
        339CE49A54967463AEE5DCA2B917E6E9CECB9E773C593559907C3885981297B2
        3FE5832042502F184FE5A76E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92
        E69D5695F638DD3B7D43FA68864F4675C633094F522B79911992B923F34D5644
        D6DEACCFD971D92D39949C949CA3520D6996B42BD730B728B74F662B2B930DE4
        79E66DCA1B9387CAF7E423F973F3DB156C854CD1A3B452AE500E164C2FA82B78
        5B185B78B848BD485AD433DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859
        F1E022BF45BB16238B5317772E315D52BA647869F0D27DCB68CBB296FD50E258
        5255F26A79DCF28E5283D2A5A5432B82573495A994C9CB6EAEF45AB963156195
        6455EF6A97D55B567F2A17955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796D
        DADADE4AB7CAEDEB48EBA4EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE5
        1B5F6D4ADE74A17A6AF58ECDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A
        9D7F5DCB56FDADABB7BED926DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78
        576BBD457DF56ED2EE82DD8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F6
        45EFEB6A746F6CDCAFBFBFB2096D52368D1E483A70E59B806FDA9BED9A77B570
        5A2A0EC241E5C127DFA67C7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD2
        3ABF75AC2DA36DA03DA1BDEFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F
        579EA09D283DF1F9E48293E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515D
        BD6743CF9E3F1774EE4CB75FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3D
        AE3D477E70FDE148AF5B6FEB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D5
        73D7F8D72E5D9F79BDEFC6EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC
        5D7A8F78AFFCBEDAFDEA07FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E
        09879EFE94FFD387E1D247CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7
        B2A713CFCA7E56FF79EB73ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F3
        72EFABA9AF3AC723C71FBCCE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC
        40FE50F3D1FA63C7A7D04FF73EE77CFEFC2FF784F3FB25D29F33000000046741
        4D410000B18E7CFB5193000016FC4944415478DAED9D09D6E4B60D84015E29B9
        4672C7F8A2CAB444005F81EC71EC3CC751423D7BFEEE16C5054BA1B889FE97BF
        FFE37273FBFCF7B9EE3F7EFFF2F963D7FCCDFD49E0F3865FD7F35B3EF77C8EE7
        2C9E89DFE4FEE7C375271C56699FE79EBF5AE6FCCDAB7E9F0F03E9E3EF988DC8
        FCA20CAFFCC62CFF7327F3F5A78EF1F96E63941B65A05E51F6189F7B57D5BB3D
        B3CB638CA897CF72AE791FED9C9F07E4EEB34ED19E4FD9D4D50879C76FA3FD45
        FEC3551F525EFC3EFCFEEE901F655EF9326FAFF2A5FD33BDB32E97A61F51F6D3
        461F96DF359DCAF763A54F5DA20DB6D1076466AE3A8FB2FAF3B39C6E838FCC59
        F72BF560D437FD25747FDD0608FB8E67CB0E4CEA5F75173F8A34563232A60B1F
        8BBA5F863ADA6B2FFFEB0FC08A5626185C0A0EB74260B4D96628C2AF000EABDF
        982FC1C0CA112D412640C835BD85821514088EEE65AC2BE84D4798EA7D8CB0F2
        183090312C7F631BC2B9EE341315595ED4BF3B12CB0B6319E2E89E86357A1B12
        207C01DD708831331C081023403A1CD967BBACEE15F0CCFC4639E020D8DFF7C7
        0A86F25765E1A1DBB84F5013A04340F172F81B2417FD10F4A81383BCEAB9FA6D
        3CEDB2D2D9908084007BA745F09AFA28FB5C6D266C33836ED4CDD6320200D30E
        695F465B6B9FBB3F856C02309B5FC29590B63D9FFFBCEFFA0158BF5C57082550
        FE0A742E055D8CC63F8475E567080346CBE8311EF14E87790AAE48EEA9F83B39
        0165FE4C30CD289B8A52E38AFA2518D8250E446348A0212BA1C376676C5174CC
        44E970F1FBA706C39A03B13D93B964591565CBA11EB0D0685FF518AD2EDF1892
        B68D6CEF02E351E6552CC2007204AD1E245A1D6643973287E9E7F6BCE1796F7A
        B19E8FADCF957C8632A0064C0F7BBB52D029736BF2125B2493BF9A0C1EC3DDB2
        A10662BD2D498C902E03286D1F3E41FD144EC5F7F2DB8759956D1A82FE5B2F5F
        BA84411FC7B5D04C613DC9BC1809205049CBDF343AA812568048B627AC6A9AC3
        28C360F7C2A6E2C4A0ADF2500605301905408FB1A14BF551FC98DD38446B8BFB
        0BDBE8ED8363445406C07D7E18A8EBC836EEBB8B021EC25CD4D907DB184C6DEC
        00E7AA7C4D812AF25D185A82AC02F63600246015000DD4DFA62E859DF1F9CEEC
        248FD29F00C6F0D59E4C41FD963BE460909FA6F54C5F817BB5CD947163A00562
        2148743DD347E04BC8235291713D79A2D7518E077046FEB07F33F8F6CBAEA74B
        58B05EC2201825ABF9C1ACBC28B0B90ABB04DD68332365530E81F0FE2446B702
        414638F36614A6DF8375D9D58C7D022DA22359803216D26E650FD1BE3141E501
        9790536313DD1986763308A0D905FC02E07B5080E3FE0C3444EED1A5FC095BCA
        6777A03181CA1CED9C009B693B6855FBC3E1C6265DC8A182DB7882880424A6AF
        E051F28BBAC1CEC6AE3EB095095ED93368E098638D59FF6E779BEE9D954CEF60
        184EE20D3893A935FFA20F59D9A261BC2B0189ECA905E3F2318CB7BDF0BABB84
        CFA7A96053B61382E0009E4D16E6DE061BA72EAE06500E654BBEF377DB28D7A1
        940E7A3AC612065E4A91486A304A28B122F005C328166017A87F44EA7886CE61
        0518D6C66B083C052805E6E994D3F9AA2B8488EC55668002BB0A31C614FF8F39
        5032C6A6ED5D0E005E19FFB2D916005B06AE1624B26E97CF4900131DAD635DBD
        1B58B289FCACE9687CD173322C5BEB26CC28EBBF1B139BB63C9ACC2117696F80
        1B4129F36A4025652328422FE15A1CF49FE69E20D799B419CA447EC9B028939C
        36E33395F66DD7EC1246E3A221970A270C064254EA4A053F3F0CBBF2A60E0E86
        2AAD229A184A095322D016B0081E8C701DB8AA8E696069E0058A8CD6C22C39BE
        005012C041BDD230B3BBB1FFDDC0E0387B55B398938D6D804E40166094CFCA38
        4E397EB191621086E73B98FB18D25E610609F22A935021D9D402621CC3CAF208
        4C0C6A9B417F61A55640CBF4A600B832C2D59616761A75400090F64DDBE45041
        B707633B1370585FAD57F71309CE8B2FEA7DFAE3C580CFB291C7DBAE1F80F5CB
        95284C25580145B496E0606D9A940644E1959373CAB62295B034EB20A503F5E1
        1CF7407AAB2F014A229D77674139A6CE67B34E31263336CF5B8048283D0007A0
        38102DE9CC8F738D106702C448436D03C50B3BD1DFC6AC8BB663883C7A1DB834
        415958032C47F7CE5C1862078D5D77F319D46FA0993A675A5BF228D0512795F4
        6DBC8EACE91E56F7CB2400993516B502BEB16E69470A22EBCC5C63EE1DD068EF
        65FE696B398B6C90AFB5724CF3085FB8DCA48B1933F59FFFA3BFE4B86FFDB717
        5E39E84EAA190D8BF11FA196341A7C4F815B39A776012F897AA5B81D73B28DA2
        C99E30A00E0613E31DE1242C4B06C167E4116089B419D9D4611370329206486D
        9C3299477308E778550CEE8F9CE028D636EB303AAB22E30859A8EC1690DD3119
        82471FD4DF002DBB659D2D0BAB9BF9ECBBA300812588805DC88406BBDA3A2920
        0108E0BDEFCA79E5E560B0B33D669D19F2B91E742600065A387B09AD8B485D36
        BF90004B3FE8F62F79C2FFB2B2F5DDEB218052B66232393CFBC26B598755EDA0
        B0630A184000852EC2F4124A19A1E139434444F46A0AA9F553652875DF85822F
        8B059947826A630AB65B5FC4E8B6464FED6622AA339F701E00EADD45C6424C61
        7F0360D323F6D07117195C0F79A693F7B6746645599B74F7022CF7CF13587EC2
        FAC018B6E3660D481F006F8015A01D72A1AC7A59D1F5F51A24376B651AF49DE5
        A90D28FBF6A5BE3DCFF53BD853E809861CC196E37604A95CCE238B4A577FB8DC
        C546A21EE1A570474B92116DB9AA8BC8E7DE76DD5DC25440FEFAFC33BCBE934A
        5231481E6283312843F3F016BB1A586D9C5880ACDD1363DB184E772618478F66
        C53EE02C9820181803F95C3A753E01A51B7AA4C794B9655A054B89B4C2926E0D
        64FEABAC0A14ABCB167AE940538045E71716E36D6C6C07C609C4C596A46BEE18
        B0DFAD83E232918D8E088ACAE0A85B7D368255D42DE598E5B5EE5DD8405FA396
        F5EEC04B193596DED99E3DBF937119BA95FE2C485CEC558013ABB6472290CF65
        8A1C5B26C8222F33AD63F12B8B89B368C71BAF1AC362236810C1B0A2A12D6A94
        001AFBC2670B3A1AEC03CB0AAA2BA1E50A604D904B870A0373555A0D4ECFBCBE
        740FC318C4F02402077845DD03C474462EBB07302AD649A87F004BACC189D5E7
        51D7A10C41DBA2CC46E4105DBECD8A7232AA8136F9F4C60423596715DD2B38B6
        ADE0977569403A923D453DFA730A6629F70E6A08883AD84F70D340421D6FD99E
        319F1EF0663ED061FF5ECC650DB23A7B493BD6FC74A2272AA14139C7A52CEA1C
        3243198D6505536390679AF2EB6AC31BAF670C2BBCD81E07B95C1BCA19AD7C70
        233433759A45404305493A5B0CEA126395B18F5A6E3F572B03141DB32E91DE50
        0F01108311AE009340D400AB000A40200CA339B6382C0C78B4B1AC58F7833551
        666422CDE117E0E86DD72EDA6EDC87E389AC8BEEEFFB360930C169F47CB130D5
        66C0F806448E6D58D1765BE56891CF76C1A6ADF5933576082E6087B1D6AACF4C
        065315C06941385C65DB2B081B15E6097B37CD8FB2A3ADA71EE83B0280C8A75C
        B79E074188DBE5E3EAC76FBBEE31AC6B019E12402AEB2AE54C912820F555B711
        CD9A8087D7BD04366B86D50DC568181539776C6BA08E326D6F34B232B0547494
        2969BBD18F1F8E158BFB006241F74D1D5A1C4FA2F0F5CC1662E1646774CB547D
        9B0090ED2FB9A25B17C1F6ED2FCA16E6DF650373312513B08BFF8732BB0D786A
        20D8A4D9302F323E1DEB69C123C040F61462ACE6F3F752BD110846EF3612701C
        8085DF6CD125DA278CE76A7A66DEACC73D5895AC69ED8D6C58D2BC97BB2BE0AC
        29834BD346B93963E851F6AB19D62F5781140060CE1EF16D0D1DCD6BBD5600D6
        4C800DA1C99A04E056F0506ADCBA85564AFD18F405852E83E169CC9A46001286
        C948184E1EA0B163184FF32EE4E36B3EBD7DCD28751FA1153061F03CC7D1C080
        FCF1E8E9D84F3D0706AFCB690B70D501BDC6BD50F772569545CA68C3A4F6C0CC
        AE65742BDB1B19167023C0624FA5014C04EC3620FB18067A026076122CBD8214
        025FD8B0C5FE4A09BCEB5B302A007BAEC0171B621AFC5681EF6EC44CDF7653C4
        B3002AF11D69D3BA18BB13012115FF2B7B091F3DAF7DE3104E18EBB407134625
        0A0CA5169D4D455FBAA29C822F25D2510280ACEDBDD2A8BDB29AA9C804125BC6
        610C06B9467A3ADD0A3C59475912D18061E79C5137B09681B68F74701340EDA0
        276351569F4D1CAD757F3A90B2CD8D09D566EBB6B420D30633AB6797D7DAC467
        590F8745B4634D9BF7FB6B5E3AF013680014BB15FB5D763E0D2A82699F152DDB
        D29EC2BAFC45FD448264B681A066C57A30669B5DB3AC9FF652C256C9D2F2B3C5
        3F26750D799841F64C0B9F7DE3559B9FB3BD012657130E68644CC1764597CC4A
        F0E958D8DB85741CF88E745DA1054488529D5588E2CBA8598F6EC41C9CBF07F5
        473957A7FC956FB1CA5A8DBE770E29178EBDAEADC254BE385103D6DEC50B601E
        C1A69EF9F1651C663B6BC77B0DB867FB82BD6D99D1EDC8A5D385C97590A44E5C
        5F63F380C0FA86850C38BD4DDF964E64DE3368C97BA76C8E93F96233B9D15CF2
        AAEEFED3DB78964F784B9B800419F54033AD70FA8DD7DED3C5577604A0FC2BCB
        300DCAE9A30950935078960C02F1FA2EE1666B4E8ED711B418456CAEB2658428
        C1AAF03AC0209D3024804E008271DC06755980B214B4BC982EDA46235C22EACA
        36082C59FFEE805E6D9781EF4D9EF2FCA445BDDBB3AC239ACEF9539664863D7C
        BDCBD60144BB5F322686594BF75A295E4034444F1F8059DED14540F906746453
        1B402F7D5DC2C80A18C058F89C0419CB755E643D1510DA9B36663BBE2D4F01D1
        59032541817A0692309FB019066F0125BECC31BD94752F021065A4FD5BB0B451
        F642676F20F8C6CBFFF2B7CF2C211A32D128D78CC4CCC75CF85860C42E616357
        9D52DFF942C05F98931A8D41213014796FD01A613B430A45651EDCF01CF70824
        8B032A7844DE63BEBF2B66F64CF22A301690431BD9BDEA2C86DDBE6FF76EA09A
        95FCBE5873C312517EBCA94106B59379691D99E7C80589607B096C1B8717B05C
        D344A09160B1612ABBEE369F35DB754F59CE669F68D3953253DAE23E50661793
        A0120181366801FABA8448EAD2F253202C7F5A40F4AAB61901AB130EBE2BEBCF
        469EDF79CD85A3BA862A4595CA31E902CA38D145811260005E1098B01383E141
        618EF21548F4735FC6404362F4A3E3C7A2C63111218DDF1424B83E4A9812F296
        57C144D9ECD2624333BBA1E294D3B8E53D5B9BC5A9DACD6A8E3B4A06C5324601
        0FDBE390C7C28266FDE5DE17F6248EED00D0FEFEAE95DD8553B24CD15307306B
        A02832EDBADE2C6BA0CD80E569DBA943652E4B37D768EFDFBA846A0B26B61DE9
        005CEDC5950E7D157011EC568697FE6A25C7C0B32175FEB361E7F75F73E1687C
        5365B8084015CFCDCF0BD5F4BE35A1229E89613C9FD359D9BFBF6FB82AF8F929
        B728ECE8B844F259A98110A88E5BF52E075470941703CEDF8A4D907554BE8BA3
        4B142F6014E3DE8052BDE665D3BD8A7AEC989099CE7611601270AE56AEE6D165
        336697D0226F9151A41BDAD5F2B54D2A1BCFBAEA331B50F43E11A15B72147054
        9F0224BE0F580276A293B27309329435C127D3ACEB09B37EE2239825A4CDB33D
        70CEDA7DE24598BCD247DDC2D5C22FB8C21E2F9C79DD550B47650D870256393B
        16A3EDD265248AED898D2904E27B8194E1F7FBDB97BD544AE75BDE41CFA1FC15
        780204D521FA4AED32B83E9D5F0E9EED34DB330E719672026E8D595ECFBC00C0
        2CA36D8C66E4E42111E594FAB609C778C6FA8A960E6C908BA37E1D34EE7A3556
        07DDE57BEFC5A1638CAABA5BF9DC04BBFE1A6882F9B2FCA4015EE876D00EDB4B
        14590743DD338099AEE70ADD9341D33E382E4A1B59023EE46DBB74B485723725
        0209AA705E32450B30C2A4903C9B9EFC6A96F52C6B10E78FB64C008826DEBFD7
        AC9021BD19155FCF97C2D470233AD460EAAFBF0FA88F1385CCFB40A930BA19E9
        F80684FBBFF9D236ED1A71868A7B2057669311CDFDAB63F728DDEBCFFD8231DB
        B6BC333DC0C7CA9997ED3FAE2FE15326538024FB058D8C2500A1F21DD8BAE3AD
        3E02AC3B169580B46186D4A57312E201ACFEFAE13AF063A703EDAEA55E97D7D9
        94EC6556D61CEC34FEE2FDE7695F0005023D01954194362F2C55D95C07333304
        45B7768602D28ADF21FF870AA4CD56A00F9F7AEE531E6FBC6459433125004718
        B2D5BDB14B2F8285B2F279462FA27C45B604802CC7CA80F87A9A1EB13E7F39EB
        C688BA3873945D27D5F0FE935544D2C84BEF2958EDF6FB295B637ABDAF0E3F24
        9D3A04D94B3AC88ED9F5ED300D48D7B56CBDECEEA00EB05487AFAE9CCDEE3C80
        36DB87AE279C53F607C69212C8B16F8D5ADE3726C14DDFC22000B2D963694D26
        5B5BF9D98C32836AFAC36A5FA267FA0E03224F63CA204E10521BCB3FB85F40B9
        3B7A0F4B31D2B7DF7BCD57242B325B3FB2CBE8405662AAFD3A5FA9AC3C9F8A08
        25765604C3C8EF8DA2F745830128B13914632D351B17E55DC6C5991AB9E3BEBE
        002FCACC7A7590B002861172D9741393BD44FA59873E13A86F4CD84CB52FC0F3
        8CE5AC6F217DD649B9FCCEFAB66515CBEA71ED52C5EAFB6ADFF8027E7D905AEB
        4DC04AFB08006C206A9095C886FA718C0746DDAE56A7690C03E0E04DEE4F7BB1
        F66ADAB3CCA8828D49304739154C0824F35E5FBFC8C00B7B0A455577D1967223
        88472AD93B08DF05D59040FAD6CBCF41AA86BCB5BBB7824ED58B6FED3C07A976
        D0DAFC1EF570D6E51CA47A0E52FD6DD739481506720E52D515E8CFFD7390AA04
        3CD84CD86606DD3691B03028EE63A47D196DAD7DEEFE14B23907A94E519E8354
        C1CE9A33B6287A0E52EDE005B98E4D999CB5EBE0CE729ADC16E6D2667A3BF89C
        8354E10BE7205532867390AAC5FD856DF4F6C13186EBACDCCC93E359E7205505
        E885D9491EA53F018CCD920D3305F57390EABBAE7390EA3948F53B5BCA6777A0
        B12E4779DA760E52A5DE52E7C19AC249BC016732B5E65FF4212B5B3C07A99E83
        5485059C835415D83270B520710E52852EF83A1DEB652328422FE15AE720D57F
        ED3A07A99E8354CB21C8766220FE1CA46A313101D35C18D53948F53F739D8354
        E17C36EB740E520D273D07A9268B69406659B7C6DC3BA0D1DECBFCD3D6CE41AA
        BFED3A07A9F6289F914D1D360127236980D43948F51CA45A765EB6DF825CF30B
        09B0F4836EFF9227FC2F2B5BDFBD1E0228652BEC1CA46A14500733CB28720E52
        F573906ACF0FEFA2D7498F5A8B770E52557F3807A9DA3948B5D8079CE51CA42A
        6D3907A9AEC303E720D53FE73A07A99E8354D3516B3377E5B72C0075FD7C0E52
        85EEB776ACF9E9444F544283B2BC4ADC10F059466359C1D418E499A6FCBADAF0
        C6EB1CA4BA616509440DB00AA00004C2309A638BC3C280471BCB3A07A99E8354
        8DF907A8C1770400914FB96E3D0F8210B7CBC7CF41AA2960116A44B326E0E175
        2F81CD9A617543311A4645CE1DDB1AA8E33948551D6FFBEEAE65037331A57390
        EA06B0160645C6730E52FDA3AF73906A6760093C7B86F134EF1CA4BA0766762D
        A35B790E528DDF2AF0DD8D98E9CF41AABFE53A07A92E919E4EB7024FD6519644
        6C4E8D69EDCBBA81B59C835429775B98EA6E1D9C000D80E21CA49A0E546DA12F
        F3377C7FDB750E52BDEF3DD337E7205582989F835403F0CF41AAFF35D73948F5
        0BDB20B064FDBB037AB55D06BE3779CAF39316F56ECF394895FA3A07A926A848
        702F021065A4FD5BB0B451F642676F20F8C6EB1CA4DA9C6D7540058FC8FB1CA4
        EAD2DEA54BECBD4EFDB795E548B0D830955D779BCF9AEDBAA72C67B34FB4E94A
        99296D711F28CF41AAFFD9EB1CA46A9AAFCECED9B2C8D190F73948D5A5FC7390
        AAADCFC26ECE41AAFFFE750E523513C35E667CCE41AAF3FB394855820C654DF0
        C934E720D53FE23A07A926087783B37390EA37D0B8EBD5581D74770E526D011F
        F2B65D3ADA42B99B12810455382F99A205189D8354AD40E51CA44AE7CEEEC0C6
        B17B94EEF5E77EC17390EA0358E720D57390EAAF5DE720D576FFC92A2269E4A5
        F714AC76FBFD94AD31BDDE57871F924E1DE21CA45A76790E5245FB8D40790E52
        156515FD0C433A07A9121846C865D34D4CF612E9671DFA4CE039485583C73948
        55F3531FFBFF3B48F59F5724C798B046759D0000000049454E44AE426082}
      ExplicitTop = -39
    end
    object img_Hint: TImage
      Left = 10
      Top = 2
      Width = 48
      Height = 48
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC61050000001974455874536F6674776172650041646F6265
        20496D616765526561647971C9653C00000D3B494441546843DD9A7950D4E719
        C7DFE94CA69DB6D334C724E9A4496AD468A2A878AF288772ABA8403C22A248BC
        0F4E4110BCE2D56827499BA67F6412F34726ED4C5B6F50B945541441700111F0
        622F7617D805F65EF4E9F7F9ED6E8224D8A02619E3CC67DEDFFE8EEFF3FD3EEF
        FB7B779D411091789279A2CD73E37F5E0136D758445FD2AACD22F58A59A4549A
        45F26593D85465165BE416915D671559F2EFE4171935960D9935D6835B6B6D07
        B7011EB7D7D976EE6974FC666FA34378C067E9381D755DFAE6AFF5B7D65BC5CE
        069BD8DB8C7BFAD07BC9DF3703030D0063E23B180CB31DBBAF3B686F938B7D4C
        A3E3EEFE6667E8811B4ED19BFDF89C56FD1304C8AAB562166C6277835DECBA9F
        B93045FB6FF7D03EB017F0F1472D3DF4B1A267E7C72D3DC2C327CABB02014512
        BA9F8A99FD71670001D2B184D8C0FE1B0EF13EA699D9DFEC8860C37B6EF5D08E
        9B2E76E3F8C09D1EFAF0B633FB835B4EC1E058220DCB2719E67F94004915A65F
        A5569A9FF3BC039B1020F5AA4564E17DD8D368471889883D379DB41D6C697652
        26D88619E173FB6F3AB20FDCC412BAE910BB71FF66342101E653DC01922ACCBF
        85FEEF59FF87780786A5579BE55BAE5ADAB36A2D91D9289E860089E8E0DA4BDD
        22012FE01604D9D6600FD906D36C3EADD10587D88110FB6EF564EC43804C3CBB
        111B4202D67E226F10AE00DE9BAB2D37A0AFC9925B82B642EBF1BDC455E637B0
        E66FBFD768A75DCD0EDA79DDE6C42E14CD019210607D8549ACBB0843989DCDF5
        B6B4CC46078C3B28052F7232D884E32D786E7B93E3938C5AEBD38958F3099526
        29BC3BC058E86B597F37EE7BEFBACDBCADCE1AFC78025C310F41C7EF6C87F856
        EC26D980C7AC069B1301A2DD01C6A1A39FA5CAADFAF46B76DA74DD4E4920A1C1
        4512D884E7331026A3DEA649A936FF1D01DE4CE41940E7D3E4165D16AE7BB477
        708846BB05410207B48DC2A8E8C3D398CAA69D4D76CA82E934984A01A9808FD3
        EA6D9664B9F510B8BBA9DE4669309A0A924122D888304C02E073FC5C3A73CD46
        2972AB2DF9AAF5D3945AAB62133E7368D6E6710B6AEDBA81ADF786C38C0023BE
        F7F7C02EBC847D78694FB3DDBEB3D94E9BD1A12414DA00A3CC469088CF7C2E19
        0653DC26D9685283EB5A6F3CF749F77248BEDFADB1B1972E3FC3CDD986A6ED80
        0E96AA5F36BED47AD3EF17D91EEC0ECC6E6C8B1EB65FB7CECDBE6675A4432C01
        05D7D6596955AD8B35385E0738105F6393891C10D7D65EB5D09A1A176BE516E9
        1C5F63837C2F3FC3CFB2C6EA5E7ADC9854DCB3B9CE42F805909E8E5D6E731FFA
        0DB0035BDB7BFCB58D7DDA13645B83556C965BDE4EADB33A589C8BBD2BB7523C
        5801F8F3BA3A18E260309B5863A63F3758E8E04D1B1D53DAE928F81CC7FB702E
        F1AA99D620D84629B84B8B35588B35B929AC9388C00997BBB393F1A27BCC6760
        6BE563FEDEE837C0F27306110F12ABBA05D6BD148203A4CBF11BA5D61295506F
        35AC42A1E5301107B3F1185773618C6BAF98E8CB5B565259EED2BD7B28D1E7DF
        5D9C6B31F7D017B7D079845C03931C8035588B35597BBDDCE2585F69DAB2E152
        17BEE04C2203A679163654748995E546B1FA5267FF01E2CA0C22F64C8778A7B8
        4DC49DED10C9309E5A67114918998DB596FC9528CC05E36062058AC6579B28F3
        AA89AE773A25CBF7E0DE01B7DF852759ADD149E9B578DEADC15A0C6B2340DE86
        1AD4C28F48CC184693605F4B4ADBC5F2F386FF1F606969875872A65D62F905A3
        5887D9585BD9CD63C09A1AF3DD782C836528B69C41D733605E8BAE133A6CEDB9
        F7BDE07B6F9B7A681342C4BBCDB3266BAFAF355B52EA2CA38048ADB788772F1A
        61BE432C4543E3071220168963403C42AC2CEF142B2BBA0EBD8B6E2F034B411C
        585DD54D4DE8BC131D373906C65D3C23373869758D09CD7069B2F62A3424416E
        FA2C496E12EBAF744B1ED8FC4307585CD621E22E189F5F7EB9CBBCEC4A372D81
        E9588C8B2F77D157B7ADE444D78DB6BBD4F910389CF7E820343C9A3CC65577D3
        CAEAEE5634E797B1E78D0F15E0552C9FB0A5A5EDE1481FBEE86C47584C79E7CE
        18185E54E962315853D54577BA9D92F10EEBC069C7335D78B61133B8AAA69B62
        A0B7D0AD1F8B31B6A2336DF1394318964FF8B2B32EB084463EF8253E6788C24D
        ED2B2E1969F9A54E8AB968A485603E8E232F7551644517BDCDE0F8C075B3645E
        67E979240C56FC9FA1D14C0BD0A06868738D28B00035175D747988C3F1CACB9D
        B4BAA2D3B9A6B26B45BFDB285E98DD7C631CBAB108825178700E446695775238
        E0711E87C1B92F6F5BC88097578D97F151608D83D87EA32A5CDA33DDB56663E4
        DA5C6B21AE2D83A735585EEB6BBA3FEA37C08ACBC61DF195780021E62079D805
        23059F3752E0398344088E23707E5EB9910E2BACA483794597F391D043E35F77
        2C3417BAB3A1CB353CF5B876283C44E0FC7C84588E10ABAA3AFFD2FF0C541A77
        2C4380682CA199170C1404D3016506F22FEB20FFB31D3403C77C3EA2DC40875A
        ACA4EEEEA15B58C38F82061A5FDDB2D06CE88603AEC1B5B86600E03061381F89
        80B1686C7C85E10101AA3A77C721C0020460C1E0736C1A4210F4032C1872BE43
        0AF1C54D332961BED9E0782458E31F8D260A45AD6068B379A996D4309CC3F959
        A8177DD1404B2E1928F642C787FDCEC09272C3CA980B1DF40E88E207CFB65328
        0804FEC00FCC286B9744F75CEBA6DBF8466DE8703C12B7F05D9059D3494130CB
        DA5CC3BFD455936BB387C873EDB410E116E17841893EBDDF00B8E1A9F925FA19
        5185BA8CA8025DE61C30B3489F1156DAF64F16F483B0248E42B11506AAD6DBE9
        5A9B9DEA1E9286763B95B7DAD02C97263749D22F6DA39062FDE7E1F9BA8C887C
        6D267B89C408164617EA7FFDA0000201046E949893A715B30A7522A2B4ED95B0
        B236670084A79D694391369A71B68D3E6D325153BB836A74F687A209B3F7415D
        17F997E8254DD6E61A2125FACEF002EDEFC2513F024482B9A75B254F08D0FF8F
        39CCC0FD01F0C0DCD2361159D62622CADA8AA743DC0745A694B88A45A373656A
        1BC911A04A3B30EA307B85D8C9669DD1D33404604D1F1000DDF022DDE159055A
        3113F51F3E0052CF29D28939E7DB2422CEB72DE000938BF534BE5047938A50B4
        5847AB2E76D0652C836AAD8D2A307E1F78C6CEA9AC1453063D684D2CD2D1388C
        AC1D50A2BF1756A49B0104339B57C3406720CABD84428B7522A8E41BFC4AF4E7
        D8FCA87CAD8414A4504B2BCBDBA95861A1AB30764963A38BFD5081F37C4F1EF6
        FD98B37A9AE0D6F0C2C87008D4280AC4320E426D1E438BF5621E02CC1BC8128A
        C86F15A1791A1104024FAA4570AE5A4C3FAD19232BD0DE66E3C34EB7D250F066
        5E2B7917A0707E2B856336FE5ADB2975B60A33C154BAF17C2EC592395063A420
        368B67C760648DA1A75A254D0E212BD619028B75D16185F050A41561A57A117E
        462F6617BADECB07BE0361057808E6D978B09B200408C9558FF3CDD368BD6174
        D8690DBD7E5243AFE5AAA571D8290D7971105C1B876B11C55A4A286F8351037D
        7EAD8B3EABEFA2F7AB0DB4E102D67601EEC333DEB89F9FF9464B4383580BCFB3
        8E6FA1D6115AD83ADF13804384BA83CC44987E77A1DEC63D01824FAA47079ED6
        B44E82F05B6C1EC65FC971C1210683371082AF79E56968148FF83CEAA49AC6E0
        1A330A78C1A0740D9DE67BF9992138F7275C7B155ACC201CBF896B131034B048
        EB0C2BD2CE65F37DE9374030BADF8767430A5AD5FE455AA93343B9F31EF31825
        F3303ACC3D133C1BF7C1E77BD3FBBA745E4D4372D1FD5E21067350CC8E2F6632
        B454D703BC0166E01BFA9F81122D5EDAFB7821B844DBC962A3D1DDA128C8C578
        16DE0023B8BB39AAFAD118479E42F7D810E0AEBE7242452FBBF923460E3E04E7
        87E3BA17189DA362CE7BE5AACD7C8E9BC1DA83713C12B3E053D84A4120304F33
        0588DEF41B20B0A8557C8BC2D640FF8256CB847C0D8D80C9E180C7B1B92A1A7F
        4C9939F698F2A9C94715B1938E2BCBC7E0DC30F02ACCBD744C49CF1F75F1228E
        39D01B6CFA8492261E559C997CB82572EC71A59890A38A1A7F4ADDE3C50D006F
        B1369AE57B5A4DD373546BA7F306D28701059851A01101A7D421BE796AF32408
        4F00B2932A9A7A4C910523C2FBB84A4C3EA21053703CF1B8729C57AEEA6FAFBB
        033C7B4449CC0B08300801469E50FD7BFC11C528D97F5AC4E4432D82034C3CA1
        12BEB9AAB77D4EAB9D13A1CD4C4508BF63CA75012794DF32CF61061E003B915F
        8E32D8374769F44507FD8E2A327D617842AF0032FE7C4A2DC6E6A9838621E01F
        60FAD9230A7AE6B002B3A1A0A108E59DA34C1B0FD3E87EDF00C23F57190D7D1B
        EBFB1E6959871A2200E11ED70C08088B69475A064D3D74679C2F0CF40E20C335
        D969B590E56B98881108F0F271253D87001C82C30CC7D29A7452952D3BA51298
        4121CB518A7130E89E016E10EB0F9F7AA865D434E8FF50010402080E308D970C
        9802E353F341DED7447863FD0E929691825E3CAAA0D7B07CBC4EA908CB24DB07
        B38451620A8E27B996902700F4A1FD6305989CA3123E851A3105EF89079F02CD
        BC4978E1DFC22C0CC27260B8FB585EE493ABDC31059DEE0DCFDE4F164076124B
        8797C4FD78CB72B1D38031394A69D7998051765C41B2A32D3140F4E5A70BC06B
        FFDB605B6DC9901D693938194C02B243E0BF77F6CB0EDF790688BEE0E57D3C4B
        E849FCA38F9FD7DF4A3C8933F03FCF042393F6D30B700000000049454E44AE42
        6082}
    end
    object lbl_Title: TLabel
      Left = 80
      Top = 13
      Width = 160
      Height = 23
      Caption = #31995#32479#29992#25143#20449#24687#35774#32622
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    object ClientDataSet1WideStringField: TWideStringField
      FieldName = #29992#25143#21517#31216
      Size = 50
    end
    object ClientDataSet1WideStringField2: TWideStringField
      FieldName = #22320#22336
      Size = 50
    end
    object ClientDataSet1WideStringField3: TWideStringField
      FieldName = #32852#31995#20154
      Size = 50
    end
    object ClientDataSet1WideStringField4: TWideStringField
      FieldName = #37038#25919#32534#30721
      Size = 6
    end
    object ClientDataSet1WideStringField5: TWideStringField
      FieldName = #21040#31449
      Size = 50
    end
    object ClientDataSet1WideStringField6: TWideStringField
      FieldName = #21457#34892#21517#31216
      Size = 50
    end
    object ClientDataSet1WideStringField7: TWideStringField
      FieldName = #36135#36816#26041#24335
      Size = 50
    end
    object ClientDataSet1WideStringField8: TWideStringField
      FieldName = #25143#21517
      Size = 50
    end
    object ClientDataSet1WideStringField9: TWideStringField
      FieldName = #24320#25143#34892
      Size = 50
    end
    object ClientDataSet1WideStringField10: TWideStringField
      FieldName = #24080#21495
      Size = 50
    end
    object ClientDataSet1WideStringField11: TWideStringField
      FieldName = #27880#20876#30721
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 224
  end
end
