object Site_Editor_FRM: TSite_Editor_FRM
  Left = 626
  Top = 241
  Width = 798
  Height = 583
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Site Editor'
  Color = 14607075
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000557000000000000000000000000000008F8500000000000000000
    000000008FFFFF8500000000000000000000008FFFFFFFF85000000000000000
    0008FFFFF8878FFFF70000000000000008FFFFF88FFF88FFFF7000000000000F
    FFFF887FFFFFF878FFF77000000000FFF888FFF88FFFFF8788888500000000F8
    88FFFF877778888877888750000000078FFF8788877777777777887500000000
    87778F888777078FFF8077775000000078FFFFFFF7778FFFFFF0077777000000
    FFFF886FF77788FFFFF0087000000000FF86444FF7778764FFF00F0000000000
    FF66644FF7778664FFF00F0000000000FF66664FF7778678FF887F0000000000
    FF66667FF77788FFF8888F0000000000FF688FFF777788887118880000000000
    FFFFFFF8971771191117880000000000FFFFFFF9891999999997887000000001
    FFFFFF898999999999917850000000018FF87798999899999999770000000000
    18F777989998999977777000000000000D888789999877777777700000000000
    0988898999987777888700000000000000587899999888779000000000000000
    000D989999999999500000000000000000058111999999990000000000000000
    0000111111999990000000000000000000001110000059000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFE
    3FFFFFFE1FFFFFF00FFFFFC007FFFE0003FFF80001FFE000007FC000003FC000
    001FE000000FF0000007F0000003F000001FF000003FF000003FF000003FF000
    003FF000003FF000003FF000000FE000001FE000001FF000003FF800003FF800
    00FFFC0007FFFE0007FFFE000FFFFF001FFFFF1F3FFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Site_xpPageControl: TxpPageControl
    Left = 0
    Top = 54
    Width = 782
    Height = 491
    ActivePage = xpTabSheet3
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Style = pcsXP
    TabHeight = 22
    TabOrder = 0
    TabPosition = tpTop
    OnChanging = Site_xpPageControlChanging
    ImageList = Tab_Image_List
    BorderColor = 13143690
    TabTextAlignment = taCenter
    object xpTabSheet1: TxpTabSheet
      Caption = 'Site Info.'
      ImageIndex = 0
      Color = 14607075
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Panel2: TPanel
        Left = 0
        Top = 22
        Width = 780
        Height = 444
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 14607075
        TabOrder = 0
      end
      object xpPanel11: TxpPanel
        Left = 0
        Top = 22
        Width = 780
        Height = 444
        GradientFill = False
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Maximized = True
        Title = 'Site Info.'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = [fsBold]
        TitleAlignment = taLeftJustify
        TitleStartColor = clWhite
        TitleEndColor = 1785807
        TitleColor = clWhite
        TitleImage.Data = {
          42050000424D4205000000000000360000002800000019000000110000000100
          1800000000000C050000120B0000120B00000000000000000000A9DAA6A7D8A6
          ADDBACB2DDB1B5DFB5D6EBD6D5EBD5ADDBADACDBAB96C99492C99072C36D72C3
          6D72C36D72C36D72C36D72C36D80C77E77C4769DD49CF0F6F074C46F72C36D72
          C36D72C36D0071C16E6ABE676BBE686CBF696CBF69A1D5A0E4F1E4D0E9D0D0E8
          CFD0E8CFD0E8CFCCE5CBCCE6CBCCE8CCC8D6BECBDEC4DAECD9DFEEDEDEEDDDDF
          EEDFEFF4EFC4E4C172C36D72C36D72C36D007AC57771C16E71C16E70C16D70C1
          6D93CF90E3F0E3A7D7A7A5D1A3A5D2A3A4D1A3A8D2A6ACD6AAA3D5A3A6C090A4
          CC9B90CF9092D091A1D79F9ACB96DEEEDEB0DCAE72C36D72C36D72C36D007AC5
          7771C16E71C16E71C16E72C16E8ACB88E1F0E07BC6796FC16C71C36D72C66B73
          C5707CC67B6EBF6C71C87371C47071C16E70C06C79C4757AC079C5E4C4C1E3BF
          72C36D72C36D72C36D007AC57773C16F71C16E71C16E71C16E7FC87CE9F2E982
          C28072C36D76C5726DB77E70BC727FC07A71C26F71C06D72C26D72C16E72C36D
          72C36D82C880ADD8AAE2F0E272C36D72C36D72C36D007EC57B70C06C71C16E71
          C16E71C16E74C471F0F5F08BC7896FC27272C36D72C36D72C36D72C36D72C36D
          71C56F6CB96D6EBC6C71C46E72C36D85C48383C881F2F7F275C47072C36D72C3
          6D00A8DAA769BD6671C16E71C16E71C16E71C16EEBF3EB99CF9770BE7072C36D
          72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36D88C68571C3
          6AE8F3E8B1DEAF72C36D72C36D00D7EDD76CBF686DBF6B70C06E70C06C6FC06C
          E0EFDFA1D89D79C47572C36D72C36D72C36D72C36D72C36D72C36D72C36D72C3
          6D72C36D72C36D72C36D6FBF6BD4EBD2BDE1BD72C36D72C36D00F8FCF891CE92
          7DC77C80C97D87CB8488CB86D9EAD8B3DDB28CC78881C47F72C36D72C36D72C3
          6D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36DE8F4E8EAF4E970
          C06E7CC57900FCFDFCF2F8F2F2F8F2F2F8F2F2F8F2F2F8F2E4F1E4BDE3BC8EC9
          8C8AC78779C87C72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72
          C36DF7F9F7F4F8F4E8F3E77DC77A77C57300FFFFFFE6F2E56FBF6C6CBE6C6EC1
          6D6EC26BBDE1BBC2E5C071C76671C46C6FC67072C36D72C36D72C36D72C36D72
          C36D72C36D72C36DF7F9F7F7F9F7F7F9F774BE70F1F6F187CC8576C47400FFFF
          FFFFFFFE8BC2A172C36D78C57071C26DB2DCB0C7E4C86AAE866EBE7571BC6872
          C36D72C36D72C36D72C36D72C36D72C36DF7F9F7F7F9F772C36D72C36D6ABB67
          E2F0E2B1DCB276C07400FFFFFFFFFFFFC7E1CE72C36D7CBC7A7BC579BAE1B6CC
          E8CB76C57172C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36DF7F9F7
          72C36D72C36D71C16D6EC26CC3E0C3C8E5C878BC7500FFFFFFFFFFFFFCFEF872
          C36D72C36D81CC7AA6D4A6DEECDFA8CFAB8CCD8881C97D72C36D72C36D72C36D
          72C36D72C36D72C36DF7F9F772C36D72C36D71C56E72C36EABD8AADBEEDA80BF
          7F00FFFFFFFFFFFFFFFFFFFAFFFF72C36D72C36DD6EAD8EAF2EAD0E8D0D6EBD5
          E4F1E3F2F7F2F2F7F2DAEDD9D8EDD7CEE8CCBFE2BDF4F8F4ABDDABA5CFA399C6
          988FC28CA6D4A5EAF4EAABDCA900FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF72C36D
          86CB81E0EFE076C571CAE8C772C36D72C36D72C36D8CCD888CCD8899D396A5D8
          A2A5D8A2D2E9D1D4E7D3DEEDDEE7F2E7E9F4E9EFF6EFE4F4E300FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF75C47075C47072C36D72C36D72C36D72C36D72C3
          6D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72C36D72
          C36D72C36D00}
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = []
        DefaultHeight = 60
        Sizable = True
        BorderColor = clSilver
        RoundedCorner = []
        BGImageAlign = iaStretch
        Color = 14607075
        Align = alClient
        TabOrder = 1
        object xpPanel1: TxpPanel
          Left = 1
          Top = 342
          Width = 776
          Height = 69
          StartColor = 14607075
          EndColor = 14607075
          FillDirection = fdLeftToRight
          TitleShow = False
          Caption = 'xpPanel'
          Maximized = True
          Title = 'xpPanelTitle'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleAlignment = taCenter
          TitleStartColor = clWhite
          TitleEndColor = 15777194
          TitleColor = clWhite
          TitleFillDirect = fdLeftToRight
          TitleImageAlign = tiaLeft
          TitleButtons = [tbMinimize]
          DefaultHeight = 60
          BorderColor = 14607075
          RoundedCorner = []
          BGImageAlign = iaStretch
          Align = alClient
          TabOrder = 0
          object Description: TMemo
            Left = 1
            Top = 1
            Width = 772
            Height = 65
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object xpPanel10: TxpPanel
          Left = 1
          Top = 1
          Width = 776
          Height = 341
          StartColor = 14607075
          EndColor = 14607075
          FillDirection = fdLeftToRight
          TitleShow = False
          Caption = 'xpPanel'
          Title = 'xpPanelTitle'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleAlignment = taCenter
          TitleStartColor = clWhite
          TitleEndColor = 15777194
          TitleColor = clWhite
          TitleFillDirect = fdLeftToRight
          TitleImageAlign = tiaLeft
          TitleButtons = [tbMinimize]
          DefaultHeight = 60
          BorderColor = 14607075
          RoundedCorner = []
          BGImageAlign = iaStretch
          Align = alTop
          TabOrder = 1
          object Label6: TLabel
            Left = 9
            Top = 8
            Width = 70
            Height = 16
            Cursor = crHandPoint
            Caption = 'Site Name:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Internal_Notes_Label: TLabel
            Left = 6
            Top = 322
            Width = 75
            Height = 16
            Caption = 'Description:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 50
            Top = 37
            Width = 95
            Height = 16
            Cursor = crHandPoint
            Caption = 'Property Class:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 51
            Top = 93
            Width = 94
            Height = 16
            Cursor = crHandPoint
            Caption = 'Neighborhood:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 17
            Top = 121
            Width = 128
            Height = 16
            Cursor = crHandPoint
            Caption = 'Neighborhood Type:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 18
            Top = 149
            Width = 127
            Height = 16
            Cursor = crHandPoint
            Caption = 'Neighborhood Rate:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 70
            Top = 178
            Width = 75
            Height = 16
            Cursor = crHandPoint
            Caption = 'Desirability:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 307
            Top = 37
            Width = 35
            Height = 16
            Cursor = crHandPoint
            Caption = 'Zone:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 297
            Top = 95
            Width = 45
            Height = 16
            Cursor = crHandPoint
            Caption = 'Sewer:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 300
            Top = 123
            Width = 42
            Height = 16
            Cursor = crHandPoint
            Caption = 'Water:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 291
            Top = 151
            Width = 51
            Height = 16
            Cursor = crHandPoint
            Caption = 'Utilities:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 271
            Top = 179
            Width = 71
            Height = 16
            Cursor = crHandPoint
            Caption = 'Road Type:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 494
            Top = 37
            Width = 62
            Height = 16
            Cursor = crHandPoint
            Caption = 'D/C Entry:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 446
            Top = 65
            Width = 110
            Height = 16
            Cursor = crHandPoint
            Caption = 'Physical Change:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 461
            Top = 93
            Width = 95
            Height = 16
            Cursor = crHandPoint
            Caption = 'Route Number:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel
            Left = 497
            Top = 150
            Width = 59
            Height = 16
            Cursor = crHandPoint
            Caption = 'Elevation'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label20: TLabel
            Left = 513
            Top = 178
            Width = 43
            Height = 16
            Cursor = crHandPoint
            Caption = 'Traffic:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 27
            Top = 241
            Width = 119
            Height = 16
            Cursor = crHandPoint
            Caption = 'Replacement Cost:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label22: TLabel
            Left = 239
            Top = 241
            Width = 124
            Height = 16
            Cursor = crHandPoint
            Caption = 'RCN - Depreciation:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label23: TLabel
            Left = 474
            Top = 241
            Width = 76
            Height = 16
            Cursor = crHandPoint
            Caption = 'Land Value:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 35
            Top = 269
            Width = 109
            Height = 16
            Cursor = crHandPoint
            Caption = 'Model Estimated:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label25: TLabel
            Left = 247
            Top = 269
            Width = 113
            Height = 16
            Cursor = crHandPoint
            Caption = 'Market Estimated:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 35
            Top = 297
            Width = 112
            Height = 16
            Cursor = crHandPoint
            Caption = 'Final Land Value:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label27: TLabel
            Left = 249
            Top = 297
            Width = 111
            Height = 16
            Cursor = crHandPoint
            Caption = 'Final Total Value:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label28: TLabel
            Left = 91
            Top = 65
            Width = 54
            Height = 16
            Cursor = crHandPoint
            Caption = 'Used As:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 253
            Top = 65
            Width = 89
            Height = 16
            Cursor = crHandPoint
            Caption = 'Eff. Year Built:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 485
            Top = 121
            Width = 71
            Height = 16
            Cursor = crHandPoint
            Caption = 'Value Dist.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label31: TLabel
            Left = 463
            Top = 269
            Width = 87
            Height = 16
            Cursor = crHandPoint
            Caption = 'Excess Value:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 80
            Top = 206
            Width = 65
            Height = 16
            Cursor = crHandPoint
            Caption = 'Condition:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            Left = 299
            Top = 207
            Width = 43
            Height = 16
            Cursor = crHandPoint
            Caption = 'Grade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object SiteName: TxpEdit
            Left = 89
            Top = 5
            Width = 336
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 0
          end
          object Temp_Site_ID: TxpEdit
            Left = 592
            Top = 8
            Width = 53
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
          object PropertyClass: TxpEdit
            Left = 153
            Top = 36
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 2
          end
          object Neighborhood: TxpEdit
            Left = 153
            Top = 92
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 3
          end
          object NeighborhoodType: TxpEdit
            Left = 153
            Top = 120
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 4
          end
          object NeighborhoodRate: TxpEdit
            Left = 153
            Top = 148
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 5
          end
          object Desirability: TxpEdit
            Left = 153
            Top = 177
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 6
          end
          object Zone: TxpEdit
            Left = 346
            Top = 36
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 7
          end
          object Sewer: TxpEdit
            Left = 346
            Top = 94
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 8
          end
          object Water: TxpEdit
            Left = 346
            Top = 122
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 9
          end
          object Utilities: TxpEdit
            Left = 346
            Top = 150
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 10
          end
          object RoadType: TxpEdit
            Left = 346
            Top = 178
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 11
          end
          object DCEntry: TxpEdit
            Left = 562
            Top = 36
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 12
          end
          object PhysicalChange: TxpEdit
            Left = 562
            Top = 64
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 13
          end
          object RouteNumber: TxpEdit
            Left = 562
            Top = 92
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 14
          end
          object Elevation: TxpEdit
            Left = 562
            Top = 149
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 15
          end
          object Traffic: TxpEdit
            Left = 562
            Top = 177
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 16
          end
          object ReplacementCost: TxpEdit
            Left = 151
            Top = 240
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 17
          end
          object RCNDepreciation: TxpEdit
            Left = 367
            Top = 240
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 18
          end
          object LandValue: TxpEdit
            Left = 556
            Top = 240
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 19
          end
          object ModelEstimated: TxpEdit
            Left = 151
            Top = 268
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 20
          end
          object MarketEstimated: TxpEdit
            Left = 367
            Top = 268
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 21
          end
          object FinalLandValue: TxpEdit
            Left = 151
            Top = 296
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 22
          end
          object FinalTotalValue: TxpEdit
            Left = 367
            Top = 296
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 23
          end
          object UsedAs: TxpEdit
            Left = 153
            Top = 64
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 24
          end
          object EffectiveYearBuilt: TxpEdit
            Left = 346
            Top = 64
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 25
          end
          object ValueDist: TxpEdit
            Left = 562
            Top = 120
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 26
          end
          object ExcessValue: TxpEdit
            Left = 559
            Top = 268
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 27
          end
          object Condition: TxpEdit
            Left = 153
            Top = 205
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 28
          end
          object Grade: TxpEdit
            Left = 346
            Top = 206
            Width = 80
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 50
            ParentFont = False
            TabOrder = 29
          end
        end
      end
      object ComplaintPointxpPanel: TxpPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 22
        StartColor = 13090741
        EndColor = 13090741
        FillDirection = fdLeftToRight
        TitleShow = False
        Caption = 'xpPanel'
        Title = 'xpPanelTitle'
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleAlignment = taCenter
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        DefaultHeight = 60
        BorderColor = 13090741
        RoundedCorner = []
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 2
        object Residential: TxpCheckBox
          Left = 531
          Top = 2
          Width = 110
          Height = 17
          Cursor = crHandPoint
          Caption = 'Residential'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Helvetica'
          Font.Style = [fsBold]
          ParentColor = False
          TabOrder = 0
          TabStop = True
          Color = 13090741
          CheckColor = 40960
          UnderLineOnActive = True
          Alignment = cbaRight
        end
        object Commercial: TxpCheckBox
          Left = 651
          Top = 2
          Width = 110
          Height = 17
          Cursor = crHandPoint
          Caption = 'Commercial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Helvetica'
          Font.Style = [fsBold]
          ParentColor = False
          TabOrder = 1
          TabStop = True
          Color = 13090741
          CheckColor = 40960
          UnderLineOnActive = True
          Alignment = cbaRight
        end
      end
    end
    object xpTabSheet3: TxpTabSheet
      Caption = 'Buildings'
      ImageIndex = 1
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object xpPanel2: TxpPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 434
        GradientFill = False
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Maximized = True
        Title = 'Buildings'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = [fsBold]
        TitleAlignment = taLeftJustify
        TitleStartColor = clWhite
        TitleEndColor = 1785807
        TitleColor = clWhite
        TitleImage.Data = {
          960C0000424D960C000000000000360000002800000020000000210000000100
          180000000000600C0000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFDF36DF8D3F8D513151AD42ADFD09FDFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFA16FACE3D
          CE8C3E8CCE3DCED8D8D8FFFFFFA9A9A9903F90FA13FAFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEF28EFBC41BCAF41AFB3B3
          B3F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFC6C6C6803D80F322F3FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFD09FDE433E4BA41BAD938D9D5D5D5FFFFFFFFFF
          FFFFFFFFFFFFFFF4F4F4FFFFFFFFFFFFFFFFFFDDDDDD833D83E92DE9FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFF61DF6DA39DACE3DCEBBBBBBF0F0F0FFFFFFFFFFFFFFFFFFF9F8
          F8DAD7D6C0BBB99F9D9DD8D8D8FEFEFEFCFCFCFAFAFAE9E9E9944194D83AD8FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          EC2BECCA3ECAE034E0D5D5D5FDFDFDFFFFFFFFFFFFFEFEFEE7E5E4C8C4C2CAC5
          C3E5E3E3FAFAFAF8F8F8BCBCBCB1B1B1F1F1F1F2F2F2F0F0F0EAEAEAAD42ADBC
          41BCFF03FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDF36DFCA3ECA
          F027F0ECECECFFFFFFFFFFFFFFFFFFF2F1F0D2CECCB6B1AF9A9796E7E6E6F7F7
          F7F5F5F5F3F3F3F1F1F1EFEFEFD2D2D29A9A9AD7D7D7E8E8E8E6E6E6E4E4E48A
          8A8A9C419CFC0DFCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFA13FAFF00FF
          FFFFFFFFFFFFF9F8F8DCD9D8C1BCBBCAC6C5E8E6E6F4F4F4E4E4E4A4A4A4C3C3
          C3EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5DEDEDE9D9D9DB4B4B4DEDEDEDCDCDCDA
          DADAA0A0A0863E86F71BF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF225F1
          EAE9E8BFBBB9C1BCBADAD8D7F0F0F0EFEFEFEDEDEDECECECDDDDDD9A938FA68F
          844E4A48939393A4A4A4A5A5A5A6A6A6A7A7A7A8A8A8898989787878A5A5A5AA
          AAAAAAAAAA9A9A9A7A3C7AEF28EFFF00FFFF00FFFF00FFFF00FFFF00FFFD09FD
          FF00FF9E9D9DC8C8C8EBEBEBE9E9E9E7E7E7AFADAC93847CC8A797FED3BFFED6
          C38C7C745C514C6766659E9E9E9C9C9C818181616060757371736C694846468F
          8F8FA2A2A2A2A2A29B9B9B7A3C7AE135E1FF00FFFF00FFFF00FFFF00FFFF00FF
          FE07FEFE04FEB0B0B0949494968E8BAA958CF4D2C3FED9C8FED7C5FED6C3FED7
          C58C7E778C7A7177655D34312F6B5D56B3A198F9E6DFFFF5F0FFF7F3E7CBBF1C
          1A195252529A9A9A9B9B9B989898833D83CC3ECCFF00FFFF00FFFF00FFFF00FF
          FF00FFFC0DFC988C87D9C2B7FEE2D5FEE0D2FEDED0FEDDCDFEDBCBFED9C8FEDA
          CA8C7F798C7C747A6861F8CEBBFEDAC9FEE2D5FFEBE1FFF3EEFFF7F3FEE2D500
          0000211F1E504E4C8E8E8E939393959595964096FF00FFFF00FFFF00FFFF00FF
          FF00FFF027F0FEE9DFFEE7DCFEE5DAFEE4D7F5D3C3D19980A95D40FEDDCDFEDE
          CF8D817C8C7E767A6A62FAD0BCFED8C6FEE0D3FFE9DFFFF2EBFFF7F3FEE5D900
          00002C2928EEDBD2A34592C440C4D43BD4F918F9FF00FFFF00FFFF00FFFF00FF
          FF00FFF027F0FFEDE4FFEBE2DA9E7ABC6635A13A029833008F2D00FEE0D2FEE1
          D48D837E8C7F797A6A64FAD0BCCE8055B56135973A12FFF0E9FFF7F3FEE7DC00
          00002C2928FEEBE1FA2DEEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFF125F1FFF0E9FFEEE7BC4E00B54800AC4200A43C009C3600FEE4D7FEE5
          D98D85818D817B7A6B65FAD0BCC35300B64900A83F00FFEEE6FFF7F3F6E1D700
          00002C2A29FEECE4FA2AF0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFF918F9FFF4EEFFF2ECC95700C15100B94B00B14500A93F00FEE7DCFEE8
          DE8D86838D827E7A6D67FAD0BCE47E2AE28D4FE3A377FFECE4FFF7F3E2D1C9A8
          9C97595553FEEDE5FA28F1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFA13FAFFF7F3FFF5F1D66100CE5B00C65500C2580DCF814EFFEBE2FEEC
          E38D88868D84807A6E68ECC4B2FED3BFFEDAC9FEE2D5FFEBE1B5ACA8C7B9B9DC
          CAC1EDDCD4F9E7DFFB25F3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFA13FAFFFBF9FFF9F6E67A1CEAA166F3CBAEFEEEE6FFF0E9FFEEE75F5A
          C55E5D978B8483817570E8C1AFFED3BFF8D3C6B19CC2514AA91514A42624A8C8
          B9B2D4C2B9E1CABFF62CEEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFA16FAFFFEFEFFFCFBFFFBF9FFF9F6FFF7F3FFF6F3FFF8F4BDB9E8324C
          D45A88EA0F0FAB4A459A5F4F98241EA40202BF0000C30001BD0508B90102AF9D
          93A3C1B1AACDBAB1EF34E5FC0DFCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFD43BE4FFFFFFFFFFFFFFFEFEFFFEFEFFFFFEFFFFFFFFFFFF3D3ED16FA9
          F7263AD20202BD1212D60000D50305D50B11D51520D41E2ED32133CF121CC152
          4EA0ADA19BBAABA3A1948B422D42FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF050592FFF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9F4324CE0669B
          F40000C70505C5424DE82233E8293EE92A40E72B42E32C43DF2E46DA2E46D41C
          1EB09A908CA79A9453314EE82FE8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF2623A8C9A9A7FFE9DFFFFFFFD2CFCD897F7B99908D5153E371ACFA263A
          E00000CF0808CE6984F63550F33551F33753F03855EB3957E73A59E23C5BDE2B
          41CF6D6784736B683E2B3EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFF71BFC3626A2FAD0BDFFE9DF6C5F5A5F514C8379803652EC659AF80000
          DA0000D70B0BD57FA0FB4263FB4265FA4366F64568F1466AED476CE9486EE54A
          70E13F48A130262DE730E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFAB42E3BF41DCFED3BFE8D4CADCD9D86668F073AFFD2539ED0000
          E20000DE0E0EDB8EB5FD4E76FD4F78FC5079F8517BF5527DF1547FEE5581EB56
          83E84E75D92E2731FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF3A29C9E3BDC1FED3BFE5D1E03752F7659AFC0000ED0000
          E90000E31111E095C3FE5B8AFB5B8BFB5D8DF95E8EF75F91F59462F79762F696
          5BEFA254EBEF29F4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFF71BFD6F36CEFED3BF6053DB73AFFE2539FA0000F40000
          EE0000E70D0DE384B8FD679CFA689EFA5C8BF44569E84143DCA54AE4FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFAB42E6D83EE43753F76092F90000D90000E90000
          EE0000E80000E13856EA2132E0080DD00000C60000C05933C9FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF7039E4865FFB0E16AF0000A20000B80000
          CB0000DB0000DF0000D90000D20000CC0000C51313C0FC0DFDFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000840000920000971A1AA30C0C
          A40000B00000BF0000CF0000CF0000C90000C3E034F2FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00007F00007F00007FFF00FFFF00
          FFFD09FED23CEE9640DB6035CE2121C89C41E1FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        DefaultHeight = 60
        Sizable = True
        BorderColor = clSilver
        RoundedCorner = []
        BGImageAlign = iaStretch
        Color = 14607075
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = -3
          Top = 97
          Width = 144
          Height = 30
          Cursor = crHandPoint
          AutoSize = False
          Transparent = True
        end
        object Buildings_ListView: TListView
          Left = 1
          Top = 20
          Width = 776
          Height = 381
          Align = alClient
          BiDiMode = bdLeftToRight
          Columns = <>
          ColumnClick = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Helvetica'
          Font.Style = []
          GridLines = True
          HotTrack = True
          HotTrackStyles = [htHandPoint, htUnderlineHot]
          IconOptions.AutoArrange = True
          MultiSelect = True
          ReadOnly = True
          RowSelect = True
          ParentBiDiMode = False
          ParentFont = False
          PopupMenu = Buildings_PopUp
          SmallImages = DataModule1.List_ImageList
          TabOrder = 0
          ViewStyle = vsReport
          OnClick = Buildings_ListViewClick
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 776
          Height = 19
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvNone
          Color = 14607075
          TabOrder = 1
          object Label2: TLabel
            Left = 0
            Top = 1
            Width = 356
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Click Item Below to Select - Right Click in Grid for Menu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
          end
        end
      end
      object Panel251: TPanel
        Left = 0
        Top = 434
        Width = 780
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        Color = 14607075
        TabOrder = 1
        object Panel263: TPanel
          Left = 0
          Top = 0
          Width = 221
          Height = 32
          Align = alLeft
          BevelOuter = bvNone
          Color = 14607075
          TabOrder = 0
          object NewRoom_xpBitBtn: TxpBitBtn
            Left = 7
            Top = 3
            Width = 154
            Height = 25
            Cursor = crHandPoint
            Caption = 'New Building'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D360300000000000036000000280000000F000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFE6E6E6ADADAD6B6B6B4747477C7C7CDCDCDCFF00FFFF00
              FFFF00FFFF00FF000000FF00FFFF00FFFF00FFDADADAA3A3A3757575999999DC
              DCDCFFFFFFACACAC717171D8D8D8FF00FFFF00FFFF00FF000000FF00FFCDCDCD
              9D9D9D8D8D8DBFBFBFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFBDBDBD676767D3D3
              D3FF00FFFF00FF000000989898A3A3A3D7D7D7FEFEFEFFFFFFFDFDFDF9F9F9DC
              DBDBEEEEEEEEEEEEEAEAEABEBEBE626262CDCDCDFF00FF000000C3C3C3FBFBFB
              F7F7F7F4F4F4F0F0F0B6B3B1A08C82E3BDAB816E65797673A5A5A5A7A7A7A3A3
              A3606060C6C6C6000000D8D8D8ADADADDBDBDBA49E9BB29D93F8D7C7FEDAC9FE
              D8C6AF9284A68B7D6658517472719A9A9A9595955C5C5C000000FF00FFFF00FF
              B3B3B3FEE7DCDBA281B4653DD6A28CFEDFD1AF9386AF9284AD90827A655C8F8F
              8F8787878D8D8D000000FF00FFFF00FFE6E6E6FFEEE6C25200B14500DCA98EEE
              D8D7AF978CAF9284AF928491796DBABABAFF00FFFF00FF000000FF00FFFF00FF
              E6E6E6FFF5F1E79048EBB790F4DFDA171CE01E1BC4796495AF928491796DDFDF
              DFFF00FFFF00FF000000FF00FFFF00FFD9D9D9FFFDFBFFFCFBFDFAF9828ADB35
              50E40000D90000E21511C858498BD1D1D3FF00FFFF00FF000000FF00FFFF00FF
              000089FFFFFFFFFFFFF3F3FD496DEC0609DB0000D30000CC0000D30000DE3A3A
              C5FF00FFFF00FF000000FF00FFFF00FF7272BDB09BC8FFFFFF7E87F23855F500
              00EA0000E00000D40000C60E0EBCD3D3E5FF00FFFF00FF000000FF00FFFF00FF
              FF00FF7D7AD0E0C4CF4B72F70406FD0000F20000E40000D70202C9A2A2D7FF00
              FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF5B57CE090E9E0202B500
              00E00000DE0000D26363CEFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
              FF00FFFF00FFFF00FF0000834747A52525960B0B953939BAFF00FFFF00FFFF00
              FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
            Gradient = True
            TabOrder = 0
            OnClick = AddNewBuildingClick
          end
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 782
    Height = 31
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        MinHeight = 27
        Width = 778
      end>
    DockSite = True
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 765
      Height = 27
      UseSystemFont = False
      ActionManager = ActionManager1
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 782
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    Color = 14607075
    TabOrder = 2
  end
  object FocusField: TxpEdit
    Left = 8
    Top = 8
    Width = 0
    Height = 21
    Alignment = taLeftJustify
    Rounded = True
    RoundRadius = 4
    ActiveFrameColor = clNavy
    InActiveFrameColor = clBtnShadow
    MarginLeft = 2
    MarginRight = 2
    Style = esXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 255
    ParentFont = False
    TabOrder = 3
  end
  object xpWindow1: TxpWindow
    SizeInfo.MaxSizeWidth = 1288
    SizeInfo.MaxSizeHeight = 1002
    SizeInfo.MaxPositionX = 0
    SizeInfo.MaxPositionY = 0
    SizeInfo.MinTrackWidth = 123
    SizeInfo.MinTrackHeight = 34
    SizeInfo.MaxTrackWidth = 1292
    SizeInfo.MaxTrackHeight = 1036
    SizeInfo.UseSystemSettings = False
    xpCaption.Height = 26
    xpCaption.ImageAlign = iaCenter
    xpCaption.Font.Charset = DEFAULT_CHARSET
    xpCaption.Font.Color = clWindowText
    xpCaption.Font.Height = -11
    xpCaption.Font.Name = 'MS Sans Serif'
    xpCaption.Font.Style = []
    xpCaption.BorderColor = 13903108
    xpCaption.BorderInActiveColor = 14594977
    xpCaption.BtnBorderColor = clWhite
    xpCaption.RoundedCorners = [rcTopLeft, rcTopRight]
    xpCaption.RoundedCornerRadius = 14
    xpCaption.GradientFill = False
    xpCaption.FillDirection = fdTopToBottom
    xpCaption.ActiveStartColor = 14961664
    xpCaption.ActiveEndColor = 16675077
    xpCaption.InActiveStartColor = 15381654
    xpCaption.InActiveEndColor = 15180928
    WinBackground.Style = wbgGradient
    WinBackground.GradientFillDir = fdVerticalFromCenter
    WinBackground.StartColor = 16048082
    WinBackground.EndColor = 16379881
    Style = xwsCustom
    Left = 635
    Top = 6
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = SaveAndClose_act
            ImageIndex = 0
            ShortCut = 16467
          end
          item
            Caption = '-'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = Menu_Image_List
    Left = 601
    Top = 8
    StyleName = 'XP Style'
    object Action2: TAction
      Tag = 1
      Category = 'Tables'
      Caption = 'Renewal Types'
    end
    object SaveAndClose_act: TAction
      Caption = '&Save and Close'
      Hint = 'Save and Close - Ctl+S'
      ImageIndex = 0
      ShortCut = 16467
      OnExecute = SaveAndClose_actExecute
    end
    object Action7: TAction
      Caption = 'Assign a Task'
      Hint = 'Assign as Task'
      ImageIndex = 1
    end
    object Action8: TAction
      Caption = 'Mark as Closed'
      Hint = 'Mark as Closed'
      ImageIndex = 2
    end
    object Action9: TAction
      Tag = 20
      Hint = 'Delete Variance'
      ImageIndex = 3
    end
    object Action4: TAction
      Caption = 'Cancel'
      ShortCut = 16474
      OnExecute = Action4Execute
    end
    object Action1: TAction
      Caption = 'Save Only'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
  object Menu_Image_List: TImageList
    Left = 563
    Top = 7
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006349
      3500634935006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6A1
      9200F9E1D100DEB79D00DFB59800E1B39400E1B09000E3AE8B00E4AC8700E5AA
      8300E6A67F00E7A47A00EAA27700634935000000000000000000806850008060
      5000806050007060500070584000705840007050400070504000604830006048
      3000604830000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8A3
      9400FAE5D900FAE6D900FAE5D800F9E4D700FAE3D500FAE1D200F8DFCF00F7DC
      CB00F8DAC800F7D9C600E8A37B006349350000000000A48B8200E0D0C000B0A0
      9000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      9000B0A090006048300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BAA5
      9500FAEBE100FBEBE100D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD
      8F00F7DDCD00F7DAC900E6A680006349350000000000B39B9100FFE8E000FFF8
      F000FFF0E000FFE8E000F0D8D000F0D0B000F0C0A00000A0000000A0000000A0
      000070584000604830008D705700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDA7
      9800FCEFE700FCEFE800FCEFE700FBEEE600FBECE400FAEAE000FAE7DB00F9E4
      D600F9E1D200F8DDCD00E5AB840063493500B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0D8C00000FF100000FFB00000A0
      0000806850007050400060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6612900B14A0800B14A0800B14A
      08009A4105009A4105009A410500873B07008135040077310000D5AD8F00D5AD
      8F00FAE4D600F9E0D100E3AD890063493500B0908000F0E8E000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8E00000FF100000FF100000A0
      0000907060007060500060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7683900FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0077310000FBEEE700FBEB
      E100FAE7DB00F9E3D500E2B08E0063493500B0988000D0C0B000D0B8B000C0B0
      A000B0A09000B0988000A0888000908070009070600080686000806050007058
      5000908070008068600070584000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB734800FEFEFE008A2E0700AD60
      3700F9F1EF0081350400B3653F00FEFEFE00FEFEFE0081350400D5AD8F00D5AD
      8F00FAE9E000FAE5D900E1B2940063493500C0A09000FFF8F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF0F000F0F0F000F0E8
      E000A08880009078600080605000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD7A5400FEFEFE00A36C54009759
      3900F3C7B6008135040081350400CFB9AC00FEFEFE00873B0700FCF3EE00D5AD
      8F00FBECE300FAE8DC00DFB5980063493500DFC5AE00B9A08900D0B0A000C0A8
      A000D0B0A000C0A09000B0908000A08070009070600080605000706050008070
      6000B0A09000A088700080605000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4896600FEFEFE00B27D6600B869
      4300AA745C0081350400B55A31006C3D2700FEFEFE009A410500FDF5F100D5AD
      8F00FBEDE500FAE9DE00DDB79C006349350000000000D9C3AF00C0B0A000E0C8
      C000FFFFFF00FFF8FF00FFF8FF00FFF0F000F0F0E000F0E0E000C0A8A0008060
      5000A0908000C0B0A00080605000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4907600FEFEFE00D4907600B869
      4300DEBBAE00994B2000DCA38A0097593900E1D1C8009A410500FDF7F200D5AD
      8F00FBEFE800FBEBE000DCB9A00063493500000000000000000000000000C0B0
      A000FFFFFF00F0E8E000D0C8C000D0C8C000D0B8B000D0C0B000E0D0D0008068
      600080605000B0989000B0A09000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E59D7F00F3E1DB00D99B8200C27C
      5E00F3E1DB00B8694300F3E1DB00A6694C009B897600B14A0800D5AD8F00D5AD
      8F00FCF0E800DBBBA400DCBAA300644A3600000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0D000D0B8
      B00080605000C5AA970000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A48800F0BDA900D99B8200CC80
      5F00E9DBD500CC805F00F3E1DB00A36C5400DCA38A00B14A0800FCF7F300FCF4
      EE00B6A19200644A3600644A3600644A3600000000000000000000000000F6DF
      CC00D0B8B000FFFFFF00F0F0F000D0C8C000D0C8C000D0B8B000C0B0B000E0D8
      D000807060008767570000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5AA9200FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B14A0800FDF6F300FCF3
      EE00B8A39400D3C4B900644A3600181818000000000000000000000000000000
      0000E9D1C300E1D1D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00F0E8
      E000D0B8B0008060500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5AA9200E5AA9200E8A48800E59D
      7F00D7967B00D4896600D07D5700C9765100C36D4100B6612900FDF6F200FCF3
      EC00BFAA9B00644A360018181800000000000000000000000000000000000000
      000000000000E9D2C400D0C0B000D0C0B000D0C0B000D0C0B000D0C0B000D0C0
      B000D0C0B000D0C0B00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7C1
      B100D6C0B000D5BFAF00D3BDAD00D1BCAC00D0B9AA00CEB8A900CCB5A700CAB5
      A500C9B3A4001817170000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009090900090909000909090009090
      9000909090000000000090909000909090009090900090909000000000009090
      9000909090009090900090909000909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAF900F1F2
      F300FAFAFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700D3D3D300D3D3D300D3D3
      D300E7E7E7000000000090909000D3D3D300D3D3D300E7E7E700000000009090
      9000D3D3D300D3D3D300D3D3D300909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDE0E1002C3D
      47007992A000CAC8D000F7F7F800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7C
      7A00CA807E00CC847C0097857E00A5858000B48F8B00A6A19800A69F9600A297
      8F0084988B004B5549000000000000000000FF787800FF4D4D00FF4D4D00FF4D
      4D00FF787800FF787800FF7878004D4D4D004D4D4D0090909000909090009090
      90000000000000000000D3D3D300909090000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000F4FEFF006994
      A2009ABAC100708AA1006F6B7E00E3E1E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFF9EF00CAFF
      F900CAFCF200CCFFF900C8FFFC00D6FEFD00DEFCFD00CBFAF800AFFFF800CFFE
      FC009C949B0045515500000000000000000090909000FF4D4D00FF4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4DFF004D4DFF004D4DFF004D4D4D000000
      00000000000000000000D3D3D30090909000000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF0080808000000000000000000000000000000000000000000000000000BEE5
      F100D5EEF70076C0D6005F93B1004C79A000DAD6D800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF0098929D004F505A000000000000000000E7E7E7004D4D4D004D4D4D00D3D3
      D300000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D300909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC0000000000808080000000000000000000000000000000000000000000DCEE
      F30096CCDB008CC7DC0071CFFF0056C2F70048709500CFCACD00FBFBFB000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A69AA000614A52000000000000000000E7E7E700000000004D4D4D000000
      00004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      00000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000B0D7E3007BCAF4008BD6FF007ACFFF0062CAFF003C668E00C0BBBF00FBFB
      FB00000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00AF9295004F504E000000000000000000E7E7E700000000004D4D4D00D3D3
      D30000000000D3D3D300000000004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D3009090900080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      00000000000091D1F00084CCEF008DD7FF0079CDFD0060C9FF003A638B00CAC4
      C800FEFEFE000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0070948E004D5A58000000000000000000E7E7E7004D4D4D004D4D4D000000
      0000D3D3D30000000000D3D3D3004D4D4D00D3D3D300D3D3D3004D4D4D000000
      00000000000000000000D3D3D3009090900080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC00000000000000000000000000000000000000
      00000000000000000000AED6E20083CBEC008ED8FF007ACEFE005EC7FC003E71
      9C00DBD8DC000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00A3979D00504A4F000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D30000000000D3D3D3004D4D4D00D3D3D3004D4D4D000000
      00000000000000000000D3D3D300909090008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000B1D8E30083CBEC008CD7FF0076C6F30085A1
      B000514F5300D6D6D500FEFEFE00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0096929700365350000000000000000000909090004D4D4D004D4D4D000000
      0000D3D3D30000000000A64D4D004D4D4D00D3D3D300D3D3D300D3D3D3004D4D
      4D000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AED6E2007FCBF000A5B0B700B4AF
      AB005354530030304B00CDCDD500000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00919697005E5656000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D300000000004D4D4D004D4D4D00A64D4D004D4D4D000000
      00000000000000000000FBFBFB00909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5D3E2008B9291009F9E
      93008E8EC5008888FF0047477600000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A9292005B555000000000000000000090909000909090004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00D3D3D3004D4D4D00E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C3CA006565
      AB00CDCDFF009696F6008282A700000000000000000000000000FFF5F200D3FC
      FE00D0F9FC00DBFFFF00DAF4FB00D6FAFF00D3F7FF00829CA30053595E005166
      6300A19E9600A46D6A0000000000000000000000000090909000909090004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00909090009090
      900000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      FD008A8AEE009393F100E0E0EE00000000000000000000000000FFFFFB00DAFF
      FF00C4F5F300C7FBF400D8FBFE00D9FFFF00D1FCFF0081949900F8FFFF00F6FC
      F700978B8100C57E7A0000000000000000000000000000000000909090009090
      900090909000909090004D4D4D004D4D4D004D4D4D0090909000909090000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FE00FAFAFE0000000000000000000000000000000000F1F4EB00D1FF
      FB00C9FFF900C8FFF900C5FFF700BEFFFE00C5FEF50093A09E00D5FFF7009194
      8B00CDACA300C693890000000000000000000000000000000000000000000000
      0000000000009090900090909000909090009090900090909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7007373
      73007373730059595900595959004B4B4B004B4B4B003D3D3D00303030003030
      300030303000A7A7A70000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D00FFFFFF00FFFFFF004D4DA600FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001414FC00FFFFFF000000000000000000A7A7A70063360000CDCD
      CD00E6E6E600C1C1C100C1C1C100CDCDCD00F0F0F000EDEDED00E6E6E600A7A7
      A7003333330030303000A7A7A700000000004D4D4D004D4D4D004D4D4D000000
      00004D4D4D00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D00FFFFFF004D4DA6004D4DA600FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000001414
      FC00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000633600006336000063360000DADA
      DA00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600DADA
      DA00CB8C4400633600003030300030303000A64D4D00A64D4D004D4D4D004D4D
      4D00DEEDEF00DEEDEF00DEEDEF004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000004D4D4D004D4DA6004D4DA6004D4DA6004D4DA600FFFFFF00FFFF
      FF004D4D4D0000000000000000000000000000000000000000001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000000000
      00001414FC00FFFFFF00000000000000000063360000CB8C440063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C4400CB8C4400CB8C
      4400CB8C4400633600007F5B000030303000A64D4D00A64D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF004D4D4D00DEEDEF004D4D4D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000004D4D4D004D4DA600FFFFFF00FFFFFF004D4DA6004D4DA600FFFF
      FF004D4D4D0000000000000000000000000000000000000000001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000001414
      FC00FFFFFF0000000000000000000000000063360000D9A77D0063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C4400CB8C
      4400CB8C440063360000CB8C440030303000A64D4D00A64D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF00DEEDEF004D4D4D00FFFFFF004D4DA600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4DA600FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000001414
      FC001414FC001414FC00FFFFFF000000000000000000000000001414FC001414
      FC00FFFFFF0000000000000000000000000063360000D9A77D0063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C
      4400CB8C440063360000CB8C44003D3D3D00FF4D4D00FF4D4D004D4D4D00A6A6
      A600A6A6A600A6A6A600A6A6A600FFFFFF004D4DA6004D4DA6004D4DA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      A6004D4D4D000000000000000000000000000000000000000000000000000000
      00001414FC001414FC001414FC00FFFFFF00000000001414FC001414FC00FFFF
      FF000000000000000000000000000000000063360000D9A77D0063360000AA3F
      2A00633600006336000063360000633600006336000063360000633600006336
      0000CB8C440063360000CB8C44004B4B4B00A64D4D00A64D4D00A6A6A6000000
      000000000000A6A6A600FFFFFF004D4DA6004D4DA600FFFFFF004D4DA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4DA6000000000000000000000000000000000000000000000000000000
      0000000000001414FC001414FC001414FC001414FC001414FC00FFFFFF000000
      00000000000000000000000000000000000063360000D9A77D00633600009A9A
      9A00AAFFFF0099F8FF0099F8FF0099F8FF0099F8FF0099F8FF0099F8FF0099F8
      FF006336000063360000CB8C44004B4B4B000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      A600FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4DA60000000000000000000000000000000000000000000000
      000000000000000000001414FC001414FC001414FC00FFFFFF00000000000000
      00000000000000000000000000000000000063360000D9A77D0063360000AAFF
      FF00CDCDCD00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF0063360000CB8C44004B4B4B000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4DA600FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      000000000000000000000000000000000000000000004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      0000000000001414FC001414FC001414FC001414FC001414FC00FFFFFF000000
      00000000000000000000000000000000000063360000D9A77D007F5B0000AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF007F5B0000CB8C44004B4B4B000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4DA600FFFFFF004D4D4D000000000000000000000000000000
      00000000000000000000000000004D4D4D004D4D4D004DFFFF004DFFFF00D3D3
      D3004D4D4D000000000000000000000000000000000000000000000000000000
      00001414FC001414FC001414FC00FFFFFF00000000001414FC00FFFFFF000000
      00000000000000000000000000000000000063360000D9A77D007F5B0000AAFF
      FF00CDCDCD00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF007F5B0000CB8C44004B4B4B000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000004D4D4D004D4D4D004DFFFF004DFFFF004DFFFF00FFFFFF004D4D
      4D000000000000000000000000000000000000000000000000001414FC001414
      FC001414FC001414FC00FFFFFF000000000000000000000000001414FC001414
      FC00FFFFFF0000000000000000000000000063360000D9A77D0098989800AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF0098989800CB8C4400595959000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D00FFFFFF00FFFFFF004D4D4D000000000000000000000000004D4D
      4D004D4D4D004DFFFF004DFFFF004DFFFF00FFFFFF004D4D4D004D4D4D000000
      000000000000000000000000000000000000000000001414FC001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000001414
      FC001414FC00FFFFFF00000000000000000063360000D9A77D00A6A6A6000000
      0000CDCDCD00CB8C4400CB8C4400A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF00A6A6A600D9A77D00666666000000000000000000000000000000
      00000000000000000000A6A6A600A6A6A6004D4D4D00FFFFFF00D3D3D300D3D3
      D3004D4D4D00A6A6A600A6A6A6000000000000000000000000004D4D4D004D4D
      A6004D4DA6004DFFFF00FFFFFF004D4D4D004D4D4D0000000000000000000000
      000000000000000000000000000000000000000000001414FC001414FC00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001414FC001414FC00FFFFFF0000000000A7A7A700633600007F5B00000000
      000000000000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF00AAFFFF007F5B000063360000A7A7A7000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600A6A6A600A6A6
      A6000000000000000000000000000000000000000000000000004D4D4D004D4D
      A6004D4DA6004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7006336
      0000633600006336000063360000633600006336000063360000633600006336
      0000633600009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E000FFFF00000000E000C00700000000
      E000800300000000E000800100000000E0000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000800100000000
      0000E001000000000000E003000000000000E003000000000000F00300000000
      0001F80300000000E003FFFF00000000FFFFFFFFFFFFFFFF0420FFFFC3FFFFFF
      0420E001C1FFE003000CC001C0FFC003001CC001E03FC00308048001E01FC003
      507C8001F00FC0034A040001F807C003141C0000FC07C0030A1C0001FE01C003
      140C8001FF01C0030A1C8001FF81C00300018003FFC1C003800FC01FFFE1C003
      C01FE1BFFFF3C003F83FFFFFFFFFFFFFFFFFFFFFF807FFFFC003F83FF807FFF9
      8001101FF807E7FF00000001F807C3F300000000F807C3E700000000F807E1C7
      00000000F807F08F00001800F807F81F0000F800FFFBFC3F0000F800FF83F81F
      0000F800FE07F09F0000F800F80FC1C70000F800E01F83E31000FC01C07F8FF1
      1800FF8FC1FFFFFFC003FFFFE7FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object DocumentOpenDialog: TOpenDialog
    Left = 630
    Top = 56
  end
  object MinModal1: TMinModal
    Left = 568
    Top = 47
  end
  object Buildings_PopUp: TPopupMenu
    Images = DataModule1.PopUpImages
    Left = 32
    Top = 307
    object MenuItem2: TMenuItem
      Caption = 'Edit Selected Building'
      ImageIndex = 1
      OnClick = Buildings_ListViewClick
    end
  end
  object Tab_Image_List: TImageList
    Left = 529
    Top = 7
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000ADDBAC00B2DDB100D6EB
      D600ADDBAD00ACDBAB0092C9900072C36D0072C36D0072C36D0072C36D0080C7
      7E009DD49C0074C46F0072C36D0072C36D000000000000000000000000000000
      000000000000E6E6E600ADADAD006B6B6B00474747007C7C7C00DCDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000071C16E006BBE68006CBF6900A1D5
      A000D0E9D000D0E8CF00D0E8CF00CCE5CB00CCE8CC00C8D6BE00DAECD900DFEE
      DE00DFEEDF00C4E4C10072C36D0072C36D00000000000000000000000000DADA
      DA00A3A3A3007575750099999900DCDCDC00FFFFFF00ACACAC0071717100D8D8
      D800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AC5770071C16E0070C16D0093CF
      9000A7D7A700A5D1A300A4D1A300A8D2A600A3D5A300A6C0900090CF900092D0
      91009ACB9600B0DCAE0072C36D0072C36D0000000000CDCDCD009D9D9D008D8D
      8D00BFBFBF00F3F3F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD006767
      6700D3D3D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AC5770071C16E0071C16E008ACB
      88007BC679006FC16C0072C66B0073C570006EBF6C0071C8730071C16E0070C0
      6C007AC07900C1E3BF0072C36D0072C36D0098989800A3A3A300D7D7D700FEFE
      FE00FFFFFF00FDFDFD00F9F9F900DCDBDB00EEEEEE00EEEEEE00EAEAEA00BEBE
      BE0062626200CDCDCD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AC5770071C16E0071C16E007FC8
      7C0082C2800072C36D006DB77E0070BC720071C26F0071C06D0072C16E0072C3
      6D0082C88000E2F0E20072C36D0072C36D00C3C3C300FBFBFB00F7F7F700F4F4
      F400F0F0F000B6B3B100A08C8200E3BDAB00816E650079767300A5A5A500A7A7
      A700A3A3A30060606000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007EC57B0071C16E0071C16E0074C4
      71008BC789006FC2720072C36D0072C36D0072C36D0071C56F006EBC6C0071C4
      6E0085C48300F2F7F20075C4700072C36D00D8D8D800ADADAD00DBDBDB00A49E
      9B00B29D9300F8D7C700FEDAC900FED8C600AF928400A68B7D00665851007472
      71009A9A9A00959595005C5C5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8DAA70071C16E0071C16E0071C1
      6E0099CF970070BE700072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0088C68500E8F3E800B1DEAF0072C36D000000000000000000B3B3B300FEE7
      DC00DBA28100B4653D00D6A28C00FEDFD100AF938600AF928400AD9082007A65
      5C008F8F8F00878787008D8D8D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7EDD7006DBF6B0070C06E006FC0
      6C00A1D89D0079C4750072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0072C36D00D4EBD200BDE1BD0072C36D000000000000000000E6E6E600FFEE
      E600C2520000B1450000DCA98E00EED8D700AF978C00AF928400AF9284009179
      6D00BABABA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFDFC00F2F8F200F2F8F200F2F8
      F200BDE3BC008EC98C0079C87C0072C36D0072C36D0072C36D0072C36D0072C3
      6D0072C36D00F4F8F400E8F3E70077C573000000000000000000E6E6E600FFF5
      F100E7904800EBB79000F4DFDA00171CE0001E1BC40079649500AF9284009179
      6D00DFDFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF006FBF6C006CBE6C006EC2
      6B00C2E5C00071C766006FC6700072C36D0072C36D0072C36D0072C36D0072C3
      6D00F7F9F70074BE7000F1F6F10076C474000000000000000000D9D9D900FFFD
      FB00FFFCFB00FDFAF900828ADB003550E4000000D9000000E2001511C8005849
      8B00D1D1D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008BC2A10072C36D0071C2
      6D00C7E4C8006AAE860071BC680072C36D0072C36D0072C36D0072C36D00F7F9
      F70072C36D006ABB6700E2F0E20076C07400000000000000000000008900FFFF
      FF00FFFFFF00F3F3FD00496DEC000609DB000000D3000000CC000000D3000000
      DE003A3AC5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C7E1CE0072C36D007BC5
      7900CCE8CB0076C5710072C36D0072C36D0072C36D0072C36D0072C36D00F7F9
      F70072C36D006EC26C00C3E0C30078BC750000000000000000007272BD00B09B
      C800FFFFFF007E87F2003855F5000000EA000000E0000000D4000000C6000E0E
      BC00D3D3E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FCFEF80072C36D0081CC
      7A00DEECDF00A8CFAB0081C97D0072C36D0072C36D0072C36D0072C36D00F7F9
      F70072C36D0072C36E00ABD8AA0080BF7F000000000000000000000000007D7A
      D000E0C4CF004B72F7000406FD000000F2000000E4000000D7000202C900A2A2
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FAFFFF0072C3
      6D00EAF2EA00D0E8D000E4F1E300F2F7F200DAEDD900D8EDD700BFE2BD00F4F8
      F400A5CFA3008FC28C00A6D4A500ABDCA9000000000000000000000000000000
      00005B57CE00090E9E000202B5000000E0000000DE000000D2006363CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FEFFFF0072C3
      6D00E0EFE00076C5710072C36D0072C36D008CCD88008CCD8800A5D8A200A5D8
      A200D4E7D300E7F2E700E9F4E900E4F4E3000000000000000000000000000000
      000000000000000083004747A500252596000B0B95003939BA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0075C4700072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0072C36D0072C36D0072C36D0072C36D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008000F81F000000000000E00F00000000
      0000800700000000000000030000000000000001000000000000000100000000
      0000C001000000000000C007000000000000C007000000000000C00700000000
      0000C007000000000000C007000000000000E00F000000000000F01F00000000
      0000F83F000000000000FFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
