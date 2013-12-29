object AssessmentDefend_FRM: TAssessmentDefend_FRM
  Left = 337
  Top = 94
  Width = 1579
  Height = 872
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Assessment Validation Module'
  Color = clBtnFace
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 477
    Top = 175
    Width = 109
    Height = 16
    Alignment = taRightJustify
    Caption = 'Ownership Code:'
    Color = 14607075
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 593
    Top = 175
    Width = 109
    Height = 16
    AutoSize = False
    Color = 14607075
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GridSection_PageControl: TxpPageControl
    Left = 0
    Top = 60
    Width = 1563
    Height = 774
    ActivePage = xpTabSheet176
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Style = pcsXP
    TabHeight = 21
    TabOrder = 0
    TabPosition = tpTop
    OnChange = GridSection_PageControlChange
    ImageList = Tab_Image_List
    BorderColor = 13143690
    TabTextAlignment = taCenter
    object xpTabSheet176: TxpTabSheet
      Caption = 'Sales'
      ImageIndex = 0
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Grids_Sales_xpPanel: TxpPanel
        Left = 0
        Top = 3
        Width = 1561
        Height = 492
        GradientFill = False
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Maximized = True
        Title = 'Sales'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = [fsBold]
        TitleAlignment = taLeftJustify
        TitleStartColor = clWhite
        TitleEndColor = 4629503
        TitleColor = clWhite
        TitleImage.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF7983768A887EDBCECCFF00FFFF00FFFF00FFFF00
          FFB068B0FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFD5D6
          CC626851313B2E2523197D706EE4D7D9FF00FFFF00FFFF00FFA04090C070B0FF
          00FFFF00FFFF00FF0000FF00FFC8C1B8918C836E6E62525C4C4C59493E553916
          2F1B262A24B048A0B058A0B060B0B068B0A04890D0A0D0C078B0FF00FFFF00FF
          00007F8D75384A252B431B37512D46634955715D5C82583E6C42254B27702870
          C078B0C080C0D080C0D088C0D098D0D0A8D0C078B0FF00FF00008AA5837CA46D
          79A46B8DB486B4D6B8B5D2C2C5E1BD99C89A4F894F702060A04090B050A0B050
          B0C058B0C068C0D080C0D0A0D0B068A00000BACFB9D6F3D2CBE6C5FF00FFFF00
          FFFF00FFFF00FFFF00FF97C993602060803880904090B048A0B050A0C058B0A0
          50A0904880FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFF7E1E3CDC4BB76
          93724C8949602060602060602060602060602060A04090702060FF00FFFF00FF
          0000FF00FFFF00FFFF00FFD2CDCE969587686850315A27266D2A2D8C3133952B
          3EA0363A993E2F7832602060602060FF00FFFF00FFFF00FF0000FF00FFBCCCBA
          59775425531F1F5C18276D2023842421912B2CA0354BAE466DC5674B9D503F7C
          42602060FF00FFFF00FFFF00FFFF00FF0000BED4B74C783D2B721C1F8018148B
          18149A202FA8352DAB3B55C65E72C36C78B16D6C9C6C9FBDA0FF00FFFF00FFFF
          00FFFF00FFFF00FF000085BD8231982F1CA31F17A51D25AC2E35B44032BA324E
          B74A8AC77DABCB9AC4D9B3DDEAD2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          00009AD19A57B65B3DBB4430BC3928B73215A322488D5081A482D6D3CFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000C3EFC893DD9B
          6BD2774CCA5A2AB837008B024B4844928387C6AFB7B4A4A58583786F7564BAB8
          B0FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFD2F7DDA8E7B580DB8C54C7
          5F1C9F2634572F2E5E2A1B6618187E1819861913610D7F9572FF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFCAF6D1A5EDAB7FDA8531BF4823
          BA3B16BC2F15C62F1EC2352D9E3C97C09AFF00FFFF00FFFF00FFFF00FFFF00FF
          0000FF00FFFF00FFFF00FFFF00FFFF00FFC6F4C956F16648CF5561D06E7AD586
          94DA9DBCE5BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFB5FDAA9BC890D0DCC6FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFE8E8E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000}
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = []
        DefaultHeight = 60
        Movable = True
        Sizable = True
        BorderColor = clSilver
        RoundedCorner = []
        BGImageAlign = iaStretch
        Color = 14607075
        Align = alClient
        TabOrder = 0
        object SalesAdvGrid: TAdvStringGrid
          Left = 1
          Top = 222
          Width = 1557
          Height = 237
          Cursor = crDefault
          Align = alClient
          ColCount = 30
          RowCount = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          GridFixedLineColor = clNone
          HoverRowCells = [hcNormal, hcSelected]
          OnGetColumnFilter = SalesAdvGridGetColumnFilter
          OnFilterSelect = SalesAdvGridFilterSelect
          OnGetFormat = SalesAdvGridGetFormat
          OnPrintPage = SalesAdvGridPrintPage
          OnClickSort = SalesAdvGridClickSort
          OnCheckBoxChange = SalesAdvGridCheckBoxChange
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 15387318
          ColumnSize.Key = 'MUNICITY_GRIDS'
          ColumnSize.Section = 'Issues'
          ColumnSize.Stretch = True
          ControlLook.FixedGradientFrom = clWhite
          ControlLook.FixedGradientTo = clBtnFace
          ControlLook.FixedGradientHoverFrom = 13619409
          ControlLook.FixedGradientHoverTo = 12502728
          ControlLook.FixedGradientHoverMirrorFrom = 12502728
          ControlLook.FixedGradientHoverMirrorTo = 11254975
          ControlLook.FixedGradientDownFrom = 8816520
          ControlLook.FixedGradientDownTo = 7568510
          ControlLook.FixedGradientDownMirrorFrom = 7568510
          ControlLook.FixedGradientDownMirrorTo = 6452086
          ControlLook.FixedGradientDownBorder = 14007466
          ControlLook.ControlStyle = csWinXP
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDownClear = '(All)'
          FixedColWidth = 20
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          Grouping.HeaderColor = 8569007
          Grouping.HeaderColorTo = 4487779
          Grouping.HeaderTextColor = clWhite
          Grouping.HeaderUnderline = True
          Grouping.HeaderLineColor = clGray
          Grouping.SummaryColor = 15004146
          Grouping.SummaryColorTo = 11197146
          Grouping.SummaryLineColor = clGray
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollWidth = 16
          SearchFooter.Color = 13627626
          SearchFooter.ColorTo = 9224369
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SelectionRectangle = True
          SortSettings.Direction = sdDescending
          SortSettings.DownGlyph.Data = {
            32010000424D3201000000000000360000002800000009000000090000000100
            180000000000FC000000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFB068A0FF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFC0
            78B0D0A0D0904880FF00FFFF00FFFF00FF00FF00FFFF00FFC078B0D0A8D0D080
            C0A050A0702060FF00FFFF00FF00FF00FFC070B0D0A0D0D098D0C068C0C058B0
            A04090602060FF00FF00B068B0A04090A04890D088C0C058B0B050A060206060
            206060206000FF00FFFF00FFB068B0D080C0B050B0B048A0602060FF00FFFF00
            FF00FF00FFFF00FFB060B0C080C0B050A0904090602060FF00FFFF00FF00FF00
            FFFF00FFB058A0C078B0A04090803880602060FF00FFFF00FF00FF00FFFF00FF
            B048A0702870702060602060602060FF00FFFF00FF00}
          SortSettings.InitSortDirection = sdDescending
          SortSettings.HeaderColor = 16579058
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          Version = '6.2.1.1'
          ColWidths = (
            20
            64
            64
            64
            85
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64)
        end
        object xpPanel4: TxpPanel
          Left = 1
          Top = 1
          Width = 1557
          Height = 193
          GradientFill = False
          StartColor = 16511469
          EndColor = 16244694
          FillDirection = fdLeftToRight
          TitleShow = False
          Caption = 'xpPanel'
          Title = 'Sales'
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -13
          TitleFont.Name = 'Arial Rounded MT Bold'
          TitleFont.Style = [fsBold]
          TitleHeight = 0
          TitleAlignment = taLeftJustify
          TitleStartColor = clWhite
          TitleEndColor = 4629503
          TitleColor = clWhite
          TitleImage.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF7983768A887EDBCECCFF00FFFF00FFFF00FFFF00
            FFB068B0FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFD5D6
            CC626851313B2E2523197D706EE4D7D9FF00FFFF00FFFF00FFA04090C070B0FF
            00FFFF00FFFF00FF0000FF00FFC8C1B8918C836E6E62525C4C4C59493E553916
            2F1B262A24B048A0B058A0B060B0B068B0A04890D0A0D0C078B0FF00FFFF00FF
            00007F8D75384A252B431B37512D46634955715D5C82583E6C42254B27702870
            C078B0C080C0D080C0D088C0D098D0D0A8D0C078B0FF00FF00008AA5837CA46D
            79A46B8DB486B4D6B8B5D2C2C5E1BD99C89A4F894F702060A04090B050A0B050
            B0C058B0C068C0D080C0D0A0D0B068A00000BACFB9D6F3D2CBE6C5FF00FFFF00
            FFFF00FFFF00FFFF00FF97C993602060803880904090B048A0B050A0C058B0A0
            50A0904880FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFF7E1E3CDC4BB76
            93724C8949602060602060602060602060602060A04090702060FF00FFFF00FF
            0000FF00FFFF00FFFF00FFD2CDCE969587686850315A27266D2A2D8C3133952B
            3EA0363A993E2F7832602060602060FF00FFFF00FFFF00FF0000FF00FFBCCCBA
            59775425531F1F5C18276D2023842421912B2CA0354BAE466DC5674B9D503F7C
            42602060FF00FFFF00FFFF00FFFF00FF0000BED4B74C783D2B721C1F8018148B
            18149A202FA8352DAB3B55C65E72C36C78B16D6C9C6C9FBDA0FF00FFFF00FFFF
            00FFFF00FFFF00FF000085BD8231982F1CA31F17A51D25AC2E35B44032BA324E
            B74A8AC77DABCB9AC4D9B3DDEAD2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00009AD19A57B65B3DBB4430BC3928B73215A322488D5081A482D6D3CFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000C3EFC893DD9B
            6BD2774CCA5A2AB837008B024B4844928387C6AFB7B4A4A58583786F7564BAB8
            B0FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFD2F7DDA8E7B580DB8C54C7
            5F1C9F2634572F2E5E2A1B6618187E1819861913610D7F9572FF00FFFF00FFFF
            00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFCAF6D1A5EDAB7FDA8531BF4823
            BA3B16BC2F15C62F1EC2352D9E3C97C09AFF00FFFF00FFFF00FFFF00FFFF00FF
            0000FF00FFFF00FFFF00FFFF00FFFF00FFC6F4C956F16648CF5561D06E7AD586
            94DA9DBCE5BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB5FDAA9BC890D0DCC6FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFE8E8E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF0000}
          TitleFillDirect = fdLeftToRight
          TitleImageAlign = tiaLeft
          TitleButtons = []
          DefaultHeight = 60
          Movable = True
          Sizable = True
          BorderColor = clSilver
          RoundedCorner = []
          BGImageAlign = iaStretch
          Color = 14607075
          Align = alTop
          TabOrder = 1
          object Label1: TLabel
            Left = 37
            Top = 7
            Width = 107
            Height = 18
            Caption = 'Subject Parcel:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Image14: TImage
            Left = 15
            Top = 2
            Width = 20
            Height = 20
            Cursor = crHandPoint
            Hint = 'Search for Property Owner'
            AutoSize = True
            Picture.Data = {
              07544269746D6170E6040000424DE60400000000000036000000280000001400
              0000140000000100180000000000B0040000120B0000120B0000000000000000
              0000826656795748694C395F472F604830604830604830604830604830604830
              604830604830604830604830604830604830604830604830604830604830D1BF
              AFCBB0A2C7ACA1C4AA9CC4A593C4A593C4A18BC49F84C49E83C4987AC4957DC4
              8B62C48350C48056C48155C4824BC47C47CF8150AC724A604830FFFDF9AFCC9E
              7CB16F81BC7C83C4778BD08085C97879B869A4B288CCAC87F5DCCFFFEEE0FFEB
              DBFFE9DBFFE9D7FFEAD5FFD0AAFFB47ED48553604830FFFFFF85C5756BB95A9A
              CE927CC57566D06663D36537B034789C5FBF9B71F6E8DFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAE2D2FFC596C97E49604830F4F8F17AC67991CE8BECEFE2C2DB
              BA69BE676CCF6B4FAB4BADB392C29C83ECDAD4FCF8FAFFFDFFFFFFFFFFFFFFFF
              FFFFECD0BFFFCA98C9844C6048307CAA5963BB5AAAD89AFFEEE7EAEAE08FB777
              65C05673A972D9C3C0BA9577B2846EDCACC1FFEBFFFFFFFFFFFFFFFFFFFFFEE3
              D7FFC19FC984566048307BBA6F61AF5166A57B71A1C75A9ED24D90A42E7C49DA
              DDCCF2DCCBE3BF98DAB08ACCA18BBE998CBA9E8EC1A195E4B2D6EFCFC9FFCFA8
              C98856604830D1E7CA81B59F3088AC157EDC1783E42389E40E689AEAD7D1FDE8
              CDF8D8B4FDDFB4D5B38795684C7C4A41A16E5ACD988CEDC8B7FFCEA9C98A5E60
              4830EDE2E684B5E92C94F72697FF389EFF329DFF1E8BF6A3A39EFFE1C6F6D8BF
              FFEBC9E3C4A399685D6D3940AE7F68D8B872EBC8A8FFCEAFC98B64604830A6B5
              BB59A5E235A3FF45ABFF44A9FF44A8FF39A9FF708B9AF9D4B3FCDEC7FFF8E0E5
              CDB59A6B626D3C3FB2866AF1C08FE1BFA3FFDEBEC991646048309AB1BE5AAAE7
              41AFFF52B8FF50B6FF4FB3FF4AB4FF6590AEEFC7A1FFE4C7FFFFF4E7D8CC9B70
              676A3535AD8067EBBC8BF5D5BEFFD7BBC9966E604830A7C8D265B8F046B4FE53
              BAF950B8FC51BAFF54C1FF4D8DBFACB2C1E6DED4FFFFF4FAF2E5D0B3A4AF8573
              C79F80EABE8EF6DCC2FFDDBFC99C7B604830DCCDF263A7DD2898D443A4DB48A7
              E24EADEC49ADED3581B572ACEB7BB2EFD5E8F3FFFFF1FBF2DEF1DAC0EDCEAAF8
              CC9EF4DFCAFFE0C6C99D7D604730FFDAFF7BA8CE248AB64199C968AED86EB1DD
              3E96CE5291B569B9FF1F8CFF6FB4F9DAEEF4FFFFF3FFFFE8FFEFCEEAD2AFEED3
              C8FFE3D3C99F7F5F4A2FFFFFFFBDD5E26AA6CE64ABD899CCEA98CAE64E9DC5A3
              C6D977C7FF2494FF1787FF7BBAF9E8F5F3FBFEEEF3EBDAB0B9B6E8C6BFFFECE1
              C9A68C615131FFFFFFFADDFDD4B1EE93A5DB69AFD25CA3C86FA9C8E5F8FC72C5
              FF41AAFF1C8EFF2B8FFF80BFFFCCE6F484B4CB7B78BAF4E6E5FFEBDACCAC9A6E
              573EFFFFFFFFF7FFFDEBFDE6E6F5D2E7F1CEE3EEDAE9F09BA7FF2AB7FF46B2FF
              21A4FF0091FE158AFA5491F15B67D5B9B1E4FBE1D9FFF4EAD0B39C7C5C4AFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBC0FF86D9FF25B7FF71D0FF8D
              D4FE559AED0F45CFABA3EDF7F2FFFDECE3FFF4EED0B6A480685AFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6AD6FFDAF6FFFFFFFFC4C1
              E62138B6FBFEFCFFFFFFFFFFFAFFF5EFD6C3B9857462FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDC1EA414EC2
              EFF0FAFFFFFFFFF9F6FFFFFBE2D7CB907860}
            Transparent = True
            OnClick = Image14Click
          end
          object Label26: TLabel
            Left = 188
            Top = 37
            Width = 54
            Height = 16
            Caption = 'Address:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Address_Label: TLabel
            Left = 249
            Top = 38
            Width = 190
            Height = 18
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Owner_Label: TLabel
            Left = 249
            Top = 57
            Width = 190
            Height = 18
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label33: TLabel
            Left = 196
            Top = 56
            Width = 46
            Height = 16
            Caption = 'Owner:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label24: TLabel
            Left = 186
            Top = 78
            Width = 56
            Height = 16
            Caption = 'Land AV:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label25: TLabel
            Left = 187
            Top = 102
            Width = 55
            Height = 16
            Caption = 'Total AV:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label14: TLabel
            Left = 143
            Top = 124
            Width = 99
            Height = 16
            Caption = 'Full Market Val:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object LandAV_Label: TLabel
            Left = 249
            Top = 79
            Width = 190
            Height = 18
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object TotalAV_Label: TLabel
            Left = 249
            Top = 103
            Width = 195
            Height = 18
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object EqualizedValue_Label: TLabel
            Left = 249
            Top = 125
            Width = 195
            Height = 18
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Picture_Image: TImage
            Left = 8
            Top = 36
            Width = 129
            Height = 117
            PopupMenu = pmenSubjectImage
            Stretch = True
            OnClick = LoadNewPictureClick
          end
          object Label15: TLabel
            Left = 451
            Top = 9
            Width = 95
            Height = 16
            Alignment = taRightJustify
            Caption = 'Property Class:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 452
            Top = 29
            Width = 94
            Height = 16
            Alignment = taRightJustify
            Caption = 'Neighborhood:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label17: TLabel
            Left = 453
            Top = 49
            Width = 93
            Height = 16
            Alignment = taRightJustify
            Caption = 'Building Style:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 499
            Top = 89
            Width = 47
            Height = 16
            Alignment = taRightJustify
            Caption = 'Zoning:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label19: TLabel
            Left = 501
            Top = 109
            Width = 45
            Height = 16
            Alignment = taRightJustify
            Caption = 'Sewer:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label20: TLabel
            Left = 504
            Top = 129
            Width = 42
            Height = 16
            Alignment = taRightJustify
            Caption = 'Water:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 747
            Top = 9
            Width = 65
            Height = 16
            Alignment = taRightJustify
            Caption = 'Year Built:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label27: TLabel
            Left = 747
            Top = 29
            Width = 65
            Height = 16
            Alignment = taRightJustify
            Caption = 'Condition:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label28: TLabel
            Left = 769
            Top = 49
            Width = 43
            Height = 16
            Alignment = taRightJustify
            Caption = 'Grade:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label29: TLabel
            Left = 745
            Top = 89
            Width = 67
            Height = 16
            Alignment = taRightJustify
            Caption = 'Basement:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label30: TLabel
            Left = 733
            Top = 109
            Width = 79
            Height = 16
            Alignment = taRightJustify
            Caption = 'Sq. Ft. Area:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label32: TLabel
            Left = 972
            Top = 28
            Width = 75
            Height = 16
            Alignment = taRightJustify
            Caption = '# of Stories:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label22: TLabel
            Left = 952
            Top = 48
            Width = 95
            Height = 16
            Alignment = taRightJustify
            Caption = '# of Bedrooms:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label23: TLabel
            Left = 932
            Top = 68
            Width = 115
            Height = 16
            Alignment = taRightJustify
            Caption = 'Baths / Half Baths:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label34: TLabel
            Left = 986
            Top = 88
            Width = 61
            Height = 16
            Alignment = taRightJustify
            Caption = 'Frontage:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label35: TLabel
            Left = 991
            Top = 128
            Width = 57
            Height = 16
            Alignment = taRightJustify
            Caption = 'Acreage:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label36: TLabel
            Left = 1006
            Top = 108
            Width = 41
            Height = 16
            Alignment = taRightJustify
            Caption = 'Depth:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object PropertyClass_Label: TLabel
            Left = 552
            Top = 9
            Width = 144
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Neighborhood_Label: TLabel
            Left = 553
            Top = 29
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object BuildingStyle_Label: TLabel
            Left = 553
            Top = 49
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Zoning_Label: TLabel
            Left = 553
            Top = 89
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Sewer_Label: TLabel
            Left = 553
            Top = 109
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Water_Label: TLabel
            Left = 553
            Top = 129
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object YearBuilt_Label: TLabel
            Left = 822
            Top = 9
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Condition_Label: TLabel
            Left = 822
            Top = 29
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Grade_Label: TLabel
            Left = 822
            Top = 49
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object BasementType_Label: TLabel
            Left = 822
            Top = 89
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SqFtArea_Label: TLabel
            Left = 822
            Top = 109
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object NumStories_Label: TLabel
            Left = 1058
            Top = 28
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object NumBedrooms_Label: TLabel
            Left = 1058
            Top = 48
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object NumBathrooms_Label: TLabel
            Left = 1058
            Top = 68
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Frontage_Label: TLabel
            Left = 1058
            Top = 88
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Acreage_Label: TLabel
            Left = 1059
            Top = 128
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Depth_Label: TLabel
            Left = 1058
            Top = 108
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label66: TLabel
            Left = 451
            Top = 69
            Width = 95
            Height = 16
            Alignment = taRightJustify
            Caption = 'School District:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SchoolDistrict_Label: TLabel
            Left = 553
            Top = 69
            Width = 162
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label67: TLabel
            Left = 736
            Top = 69
            Width = 76
            Height = 16
            Alignment = taRightJustify
            Caption = 'Fire District:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object FireDistrict_Label: TLabel
            Left = 821
            Top = 69
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label68: TLabel
            Left = 976
            Top = 9
            Width = 71
            Height = 16
            Alignment = taRightJustify
            Caption = 'Swis Code:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object PrintKey_Label: TLabel
            Left = 150
            Top = 8
            Width = 212
            Height = 18
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label75: TLabel
            Left = 474
            Top = 148
            Width = 72
            Height = 16
            Alignment = taRightJustify
            Caption = 'Ownership:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Ownership_Label: TLabel
            Left = 553
            Top = 148
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object FinRecRoomArea_Label: TLabel
            Left = 822
            Top = 129
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label83: TLabel
            Left = 719
            Top = 129
            Width = 93
            Height = 16
            Alignment = taRightJustify
            Caption = 'Fin Rec Room:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lbTraffic: TLabel
            Left = 1005
            Top = 148
            Width = 43
            Height = 16
            Alignment = taRightJustify
            Caption = 'Traffic:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Traffic_Label: TLabel
            Left = 1059
            Top = 148
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 754
            Top = 148
            Width = 57
            Height = 16
            Alignment = taRightJustify
            Caption = 'Garages:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Garages_Label: TLabel
            Left = 821
            Top = 148
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SwisCode_Label: TLabel
            Left = 1058
            Top = 9
            Width = 147
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label5: TLabel
            Left = 739
            Top = 170
            Width = 72
            Height = 16
            Alignment = taRightJustify
            Caption = 'Central Air:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object CentralAir_Label: TLabel
            Left = 821
            Top = 170
            Width = 77
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label31: TLabel
            Left = 1009
            Top = 170
            Width = 39
            Height = 16
            Alignment = taRightJustify
            Caption = 'Pools:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Pools_Label: TLabel
            Left = 1059
            Top = 170
            Width = 109
            Height = 16
            AutoSize = False
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SubjectParcel_xpEdit: TxpEdit
            Left = 282
            Top = 3
            Width = 225
            Height = 23
            Alignment = taLeftJustify
            Rounded = True
            RoundRadius = 4
            ActiveFrameColor = clNavy
            InActiveFrameColor = clBtnShadow
            MarginLeft = 2
            MarginRight = 2
            Style = esXP
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Visible = False
          end
          object Panel549: TPanel
            Left = 1467
            Top = 1
            Width = 87
            Height = 189
            Align = alRight
            BevelOuter = bvNone
            Color = 14607075
            TabOrder = 1
            object Image1: TImage
              Left = 61
              Top = 6
              Width = 22
              Height = 21
              Cursor = crHandPoint
              Hint = 'Edit Subject Site/Building'
              AutoSize = True
              Picture.Data = {
                07544269746D6170CA050000424DCA0500000000000036000000280000001600
                000015000000010018000000000094050000120B0000120B0000000000000000
                0000C983842A17172E17172A1717271414241313201010393C3D191C1B161B1F
                141A1E11161B1715121715123D3F3F4040404141413F40400A0E110A0E11393D
                3D4041410000DE9D9CE08F905A3838563536502F2F462324402222283D41374E
                54294854294854283D41283D41242F361F2830676D6E6D7071141A202948540F
                4A5F11161B393D3D0000FFFFFFFDFDFCF6F6F6F1F2F3F9F9FAFDFDFDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF253338252B2E0000FFFFFFFDFDFCB6B9BC7079809DADB6D1D4DA
                FCF7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF252B2F4041410000FFFFFFFEFEFE94A3A8203D4A6485
                9295A3B2B6B4BFD3CED3FAF6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F40404141410000FFFFFFFFFFFFC2DBE16F
                9CAA9EBFC682A4B55C7089716F82C7C8CFF7F6F7FFFEFEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040404041410000FFFFFFFFFFFF
                DFF0F6AED9E6D4EBF398CEDF5F9DB75B7F9C597B9CBABFCAFFFCF7FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFC4040404040400000FFFF
                FFFFFFFFF2FBFDCCECF6BAE1ED97D1DF77C1DD5EB3DE419DD05B87ABB0AEB6FB
                F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAFB404040404141
                0000FFFFFFFFFFFFFBFDFDDEEEF39CCEDB88C5D984CEF276D8FF65D4FF3D94C5
                597E9FB1B1B9E8E6E5FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4041
                414041410000FFFFFFFFFFFFFFFFFFF8FBFCBEDDE688CCEC7CCDFA8BD6FF7FD0
                FF70D8FF49A2D543678BA9A9B2EBE6E6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF4141413F40400000FFFFFFFFFFFFFFFFFFFEFFFFF1F7F9A7DAF374C6F083
                CFF68CD7FF80D6FF63C6F74CA4D647698DACA8B1FDF3EFFFFFFFFFFFFFFFFFFF
                FFFFFFFEFFFF4141414040400000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F3FC
                B0DBEE8CCBE586D0F388D3FE81D9FF67CCFF3E94C6527FA5ADB6C5FFFEFFFFFF
                FFFFFFFFFFFFFFFDFEFE4141413F40400000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F8F7BADCE58FCDE588D1F48BD5FD7ED1FF6BD9FF3C8EC0617B96C8
                C1C2F6F4F4FFFFFFFFFFFFF8FBFC4041414040400000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFEFFFFF5FAFBB9DCE58BCCE583CFF68AD6FF76CCFB81B5D2
                6A76805F5B5DCAC9C8FAFAFAFFFFFFF9FCFC3E3F3F4141410000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F7F8BADCE685CBE980CBF298BC
                D1B5BDC38987833E3E3942434CB2B2B8E8E8EAFEFEFE4040404141410000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF3F4B3DEEE83
                C2DE95A0A3B5AD9B9E99925E5F7E4142856E6E9C8A8AA4FEFEFE404141414141
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                ECF8FCAED1DB949D9E8D8C869797A8A0A0E59A9AFF5E5EAF424274FEFEFE4040
                404141410000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFDFEFFF3F6F7C9C9CB7473A18484C0CFCFFD9E9EFF7F7FBF77779FFE
                FFFF4141414041410000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3F4B9B8E59292E89595F48787F3ADADE0
                C1C1D8FFFFFF4141414041410000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8FFCECEFFACACF2B5B5
                F5E2E2FAF6F6FCFEFEFEBCBCBC4040410000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF9
                F9FEF9F9FEFDFDFFFFFFFFF5FAFAFFFFFFFFFFFF0000}
              Transparent = True
              OnClick = Image1Click
            end
          end
        end
        object xpPanel1: TxpPanel
          Left = 1
          Top = 194
          Width = 1557
          Height = 28
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
          object Panel9: TPanel
            Left = 938
            Top = 1
            Width = 616
            Height = 24
            Align = alRight
            BevelOuter = bvNone
            Color = 13090741
            TabOrder = 0
            object Image2: TImage
              Left = 518
              Top = 1
              Width = 23
              Height = 23
              Cursor = crHandPoint
              Hint = 'Load a Comp. Record'
              Picture.Data = {
                07544269746D617026040000424D260400000000000036000000280000001200
                0000120000000100180000000000F0030000120B0000120B0000000000000000
                0000FFFFFF414141414141414141414141414141414141414141414141414141
                4141414141414141414141414141414141414141414141410000FFFFFFFFFFFF
                9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
                9B9B9B9B9B9B9B9B9B9B4141414141410000EEDECEC0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C08484844141410000EEDDCEC0C0C0C0C0C0C2C2C2CBCBCBCBCBCBCBCBCBCB
                CBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCACACAC0C0C0848484414141
                0000EEDCCDC0C0C0C2C2C29D9D9D020202020202020202020202020202020202
                020202020202020202050505131313C0C0C08484844141410000EEDCCDC0C0C0
                B9B9B97A7A7A8C8C8C858B8B838B8B848B8B868B8B818B8B898B8B7F8C8C8A8B
                8B0000000F0F0FC0C0C08484844141410000EEDCCDC0C0C0B3B3B3A1A0A0FEFF
                FF71F9FB5AFEFF62FDFE8CF9FB3AFFFFB0F5F71DFFFF717F7F0F0F0F0E0E0EC0
                C0C08484844141410000EEDCCCBFBFBF828181FFFFFF6FEEF151F7F87BF2F474
                F3F54EF7F898EFF12BFDFEDBEBEE0000006E6E6D080808C0C0C0848484414141
                0000EEDCCCADADADA6ABAB8CFDFE3DF5F77CF1F359F5F65FF4F57CF1F343F7F8
                96FEFF6360603E50512D3334020101CACACA8484844141410000EEDCCC7D7D7D
                FFFFFF5EFFFFE3FBFD87FFFFBBFFFFB2FFFF87FFFFDBFBFD4FE2E2000000F095
                97FAFFFF545A5C6E6E6E8484844141410000EEDBCC7C7C7CC5C3C3D4B9B9D4BB
                BAD0C0BFCDC1C1C6BABACBCACAC2C0BF9594942B3535F85D5DFFFFFF7B868846
                46468484844141410000EEDBCBA3A3A37C7B7BA1BEBE33BFC0AD8E908E8F8EC5
                C5C5BE3D3DBEACACC53434CEBABAFFFFFF5D5D5D000000D0D0D0848484414141
                0000EEDACBC2C2C28A8A8AFAFFFF6FFAFD6AEBECC7A8A9DEDFDEFFBCBCFF5252
                FF7D7DFFFFFF545454444444848484C0C0C08484844141410000EEDACBBEBEBE
                858484E8FFFF2FF4F56CF5F758EAEBAEA3A5E3EAEAFFC3C3FFFFFF3E3F3F4949
                49818181CCCCCCC0C0C08484844141410000EEDACBC0C0C0AEAEAE9AA4A4DFFF
                FFF9FFFFE7FFFFBBB8B8707070FFFFFF424343828282B6B6B6B4B4B4C1C1C1C0
                C0C08484844141410000EDD9CAC0C0C0C1C1C1AFAEAE8482828A8989868484A3
                A3A3CECECE2E2E2E848484C1C1C1C1C1C1C1C1C1C0C0C0C0C0C0848484414141
                0000EDD9C9C0C0C0C0C0C0C0C0C0BEBEBEBEBEBEBEBEBEBFBFBFC1C1C1BCBCBC
                BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E2E2E24141410000EDD9CAEDD9CA
                EDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9
                CAEDD9CAEDD9CAEDD9CAEDD9CAB7B7B70000}
              Stretch = True
              Transparent = True
              OnClick = Image2Click
            end
            object Image5: TImage
              Left = 546
              Top = 1
              Width = 23
              Height = 23
              Cursor = crHandPoint
              Hint = 'Save a Comp. Record'
              Picture.Data = {
                07544269746D617026040000424D260400000000000036000000280000001200
                0000120000000100180000000000F0030000120B0000120B0000000000000000
                0000FFFFFF414141414141414141414141414141414141414141414141414141
                4141414141414141414141414141414141414141414141410000FFFFFFFFFFFF
                9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
                9B9B9B9B9B9B9B9B9B9B4141414141410000EEDECEEEDECEEEDECEEEDECEEEDE
                CEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEE
                DECE8484844141410000EEDDCEDAECF1CFDCE0978E8681818283838367676767
                67676161616464645555554A4A4A303031555556BBC2C4DDEEF1848484414141
                0000EEDCCDBDBFB58A7C6D623200E6EBF1F1F2F4D2D3D5D6D8D9EBEDEEFFFFFF
                FFFFFFEBEFF38F8A84322312524B47A5ACAF8484844141410000EEDCCD572300
                7A42006B410FE4D8CFE3D5C8E7D8CCE6D8CCE2D3C4DBC8B1DECCB7DDCEBDE5BA
                8AAB6616472A022522198484844141410000EEDCCD663903DA9E5F653803E1A9
                7BD7A071D8A071D8A173D59B67CA863BC6802DC88232D28E409560248452096A
                53248484844141410000EEDCCC663903D9A982653802E6B88EE3B087E3B087E3
                B087E4B28AE2AE84D79A59D39246D8974C915B1DA06420886745848484414141
                0000EEDCCC663903D8A67C643301C56D4B945B27995C27995C27995C269A5E2A
                975A218C4907B8742C9E6725995F1B8D6E4B8484844141410000EEDCCC663903
                D8A67C6132019D6761779D83739C87749C86749C86749C86759D88739F8B827B
                517431049F652191724F8484844141410000EEDBCC663903D8A57B5D380AACE6
                EAC7E4E8A1C8D0A5CCD3A5CCD3A5CCD3A4CAD2B0D4D7A2D2D36062519F5A1390
                714E8484844141410000EEDBCB663903D9A67B74580DB0FFFFB3EFEFA9E6E6AA
                E7E7AAE7E7AAE7E7AAE7E6AEE9E8ACFFFF81AC8BA963088E6F4E848484414141
                0000EEDACB663903D9A77A7B5E00B0FFFFC5CFCFA4B5B5A8B8B8A8B8B8A8B8B8
                A6B6B6B1BDBCB2ECF582AC7EAE68008C6E4F8484844141410000EEDACB663903
                DBAA818F9283A8FFFFAEF8F9A5F7FFA7F6FCAAF4F3AAF4F4A9F4F4ACF5F5A6FD
                FF8EC6C6B8854D906E458484844141410000EEDACB613000E5B58FA8B0BCD3EE
                F0C6C8BECB8D40C29964A3B0B7A7ADADA5ABABB3B2B1AFE4E796D9E6D2AC92A0
                836A8484844141410000EDD9CA9D9893643200886A16E6FEFFD8F3F8ACFFFDB0
                FFFFAEFFFFAEFFFFAEFFFFAFFFFFB2FFFF9ABE936A2F00826952848484414141
                0000EDD9C9D7E7EAD3E2E39E9A93613306663A06653B06653B06653B06653B06
                653B06653B06613306786042BCC7CCDBEDEFE2E2E24141410000EDD9CAEDD9CA
                EDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9
                CAEDD9CAEDD9CAEDD9CAEDD9CAB7B7B70000}
              Stretch = True
              Transparent = True
              OnClick = Image5Click
            end
            object Exclude_NonArmsLength_Transactions_xpCheckBox: TxpCheckBox
              Left = 237
              Top = 1
              Width = 276
              Height = 17
              Cursor = crHandPoint
              Caption = 'Exclude Non Arms Length Transactions'
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
            object Exclude_SameAddressSales_xpCheckBox: TxpCheckBox
              Left = 6
              Top = 1
              Width = 214
              Height = 17
              Cursor = crHandPoint
              Caption = 'Exclude Same Address Sales'
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
            object Grids_Sales_Reset_xpBitBtn: TxpBitBtn
              Left = 577
              Top = 1
              Width = 29
              Height = 23
              Cursor = crHandPoint
              Hint = 'Reset Grid Columns'
              Caption = 'XP BitBtn'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                F6030000424DF603000000000000360000002800000014000000100000000100
                180000000000C0030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3C8C261361F61361FFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7D4629BCA192FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC7A796945330E0D0C7FF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFD4B6A4A66036D0AE99FF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB26A38FF00FF
                FF00FFFF00FFFF00FFFF00FFD0A789B26A38B26A38FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB87038B87038B87038FF00FFFF
                00FFB87038B87038B87038B87038B87038B87038B87038FF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFBD7738BD7738BD7738BD7738BD7738FF00FFFF00
                FFBD7738BD7738BD7738BD7738BD7738FF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFC27E38C27E38C27E38C27E38C27E38C27E38C27E38FF00FFFF00FF
                C27E38C27E38C27E38FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFC68738C68738DBB789FF00FFFF00FFFF00FFFF00FFFF00FFC6
                8738FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFE2C399CA8E38E4CAA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEE
                E0C9CE9737E4C899FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE7D1
                98D5A834FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAB532
                DAB532F1E8C7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              Gradient = True
              TabOrder = 2
              OnClick = Grids_Sales_Reset_xpBitBtnClick
            end
          end
          object UpdateSales_Bitbtn: TxpBitBtn
            Left = 2
            Top = 0
            Width = 138
            Height = 22
            Cursor = crHandPoint
            Caption = 'Update Sales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              22020000424D2202000000000000920000002800000014000000140000000100
              08000000000090010000120B0000120B00001700000017000000104A1000108C
              180039CE3900428C420042C6420042CE420042D642004AD64A005AD65A005ADE
              5A0063AD630063DE630073DE73006BE7730073E7730073DE7B0073E77B0084EF
              8C0094F79C00A5F7A500BDFFBD00FF00FF00FFFFFF0015151515151515151515
              1515151515151515151515151515151515151515151515151515151515151515
              151515151500000000151515151515151515151515151515010202020A011515
              151515151515151515151515010505020A011515151515151515151515151501
              020B0807040A15151515151515151515151503010C0C0C0B0802151515151515
              151515151503010C0F0C020C0C0C011515151515151515150C12121212011501
              0C0C0C0115151515151515150C12120C01151503020F0C020315151515151515
              020C020115151515010C120C0A151515151515150A0A0A151515151515011212
              0C01151515151515151515151515151515151212120C03151515151515151515
              15151515151515021213120A1515151515151515151515151515151502141402
              0A151515151515151515151515151515150214120A1515151515151515151515
              151515151515020C0A1515151515151515151515151515151515150A15151515
              1515151515151515151515151515151515151515151515151515151515151515
              151515151515}
            Gradient = True
            TabOrder = 1
            OnClick = UpdateSales_BitbtnClick
          end
          object xpBitBtn2: TxpBitBtn
            Left = 153
            Top = 0
            Width = 168
            Height = 23
            Cursor = crHandPoint
            Hint = 'Clear Selected Sales'
            Caption = 'Clear Selected Sales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              06030000424D060300000000000036000000280000000F0000000F0000000100
              180000000000D0020000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF80808080808080808080808080808080808080
              8080808080808080808080808080808080808080FFFFFF000000FFFFFF808080
              8080808080808080808080808080808080808080808080808080808080808080
              80808080FFFFFF000000FFFFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080FFFFFF000000FFFFFF808080
              808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
              80808080FFFFFF000000FFFFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080FFFFFF000000FFFFFF808080
              808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
              80808080FFFFFF000000FFFFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080FFFFFF000000FFFFFF808080
              808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
              80808080FFFFFF000000FFFFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080FFFFFF000000FFFFFF808080
              808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
              80808080FFFFFF000000FFFFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080FFFFFF000000FFFFFF808080
              8080808080808080808080808080808080808080808080808080808080808080
              80808080FFFFFF000000FFFFFF80808080808080808080808080808080808080
              8080808080808080808080808080808080808080FFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000}
            Gradient = True
            TabOrder = 2
            OnClick = xpBitBtn2Click
          end
          object btnAddSale: TxpBitBtn
            Left = 328
            Top = -1
            Width = 138
            Height = 22
            Cursor = crHandPoint
            Caption = 'Add Sales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330F03333
              3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
              3300333330F033333300333330F0333333003333300033333300333333333333
              33003333333333333300}
            Gradient = True
            TabOrder = 3
            OnClick = btnAddSaleClick
          end
        end
      end
      object xpPanel254: TxpPanel
        Left = 0
        Top = 495
        Width = 1561
        Height = 255
        GradientFill = False
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Title = 'Sales Filters'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = [fsBold]
        TitleAlignment = taLeftJustify
        TitleStartColor = clWhite
        TitleEndColor = 4629503
        TitleColor = clWhite
        TitleImage.Data = {
          B6040000424DB604000000000000360000002800000015000000120000000100
          18000000000080040000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FF859EC0496DA11A203BFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF8AA2C34A6EA37E8B9E1A203BFF01FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF8DA4C64A6EA37D8A9D1A203BCCD0D6FF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8D9D
          B34A6EA37E8B9E1A203BCCD0D6FF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEBF979785
          571A203B1A203BCBCFD5FF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFA2A19A686141403B2038331D534F3B939189A79052B6A8
          8560512AC6C8CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FF9D9266857A46B6AC7BC7BC8BBAB286948D6D3C371C342F1C7A68
          35D3CFC4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFB0AFA5A49553DED9C4D9D3B8D5CEADF1EFE7DAD3B5B5AD873C371CA3A1
          9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFA39658D6CFACE5E2D4E0DCC9DDD8C2E3DFCCF4F4F2E7E4D5958E6F514D
          3AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFA09049ECEADEE9E8E0E5E3D7E1DECEDFDAC7DFDBC5E7E4D4B8B0873833
          1DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFB5A454F2F0EBF0EFEDE8E7E0E4E2D8E1DECEDBD7C1D3CDAEC7BC8D403B
          20FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFC2B574E9E5D3F6F6F6EFEEECE9E8E2E6E4D8E0DDCBD9D3BAB8AE80655F
          3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFC7C3B2D7CFA4FAFAFAF7F7F7F1F1EEEBEAE2E6E4D6E1DEC9827745AAA9
          A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFCEC38FD8D0A5E9E5D3F4F2EDF0EEE4D9D3B1A09352A0976AFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFC6C3B2C2B473AE9E50988945A29557B4B3A9FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00}
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        DefaultHeight = 60
        Movable = True
        Sizable = True
        BorderColor = clSilver
        RoundedCorner = []
        BGImageAlign = iaStretch
        Color = 14607075
        Align = alBottom
        TabOrder = 1
        object Sales_Filter_xpPageControl: TxpPageControl
          Left = 1
          Top = 1
          Width = 1557
          Height = 221
          ActivePage = xpTabSheet177
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          OnChange = Sales_Filter_xpPageControlChange
          OnChanging = Sales_Filter_xpPageControlChanging
          ImageList = SalesTab_ImageList
          BorderColor = 13143690
          TabTextAlignment = taCenter
          object xpTabSheet177: TxpTabSheet
            Caption = 'Characteristics'
            ImageIndex = 0
            Color = 13090741
            BGStyle = bgsNone
            GradientStartColor = clWhite
            GradientEndColor = clSilver
            GradientFillDir = fdTopToBottom
            object xpPanel255: TxpPanel
              Left = 0
              Top = 0
              Width = 1555
              Height = 4
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
              TabOrder = 4
            end
            object Ownership_Panel: TPanel
              Left = 1140
              Top = 4
              Width = 110
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 2
              object Ownership_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 110
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 110
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Ownership'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object PropertyClass_Panel: TPanel
              Left = 0
              Top = 4
              Width = 160
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object PropertyClass_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 160
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                Sorted = True
                TabOrder = 0
              end
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 160
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Property Class'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object PropertyClass_Spacer: TPanel
              Left = 160
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 1
            end
            object Ownership_Spacer: TPanel
              Left = 1250
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 3
            end
            object Grade_Panel: TPanel
              Left = 1025
              Top = 4
              Width = 100
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 5
              object Grade_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 100
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 100
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Grade'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object Grade_Spacer: TPanel
              Left = 1125
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 6
            end
            object Condition_Panel: TPanel
              Left = 900
              Top = 4
              Width = 110
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 7
              object Condition_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 110
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel13: TPanel
                Left = 0
                Top = 0
                Width = 110
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Condition'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object Condition_Spacer: TPanel
              Left = 1010
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 8
            end
            object FireDistrict_Panel: TPanel
              Left = 785
              Top = 4
              Width = 100
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 9
              object FireDistrict_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 100
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel16: TPanel
                Left = 0
                Top = 0
                Width = 100
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Fire District'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object FireDistrict_Spacer: TPanel
              Left = 885
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 10
            end
            object SwisCode_Panel: TPanel
              Left = 605
              Top = 4
              Width = 165
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 11
              object SwisCode_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 165
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel19: TPanel
                Left = 0
                Top = 0
                Width = 165
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Swis'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object SwisCode_Spacer: TPanel
              Left = 770
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 12
            end
            object SchoolDistrict_Panel: TPanel
              Left = 465
              Top = 4
              Width = 125
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 13
              object SchoolDistrict_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 125
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel22: TPanel
                Left = 0
                Top = 0
                Width = 125
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'School'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object SchoolDistrict_Spacer: TPanel
              Left = 590
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 14
            end
            object BuildingStyle_Panel: TPanel
              Left = 315
              Top = 4
              Width = 135
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 15
              object BuildingStyle_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 135
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel25: TPanel
                Left = 0
                Top = 0
                Width = 135
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Building Style'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object BuildingStyle_Spacer: TPanel
              Left = 450
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 16
            end
            object Neighborhood_Panel: TPanel
              Left = 175
              Top = 4
              Width = 125
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 17
              object Neighborhood_ListBox: TListBox
                Left = 0
                Top = 23
                Width = 125
                Height = 169
                Align = alClient
                ItemHeight = 15
                MultiSelect = True
                TabOrder = 0
              end
              object Panel28: TPanel
                Left = 0
                Top = 0
                Width = 125
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Neighborhood'
                Color = 13090741
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object Neighborhood_Spacer: TPanel
              Left = 300
              Top = 4
              Width = 15
              Height = 192
              Align = alLeft
              BevelOuter = bvNone
              Color = 13090741
              TabOrder = 18
            end
          end
          object xpTabSheet233: TxpTabSheet
            Caption = 'Ranges'
            ImageIndex = 1
            Color = 13090741
            BGStyle = bgsNone
            GradientStartColor = clWhite
            GradientEndColor = clSilver
            GradientFillDir = fdTopToBottom
            object Label179: TLabel
              Left = 6
              Top = 12
              Width = 122
              Height = 18
              Caption = 'Sale Date Range:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label178: TLabel
              Left = 31
              Top = 35
              Width = 67
              Height = 16
              Caption = 'Start Date:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Image51: TImage
              Left = 194
              Top = 34
              Width = 21
              Height = 18
              Cursor = crHandPoint
              AutoSize = True
              Picture.Data = {
                0A544A504547496D616765E9020000FFD8FFE000104A46494600010200006400
                640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
                64C000000001FFDB0084000604040405040605050609060506090B080606080B
                0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
                1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
                1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
                1F1F1F1F1F1F1F1F1F1F1F1FFFC00011080012001503011100021101031101FF
                C400900000010501000000000000000000000000030001020406050100030101
                000000000000000000000000000304020510000005020206060B010000000000
                0000010203040511121406002122133334325363153516315152627223436436
                07379711000101020B070403000000000000000001001102F021314151618191
                120313C1D1225262720471B14292A2C233FFDA000C03010002110311003F002C
                4B2CAEDA2601A9E0A1D24BCB50AFD6766CABDF6B2ABBA6AA1D732CAA0646CD96
                C27A9EA26DA1AEC8E95E4F8F8DD6CB199C0A192FAFB2D8762909B46D5D03B3CA
                64BAF89892D975F5FD7AE02966F2EAD56D56EE14AFC26F50E8D1E20A3F377756
                2F430F29BDD59E728C184CC6BE0CB50C0B9DB3E6676E1009EECC24CC0CE3CAB0
                C5F14572A47308277DF70892BAE9A2B41DD5C3331B28E56CB25A8C31D9B2E4A5
                A19CBB8DCB2B0471DDA639460D34950662E4B783073714A6EEC95B440CA2750B
                D3F49475EA3A55F8398EBAE46591D3DB5885C5D92F00215282D0088B3745084A
                B83195144C1107ADA38AA50E197922856F4E9F2FD9D65D5B8D1CC7F55D21F1A7
                134621BCD5F298C45BC56B99B93A441FE931FAF5774C77B3B8A75BB8B658152E
                C3482B83C30D771E6764B5D87C170F73B74C0D2DFA34D8D118C6BB5B353D34B7
                F6B540DE385109D6199F86C77F41E459F0781CB27CB7DBF51D9DBA7392113FD1
                3410A9ABE32D7F3CE59C74F9AE9A1C2ECBACF7ACD042FFD9}
              OnClick = Image51Click
            end
            object Label176: TLabel
              Left = 239
              Top = 35
              Width = 61
              Height = 16
              Caption = 'End Date:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Image50: TImage
              Left = 402
              Top = 34
              Width = 21
              Height = 18
              Cursor = crHandPoint
              AutoSize = True
              Picture.Data = {
                0A544A504547496D616765E9020000FFD8FFE000104A46494600010200006400
                640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
                64C000000001FFDB0084000604040405040605050609060506090B080606080B
                0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
                1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
                1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
                1F1F1F1F1F1F1F1F1F1F1F1FFFC00011080012001503011100021101031101FF
                C400900000010501000000000000000000000000030001020406050100030101
                000000000000000000000000000304020510000005020206060B010000000000
                0000010203040511121406002122133334325363153516315152627223436436
                07379711000101020B070403000000000000000001001102F021314151618191
                120313C1D1225262720471B14292A2C233FFDA000C03010002110311003F002C
                4B2CAEDA2601A9E0A1D24BCB50AFD6766CABDF6B2ABBA6AA1D732CAA0646CD96
                C27A9EA26DA1AEC8E95E4F8F8DD6CB199C0A192FAFB2D8762909B46D5D03B3CA
                64BAF89892D975F5FD7AE02966F2EAD56D56EE14AFC26F50E8D1E20A3F377756
                2F430F29BDD59E728C184CC6BE0CB50C0B9DB3E6676E1009EECC24CC0CE3CAB0
                C5F14572A47308277DF70892BAE9A2B41DD5C3331B28E56CB25A8C31D9B2E4A5
                A19CBB8DCB2B0471DDA639460D34950662E4B783073714A6EEC95B440CA2750B
                D3F49475EA3A55F8398EBAE46591D3DB5885C5D92F00215282D0088B3745084A
                B83195144C1107ADA38AA50E197922856F4E9F2FD9D65D5B8D1CC7F55D21F1A7
                134621BCD5F298C45BC56B99B93A441FE931FAF5774C77B3B8A75BB8B658152E
                C3482B83C30D771E6764B5D87C170F73B74C0D2DFA34D8D118C6BB5B353D34B7
                F6B540DE385109D6199F86C77F41E459F0781CB27CB7DBF51D9DBA7392113FD1
                3410A9ABE32D7F3CE59C74F9AE9A1C2ECBACF7ACD042FFD9}
              OnClick = Image50Click
            end
            object Label9: TLabel
              Left = 6
              Top = 68
              Width = 126
              Height = 18
              Caption = 'Sale Price Range:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label10: TLabel
              Left = 71
              Top = 91
              Width = 27
              Height = 16
              Caption = 'Min:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label11: TLabel
              Left = 271
              Top = 91
              Width = 31
              Height = 16
              Caption = 'Max:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label12: TLabel
              Left = 195
              Top = 91
              Width = 59
              Height = 16
              Caption = '% of Sale'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 403
              Top = 91
              Width = 59
              Height = 16
              Caption = '% of Sale'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label77: TLabel
              Left = 802
              Top = 8
              Width = 89
              Height = 18
              Caption = 'Sq. Footage:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label78: TLabel
              Left = 550
              Top = 28
              Width = 53
              Height = 18
              Caption = 'Rooms:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label79: TLabel
              Left = 526
              Top = 60
              Width = 77
              Height = 18
              Caption = 'Bedrooms:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label80: TLabel
              Left = 522
              Top = 92
              Width = 81
              Height = 18
              Caption = 'Bathrooms:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label81: TLabel
              Left = 526
              Top = 124
              Width = 77
              Height = 18
              Caption = 'Half Baths:'
              Color = 13090741
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object SaleStartDate_xpEdit: TxpEdit
              Left = 102
              Top = 32
              Width = 87
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
              TabOrder = 0
              OnExit = SaleStartDate_xpEditExit
              OnKeyPress = SaleStartDate_xpEditKeyPress
            end
            object SaleEndDate_xpEdit: TxpEdit
              Left = 310
              Top = 32
              Width = 87
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
              OnExit = SaleStartDate_xpEditExit
              OnKeyPress = SaleStartDate_xpEditKeyPress
            end
            object SalePriceMin_xpEdit: TxpEdit
              Left = 102
              Top = 88
              Width = 87
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
              TabOrder = 2
              OnExit = SalePriceMin_xpEditExit
              OnKeyPress = SalePriceMin_xpEditKeyPress
            end
            object SalePriceMax_xpEdit: TxpEdit
              Left = 310
              Top = 88
              Width = 87
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
              TabOrder = 3
              OnExit = SalePriceMin_xpEditExit
              OnKeyPress = SalePriceMin_xpEditKeyPress
            end
            object Sales_Rooms_Filter: TxpComboBox
              Left = 616
              Top = 26
              Width = 74
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 16
              ParentFont = False
              TabOrder = 4
              Items.Strings = (
                ''
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20'
                '21'
                '22'
                '23'
                '24'
                '25')
              XPStyle.ButtonWidth = 20
              XPStyle.ButtonStyle = cbsFlat
              XPStyle.ActiveBorderColor = 12937777
              XPStyle.InActiveBorderColor = clBtnFace
              XPStyle.ActiveButtonColor = 15651521
              XPStyle.InActiveButtonColor = clBtnFace
              XPStyle.BGStartColor = clWhite
              XPStyle.BGEndColor = 15786689
              XPStyle.BGGradientFillDir = fdLeftToRight
              XPStyle.SelStartColor = 16755319
              XPStyle.SelEndColor = 15651521
              XPStyle.SelGradientFillDir = fdVerticalFromCenter
            end
            object Sales_Bedrooms_Filter: TxpComboBox
              Left = 616
              Top = 58
              Width = 74
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 16
              ParentFont = False
              TabOrder = 5
              Items.Strings = (
                ''
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              XPStyle.ButtonWidth = 20
              XPStyle.ButtonStyle = cbsFlat
              XPStyle.ActiveBorderColor = 12937777
              XPStyle.InActiveBorderColor = clBtnFace
              XPStyle.ActiveButtonColor = 15651521
              XPStyle.InActiveButtonColor = clBtnFace
              XPStyle.BGStartColor = clWhite
              XPStyle.BGEndColor = 15786689
              XPStyle.BGGradientFillDir = fdLeftToRight
              XPStyle.SelStartColor = 16755319
              XPStyle.SelEndColor = 15651521
              XPStyle.SelGradientFillDir = fdVerticalFromCenter
            end
            object Sales_Bathrooms_Filter: TxpComboBox
              Left = 616
              Top = 90
              Width = 74
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 16
              ParentFont = False
              TabOrder = 6
              Items.Strings = (
                ''
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              XPStyle.ButtonWidth = 20
              XPStyle.ButtonStyle = cbsFlat
              XPStyle.ActiveBorderColor = 12937777
              XPStyle.InActiveBorderColor = clBtnFace
              XPStyle.ActiveButtonColor = 15651521
              XPStyle.InActiveButtonColor = clBtnFace
              XPStyle.BGStartColor = clWhite
              XPStyle.BGEndColor = 15786689
              XPStyle.BGGradientFillDir = fdLeftToRight
              XPStyle.SelStartColor = 16755319
              XPStyle.SelEndColor = 15651521
              XPStyle.SelGradientFillDir = fdVerticalFromCenter
            end
            object Sales_HalfBath_Filter: TxpComboBox
              Left = 616
              Top = 122
              Width = 74
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 16
              ParentFont = False
              TabOrder = 7
              Items.Strings = (
                ''
                '0'
                '1'
                '2'
                '3'
                '4'
                '5')
              XPStyle.ButtonWidth = 20
              XPStyle.ButtonStyle = cbsFlat
              XPStyle.ActiveBorderColor = 12937777
              XPStyle.InActiveBorderColor = clBtnFace
              XPStyle.ActiveButtonColor = 15651521
              XPStyle.InActiveButtonColor = clBtnFace
              XPStyle.BGStartColor = clWhite
              XPStyle.BGEndColor = 15786689
              XPStyle.BGGradientFillDir = fdLeftToRight
              XPStyle.SelStartColor = 16755319
              XPStyle.SelEndColor = 15651521
              XPStyle.SelGradientFillDir = fdVerticalFromCenter
            end
            object clbSquareFootage: TCheckListBox
              Left = 755
              Top = 27
              Width = 183
              Height = 160
              ItemHeight = 15
              Items.Strings = (
                '0 - 500 sq. ft'
                '501 - 1,000 sq. ft'
                '1,001 - 1,500 sq. ft'
                '1,501 - 2,000 sq. ft'
                '2,001 - 2,500 sq. ft.'
                '2,501 - 3,000 sq. ft.'
                '3,001 - 3,500 sq. ft.'
                '3,501 - 4,000 sq. ft.'
                '4,001 - 5,000 sq. ft.'
                '5,001 - 99999999 sq. ft.')
              TabOrder = 8
            end
          end
          object xpTabSheet241: TxpTabSheet
            Caption = 'Weightings'
            ImageIndex = 2
            Color = clWhite
            BGStyle = bgsNone
            GradientStartColor = clWhite
            GradientEndColor = clSilver
            GradientFillDir = fdTopToBottom
            object Panel628: TPanel
              Left = 0
              Top = 0
              Width = 1555
              Height = 196
              Align = alClient
              BevelOuter = bvNone
              Color = 13090741
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object Weightings_ListView: TListView
                Left = 0
                Top = 22
                Width = 1555
                Height = 174
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
                PopupMenu = Weightings_Popup
                SmallImages = DataModule1.List_ImageList
                TabOrder = 0
                ViewStyle = vsReport
                OnClick = Weightings_ListViewClick
              end
              object xpPanel3: TxpPanel
                Left = 0
                Top = 0
                Width = 1555
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
                TabOrder = 1
                object Label7: TLabel
                  Left = 14
                  Top = 4
                  Width = 799
                  Height = 16
                  Caption = 
                    'Weighting values are multiplied by the absolute value of the dif' +
                    'ference between the subject parcel and the compared parcel. '
                  Color = 13090741
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
              end
            end
          end
        end
      end
      object xpPanel313: TxpPanel
        Left = 0
        Top = 0
        Width = 1561
        Height = 3
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
      end
    end
    object xpTabSheet179: TxpTabSheet
      Caption = 'Results'
      ImageIndex = 1
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Grids_AppsPermitsCertificates_xpPanel: TxpPanel
        Left = 0
        Top = 3
        Width = 1561
        Height = 508
        GradientFill = False
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Maximized = True
        Title = 'Comparables'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = [fsBold]
        TitleAlignment = taLeftJustify
        TitleStartColor = clWhite
        TitleEndColor = 4629503
        TitleColor = clWhite
        TitleImage.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000F7F6F6F7F6F6
          F7F6F6F7F6F6F7F6F6F7F6F6F3F2F2F5F6F8F5F6F8F5F6F7F5F6F7F5F6F7F5F6
          F7F5F6F7F3F4F6F5F6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A4A336A4A33
          6A4A336A4A336A4A336A4A336A4A332B529C1838681838681838681838681838
          68183868183868183868896B59CEB0A4CEB0A4CEB0A4CEB0A4CEB0A4896B596F
          97D940597597ACBE97ACBE97ACBE97ACBE97ACBE97ACBE405975896B59C97900
          C97900CEB0A4C97900C97900896B596F97D9405975C97900C9790099ADBE99AD
          BEC97900C97900405975896B59C97900C97900CEB0A4C97900C97900896B596F
          97D9405975C97900C979009BABBA99ADBEC97900C97900405975896B59CEB0A4
          CEB0A4CEB0A4CEB0A4CEB0A4896B596F97D940597599ADBE99ADBE99ADBE99AD
          BE99ADBE99ADBE405975483323CEB0A4CEB0A4CEB0A4CEB0A4CEB0A44833236F
          97D9183868183868183868183868183868183868183868183868FFFFFF483323
          CEB0A4CEB0A4CEB0A44833236F97D96F97D96F97D96F97D96F97D96F97D96F97
          D96F97D92B529CFFFFFFFFFFFFFFFFFF483323CEB0A44833232B529C6F97D96F
          97D96F97D96F97D96F97D96F97D96F97D96F97D92B529CFFFFFFFFFFFFFFFFFF
          FFFFFF483323FFFFFF2B529C6F97D9C97900C979006F97D96F97D9C97900C979
          006F97D92B529CFFFFFFFFFFFFFEFDFDFFFFFFFFFFFFFFFFFF2B529C6F97D9C9
          7900C979006F97D96F97D9C97900C979006F97D92B529CFFFFFFFFFFFFFFFFFF
          FDFDFEFFFFFFFFFFFF2B529C6F97D96F97D96F97D96F97D96F97D96F97D96F97
          D96F97D92B529CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18386818386818
          3868183868183868183868183868183868183868183868FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = []
        DefaultHeight = 60
        Movable = True
        Sizable = True
        BorderColor = clSilver
        RoundedCorner = []
        BGImageAlign = iaStretch
        Color = 14607075
        Align = alClient
        TabOrder = 0
        object Panel552: TPanel
          Left = 1
          Top = 1
          Width = 1557
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          Color = 14607075
          TabOrder = 0
          object Label70: TLabel
            Left = 155
            Top = 6
            Width = 87
            Height = 16
            Caption = 'Market Value:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Comp_Subject_Label: TLabel
            Left = 402
            Top = 6
            Width = 25
            Height = 16
            Caption = 'For:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label61: TLabel
            Left = 343
            Top = 6
            Width = 52
            Height = 16
            Caption = 'Subject:'
            Color = 14607075
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Panel554: TPanel
            Left = 849
            Top = 0
            Width = 708
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            Color = 14607075
            TabOrder = 0
            object Image3: TImage
              Left = 680
              Top = 1
              Width = 23
              Height = 23
              Cursor = crHandPoint
              Hint = 'Save a Appraisal Record'
              Picture.Data = {
                07544269746D617026040000424D260400000000000036000000280000001200
                0000120000000100180000000000F0030000120B0000120B0000000000000000
                0000FFFFFF414141414141414141414141414141414141414141414141414141
                4141414141414141414141414141414141414141414141410000FFFFFFFFFFFF
                9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
                9B9B9B9B9B9B9B9B9B9B4141414141410000EEDECEEEDECEEEDECEEEDECEEEDE
                CEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEEDECEEE
                DECE8484844141410000EEDDCEDAECF1CFDCE0978E8681818283838367676767
                67676161616464645555554A4A4A303031555556BBC2C4DDEEF1848484414141
                0000EEDCCDBDBFB58A7C6D623200E6EBF1F1F2F4D2D3D5D6D8D9EBEDEEFFFFFF
                FFFFFFEBEFF38F8A84322312524B47A5ACAF8484844141410000EEDCCD572300
                7A42006B410FE4D8CFE3D5C8E7D8CCE6D8CCE2D3C4DBC8B1DECCB7DDCEBDE5BA
                8AAB6616472A022522198484844141410000EEDCCD663903DA9E5F653803E1A9
                7BD7A071D8A071D8A173D59B67CA863BC6802DC88232D28E409560248452096A
                53248484844141410000EEDCCC663903D9A982653802E6B88EE3B087E3B087E3
                B087E4B28AE2AE84D79A59D39246D8974C915B1DA06420886745848484414141
                0000EEDCCC663903D8A67C643301C56D4B945B27995C27995C27995C269A5E2A
                975A218C4907B8742C9E6725995F1B8D6E4B8484844141410000EEDCCC663903
                D8A67C6132019D6761779D83739C87749C86749C86749C86759D88739F8B827B
                517431049F652191724F8484844141410000EEDBCC663903D8A57B5D380AACE6
                EAC7E4E8A1C8D0A5CCD3A5CCD3A5CCD3A4CAD2B0D4D7A2D2D36062519F5A1390
                714E8484844141410000EEDBCB663903D9A67B74580DB0FFFFB3EFEFA9E6E6AA
                E7E7AAE7E7AAE7E7AAE7E6AEE9E8ACFFFF81AC8BA963088E6F4E848484414141
                0000EEDACB663903D9A77A7B5E00B0FFFFC5CFCFA4B5B5A8B8B8A8B8B8A8B8B8
                A6B6B6B1BDBCB2ECF582AC7EAE68008C6E4F8484844141410000EEDACB663903
                DBAA818F9283A8FFFFAEF8F9A5F7FFA7F6FCAAF4F3AAF4F4A9F4F4ACF5F5A6FD
                FF8EC6C6B8854D906E458484844141410000EEDACB613000E5B58FA8B0BCD3EE
                F0C6C8BECB8D40C29964A3B0B7A7ADADA5ABABB3B2B1AFE4E796D9E6D2AC92A0
                836A8484844141410000EDD9CA9D9893643200886A16E6FEFFD8F3F8ACFFFDB0
                FFFFAEFFFFAEFFFFAEFFFFAFFFFFB2FFFF9ABE936A2F00826952848484414141
                0000EDD9C9D7E7EAD3E2E39E9A93613306663A06653B06653B06653B06653B06
                653B06653B06613306786042BCC7CCDBEDEFE2E2E24141410000EDD9CAEDD9CA
                EDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9
                CAEDD9CAEDD9CAEDD9CAEDD9CAB7B7B70000}
              Stretch = True
              Transparent = True
              OnClick = Image3Click
            end
            object Image4: TImage
              Left = 652
              Top = 1
              Width = 23
              Height = 23
              Cursor = crHandPoint
              Hint = 'Load a Appraisal Record'
              Picture.Data = {
                07544269746D617026040000424D260400000000000036000000280000001200
                0000120000000100180000000000F0030000120B0000120B0000000000000000
                0000FFFFFF414141414141414141414141414141414141414141414141414141
                4141414141414141414141414141414141414141414141410000FFFFFFFFFFFF
                9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
                9B9B9B9B9B9B9B9B9B9B4141414141410000EEDECEC0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C08484844141410000EEDDCEC0C0C0C0C0C0C2C2C2CBCBCBCBCBCBCBCBCBCB
                CBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCACACAC0C0C0848484414141
                0000EEDCCDC0C0C0C2C2C29D9D9D020202020202020202020202020202020202
                020202020202020202050505131313C0C0C08484844141410000EEDCCDC0C0C0
                B9B9B97A7A7A8C8C8C858B8B838B8B848B8B868B8B818B8B898B8B7F8C8C8A8B
                8B0000000F0F0FC0C0C08484844141410000EEDCCDC0C0C0B3B3B3A1A0A0FEFF
                FF71F9FB5AFEFF62FDFE8CF9FB3AFFFFB0F5F71DFFFF717F7F0F0F0F0E0E0EC0
                C0C08484844141410000EEDCCCBFBFBF828181FFFFFF6FEEF151F7F87BF2F474
                F3F54EF7F898EFF12BFDFEDBEBEE0000006E6E6D080808C0C0C0848484414141
                0000EEDCCCADADADA6ABAB8CFDFE3DF5F77CF1F359F5F65FF4F57CF1F343F7F8
                96FEFF6360603E50512D3334020101CACACA8484844141410000EEDCCC7D7D7D
                FFFFFF5EFFFFE3FBFD87FFFFBBFFFFB2FFFF87FFFFDBFBFD4FE2E2000000F095
                97FAFFFF545A5C6E6E6E8484844141410000EEDBCC7C7C7CC5C3C3D4B9B9D4BB
                BAD0C0BFCDC1C1C6BABACBCACAC2C0BF9594942B3535F85D5DFFFFFF7B868846
                46468484844141410000EEDBCBA3A3A37C7B7BA1BEBE33BFC0AD8E908E8F8EC5
                C5C5BE3D3DBEACACC53434CEBABAFFFFFF5D5D5D000000D0D0D0848484414141
                0000EEDACBC2C2C28A8A8AFAFFFF6FFAFD6AEBECC7A8A9DEDFDEFFBCBCFF5252
                FF7D7DFFFFFF545454444444848484C0C0C08484844141410000EEDACBBEBEBE
                858484E8FFFF2FF4F56CF5F758EAEBAEA3A5E3EAEAFFC3C3FFFFFF3E3F3F4949
                49818181CCCCCCC0C0C08484844141410000EEDACBC0C0C0AEAEAE9AA4A4DFFF
                FFF9FFFFE7FFFFBBB8B8707070FFFFFF424343828282B6B6B6B4B4B4C1C1C1C0
                C0C08484844141410000EDD9CAC0C0C0C1C1C1AFAEAE8482828A8989868484A3
                A3A3CECECE2E2E2E848484C1C1C1C1C1C1C1C1C1C0C0C0C0C0C0848484414141
                0000EDD9C9C0C0C0C0C0C0C0C0C0BEBEBEBEBEBEBEBEBEBFBFBFC1C1C1BCBCBC
                BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E2E2E24141410000EDD9CAEDD9CA
                EDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9CAEDD9
                CAEDD9CAEDD9CAEDD9CAEDD9CAB7B7B70000}
              Stretch = True
              Transparent = True
              OnClick = Image4Click
            end
          end
          object Comps_ApplySearchFilter_BitBtn: TxpBitBtn
            Left = 2
            Top = 3
            Width = 138
            Height = 22
            Cursor = crHandPoint
            Caption = 'Update Comps.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              22020000424D2202000000000000920000002800000014000000140000000100
              08000000000090010000120B0000120B00001700000017000000104A1000108C
              180039CE3900428C420042C6420042CE420042D642004AD64A005AD65A005ADE
              5A0063AD630063DE630073DE73006BE7730073E7730073DE7B0073E77B0084EF
              8C0094F79C00A5F7A500BDFFBD00FF00FF00FFFFFF0015151515151515151515
              1515151515151515151515151515151515151515151515151515151515151515
              151515151500000000151515151515151515151515151515010202020A011515
              151515151515151515151515010505020A011515151515151515151515151501
              020B0807040A15151515151515151515151503010C0C0C0B0802151515151515
              151515151503010C0F0C020C0C0C011515151515151515150C12121212011501
              0C0C0C0115151515151515150C12120C01151503020F0C020315151515151515
              020C020115151515010C120C0A151515151515150A0A0A151515151515011212
              0C01151515151515151515151515151515151212120C03151515151515151515
              15151515151515021213120A1515151515151515151515151515151502141402
              0A151515151515151515151515151515150214120A1515151515151515151515
              151515151515020C0A1515151515151515151515151515151515150A15151515
              1515151515151515151515151515151515151515151515151515151515151515
              151515151515}
            Gradient = True
            TabOrder = 1
            OnClick = Comps_ApplySearchFilter_BitBtnClick
          end
          object MarketValue_xpEdit: TxpEdit
            Left = 247
            Top = 3
            Width = 90
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
            TabOrder = 2
            OnKeyPress = SalePriceMin_xpEditKeyPress
          end
        end
        object xpPanel253: TxpPanel
          Left = 1
          Top = 30
          Width = 1557
          Height = 445
          GradientFill = False
          StartColor = 16511469
          EndColor = 16244694
          FillDirection = fdLeftToRight
          TitleShow = False
          Caption = 'xpPanel'
          Maximized = True
          Title = 'xpPanelTitle'
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -13
          TitleFont.Name = 'Arial Rounded MT Bold'
          TitleFont.Style = [fsBold]
          TitleAlignment = taLeftJustify
          TitleStartColor = clWhite
          TitleEndColor = 13723224
          TitleColor = clWhite
          TitleFillDirect = fdLeftToRight
          TitleImageAlign = tiaLeft
          TitleButtons = []
          DefaultHeight = 60
          Movable = True
          Sizable = True
          BorderColor = clSilver
          RoundedCorner = []
          BGImageAlign = iaStretch
          Color = 14607075
          Align = alClient
          TabOrder = 1
          object CompsAdvGrid: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 1553
            Height = 390
            Cursor = crDefault
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
            ParentFont = False
            PopupMenu = Comps_PopUpMenu
            ScrollBars = ssBoth
            TabOrder = 0
            HoverRowCells = [hcNormal, hcSelected]
            OnPrintPage = CompsAdvGridPrintPage
            OnClickCell = CompsAdvGridClickCell
            OnCellValidate = CompsAdvGridCellValidate
            OnCellsChanged = CompsAdvGridCellsChanged
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            AutoFilterUpdate = False
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDownClear = '(All)'
            FixedColWidth = 20
            FixedRowHeight = 22
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.Orientation = poLandscape
            PrintSettings.PageNumSep = '/'
            PrintSettings.PrintGraphics = True
            ScrollWidth = 16
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SortSettings.AutoSortForGrouping = False
            SortSettings.Full = False
            SortSettings.AutoFormat = False
            SortSettings.SortOnVirtualCells = False
            Version = '6.2.1.1'
            ColWidths = (
              20
              64
              64
              64
              64)
          end
          object Comp_Notes_TMemo: TMemo
            Left = 1
            Top = 405
            Width = 1553
            Height = 37
            Align = alBottom
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object Panel2: TPanel
            Left = 1
            Top = 391
            Width = 1553
            Height = 14
            Align = alBottom
            BevelOuter = bvNone
            Color = 14607075
            TabOrder = 2
            object Label69: TLabel
              Left = 5
              Top = -1
              Width = 80
              Height = 16
              Caption = 'Comp. Notes:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Helvetica'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Panel3: TPanel
              Left = 845
              Top = 0
              Width = 708
              Height = 14
              Align = alRight
              BevelOuter = bvNone
              Color = 14607075
              TabOrder = 0
            end
          end
        end
      end
      object xpPanel269: TxpPanel
        Left = 0
        Top = 511
        Width = 1561
        Height = 239
        GradientFill = False
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Title = 'Search / Filter - Applications / Permits / Certificates'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = [fsBold]
        TitleAlignment = taLeftJustify
        TitleStartColor = clWhite
        TitleEndColor = 4629503
        TitleColor = clWhite
        TitleImage.Data = {
          B6040000424DB604000000000000360000002800000015000000120000000100
          18000000000080040000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FF859EC0496DA11A203BFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF8AA2C34A6EA37E8B9E1A203BFF01FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF8DA4C64A6EA37D8A9D1A203BCCD0D6FF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8D9D
          B34A6EA37E8B9E1A203BCCD0D6FF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEBF979785
          571A203B1A203BCBCFD5FF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFA2A19A686141403B2038331D534F3B939189A79052B6A8
          8560512AC6C8CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FF9D9266857A46B6AC7BC7BC8BBAB286948D6D3C371C342F1C7A68
          35D3CFC4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFB0AFA5A49553DED9C4D9D3B8D5CEADF1EFE7DAD3B5B5AD873C371CA3A1
          9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFA39658D6CFACE5E2D4E0DCC9DDD8C2E3DFCCF4F4F2E7E4D5958E6F514D
          3AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFA09049ECEADEE9E8E0E5E3D7E1DECEDFDAC7DFDBC5E7E4D4B8B0873833
          1DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFB5A454F2F0EBF0EFEDE8E7E0E4E2D8E1DECEDBD7C1D3CDAEC7BC8D403B
          20FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFC2B574E9E5D3F6F6F6EFEEECE9E8E2E6E4D8E0DDCBD9D3BAB8AE80655F
          3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFC7C3B2D7CFA4FAFAFAF7F7F7F1F1EEEBEAE2E6E4D6E1DEC9827745AAA9
          A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFCEC38FD8D0A5E9E5D3F4F2EDF0EEE4D9D3B1A09352A0976AFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFC6C3B2C2B473AE9E50988945A29557B4B3A9FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00}
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        DefaultHeight = 60
        Movable = True
        Sizable = True
        BorderColor = clSilver
        RoundedCorner = []
        BGImageAlign = iaStretch
        Color = 14607075
        Align = alBottom
        TabOrder = 1
        object Comps_Filter_xpPageControl: TxpPageControl
          Left = 1
          Top = 1
          Width = 1557
          Height = 205
          ActivePage = xpTabSheet3
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          OnChange = Comps_Filter_xpPageControlChange
          OnChanging = Comps_Filter_xpPageControlChanging
          ImageList = Adjustments_ImageList
          BorderColor = 13143690
          TabTextAlignment = taCenter
          object xpTabSheet3: TxpTabSheet
            Caption = 'Adjustments for This Appraisal'
            ImageIndex = 0
            Color = clWhite
            BGStyle = bgsNone
            GradientStartColor = clWhite
            GradientEndColor = clSilver
            GradientFillDir = fdTopToBottom
            object Temp_Adjustment_Listview: TListView
              Left = 0
              Top = 0
              Width = 1555
              Height = 180
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
              PopupMenu = Temp_Inventory_Adjustment_Popup
              SmallImages = DataModule1.List_ImageList
              TabOrder = 0
              ViewStyle = vsReport
              OnClick = Temp_Adjustment_ListviewClick
            end
          end
          object xpTabSheet8: TxpTabSheet
            Caption = 'Default Inventory Adjustments'
            ImageIndex = 1
            Color = clWhite
            BGStyle = bgsNone
            GradientStartColor = clWhite
            GradientEndColor = clSilver
            GradientFillDir = fdTopToBottom
            object Adjustment_Listview: TListView
              Left = 0
              Top = 0
              Width = 1555
              Height = 180
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
              PopupMenu = Inventory_Adjustment_Popup
              SmallImages = DataModule1.List_ImageList
              TabOrder = 0
              ViewStyle = vsReport
              OnClick = Adjustment_ListviewClick
            end
          end
          object xpTabSheet1: TxpTabSheet
            Caption = 'Time Trending Adjustments'
            ImageIndex = 2
            Color = clWhite
            BGStyle = bgsNone
            GradientStartColor = clWhite
            GradientEndColor = clSilver
            GradientFillDir = fdTopToBottom
            object TimeTrending_Listview: TListView
              Left = 0
              Top = 0
              Width = 1555
              Height = 180
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
              PopupMenu = Time_PopUp
              SmallImages = DataModule1.List_ImageList
              TabOrder = 0
              ViewStyle = vsReport
              OnClick = TimeTrending_ListviewClick
            end
          end
        end
      end
      object xpPanel314: TxpPanel
        Left = 0
        Top = 0
        Width = 1561
        Height = 3
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
      end
    end
    object xpTabSheet2: TxpTabSheet
      Caption = 'Analysis Tools'
      ImageIndex = 2
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Panel613: TPanel
        Left = 0
        Top = 3
        Width = 1561
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Label1095: TLabel
          Left = 19
          Top = 18
          Width = 43
          Height = 16
          Caption = 'Graph:'
          Color = 13090741
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Panel614: TPanel
          Left = 1263
          Top = 0
          Width = 298
          Height = 52
          Align = alRight
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
        end
        object GraphSelection: TxpComboBox
          Left = 67
          Top = 19
          Width = 285
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'Sale Price vs SLA (Sq. Ft. Living Area)'
            'Sale Price vs Price per Sq. Foot'
            'Sale Price vs Number of Bedrooms'
            'Sale Price vs Number of Bathrooms'
            'Sale Price vs Acreage'
            '')
          XPStyle.ButtonWidth = 20
          XPStyle.ButtonStyle = cbsFlat
          XPStyle.ActiveBorderColor = 12937777
          XPStyle.InActiveBorderColor = clBtnFace
          XPStyle.ActiveButtonColor = 15651521
          XPStyle.InActiveButtonColor = clBtnFace
          XPStyle.BGStartColor = clWhite
          XPStyle.BGEndColor = 15786689
          XPStyle.BGGradientFillDir = fdLeftToRight
          XPStyle.SelStartColor = 16755319
          XPStyle.SelEndColor = 15651521
          XPStyle.SelGradientFillDir = fdVerticalFromCenter
        end
        object xpBitBtn1: TxpBitBtn
          Left = 385
          Top = 15
          Width = 129
          Height = 28
          Cursor = crHandPoint
          Caption = 'Graph'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            22020000424D2202000000000000920000002800000014000000140000000100
            08000000000090010000120B0000120B00001700000017000000104A1000108C
            180039CE3900428C420042C6420042CE420042D642004AD64A005AD65A005ADE
            5A0063AD630063DE630073DE73006BE7730073E7730073DE7B0073E77B0084EF
            8C0094F79C00A5F7A500BDFFBD00FF00FF00FFFFFF0015151515151515151515
            1515151515151515151515151515151515151515151515151515151515151515
            151515151500000000151515151515151515151515151515010202020A011515
            151515151515151515151515010505020A011515151515151515151515151501
            020B0807040A15151515151515151515151503010C0C0C0B0802151515151515
            151515151503010C0F0C020C0C0C011515151515151515150C12121212011501
            0C0C0C0115151515151515150C12120C01151503020F0C020315151515151515
            020C020115151515010C120C0A151515151515150A0A0A151515151515011212
            0C01151515151515151515151515151515151212120C03151515151515151515
            15151515151515021213120A1515151515151515151515151515151502141402
            0A151515151515151515151515151515150214120A1515151515151515151515
            151515151515020C0A1515151515151515151515151515151515150A15151515
            1515151515151515151515151515151515151515151515151515151515151515
            151515151515}
          Gradient = True
          TabOrder = 2
          OnClick = xpBitBtn1Click
        end
        object FilteredSalesOnly: TxpCheckBox
          Left = 547
          Top = 19
          Width = 150
          Height = 17
          Cursor = crHandPoint
          Caption = 'Filtered Sales Only'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Helvetica'
          Font.Style = [fsBold]
          ParentColor = False
          TabOrder = 3
          TabStop = True
          Color = clWhite
          CheckColor = 40960
          UnderLineOnActive = True
          Alignment = cbaRight
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 55
        Width = 105
        Height = 695
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
      end
      object xpPanel2: TxpPanel
        Left = 0
        Top = 0
        Width = 1561
        Height = 3
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
      end
      object RegressionGraph: TRtGraph2D
        Left = 105
        Top = 55
        Width = 1456
        Height = 695
        BackColor = -526866
        BackgroundGradient.Visible = False
        BackgroundGradient.Style = Linear
        BackgroundGradient.FirstColor = -2894893
        BackgroundGradient.MiddleColor = -5197648
        BackgroundGradient.LastColor = -8355712
        BackgroundGradient.LinearAngle = 90.000000000000000000
        BackgroundGradient.LinearCenter = 0.500000000000000000
        BackgroundGradient.RadialCenterX = 0.500000000000000000
        BackgroundGradient.RadialCenterY = 0.500000000000000000
        SmoothingMode = HighQuality
        Caption = 'RegressionGraph'
        CaptionAlignment = taCenter
        CaptionColor = -16777216
        CaptionVisible = False
        Align = alClient
        BorderStyle = bsSingle
        Zoom.Auto = True
        Zoom.BufferType = AsStack
        Zoom.OptimizeSeries = False
        Zoom.BackOnClickBeside = True
        Zoom.BackOnRightBottomLeftTopFrame = False
        Zoom.ResetOnDoubleClickBeside = True
        Zoom.ResetOnRightBottomLeftTopFrame = False
        Zoom.StartZoom = [ssLeft]
        Zoom.StartPanning = [ssShift, ssLeft]
        Zoom.PanningCursor = crHandPoint
        Zoom.HScrollbarVisible = True
        Zoom.VScrollbarVisible = True
        Zoom.ScrollSmallIncrement = MinorTick
        Zoom.ScrollLargeIncrement = Page
        DataAreaFrame.Color = -16777216
        DataAreaFrame.Width = 1.000000000000000000
        DataAreaFrame.Gradient.Visible = False
        DataAreaFrame.Gradient.Style = Linear
        DataAreaFrame.Gradient.FirstColor = -2894893
        DataAreaFrame.Gradient.MiddleColor = -5197648
        DataAreaFrame.Gradient.LastColor = -8355712
        DataAreaFrame.Gradient.LinearCenter = 0.500000000000000000
        DataAreaFrame.Gradient.RadialCenterX = 0.500000000000000000
        DataAreaFrame.Gradient.RadialCenterY = 0.500000000000000000
        DataAreaFrame.Visible = False
        DataAreaColor = 16777215
        DataAreaGradient.Visible = True
        DataAreaGradient.Style = Linear
        DataAreaGradient.FirstColor = -1
        DataAreaGradient.MiddleColor = -1250856
        DataAreaGradient.LastColor = -2172742
        DataAreaGradient.LinearAngle = 90.000000000000000000
        DataAreaGradient.LinearCenter = 0.500000000000000000
        DataAreaGradient.RadialCenterX = 0.500000000000000000
        DataAreaGradient.RadialCenterY = 0.500000000000000000
        PrimaryXAxis = XAxis
        PrimaryYAxis = FunctionAxis
        MajorGridHorizontal.Color = -16744448
        MajorGridHorizontal.DashStyle = DashStyleDash
        MajorGridHorizontal.Width = 1.000000000000000000
        MajorGridHorizontal.Gradient.Visible = False
        MajorGridHorizontal.Gradient.Style = Linear
        MajorGridHorizontal.Gradient.FirstColor = -2894893
        MajorGridHorizontal.Gradient.MiddleColor = -5197648
        MajorGridHorizontal.Gradient.LastColor = -8355712
        MajorGridHorizontal.Gradient.LinearCenter = 0.500000000000000000
        MajorGridHorizontal.Gradient.RadialCenterX = 0.500000000000000000
        MajorGridHorizontal.Gradient.RadialCenterY = 0.500000000000000000
        MajorGridHorizontal.Visible = False
        MinorGridHorizontal.Color = -8355712
        MinorGridHorizontal.DashStyle = DashStyleDot
        MinorGridHorizontal.Width = 1.000000000000000000
        MinorGridHorizontal.Gradient.Visible = False
        MinorGridHorizontal.Gradient.Style = Linear
        MinorGridHorizontal.Gradient.FirstColor = -2894893
        MinorGridHorizontal.Gradient.MiddleColor = -5197648
        MinorGridHorizontal.Gradient.LastColor = -8355712
        MinorGridHorizontal.Gradient.LinearCenter = 0.500000000000000000
        MinorGridHorizontal.Gradient.RadialCenterX = 0.500000000000000000
        MinorGridHorizontal.Gradient.RadialCenterY = 0.500000000000000000
        MinorGridHorizontal.Visible = False
        MajorGridVertical.Color = -16744448
        MajorGridVertical.DashStyle = DashStyleDash
        MajorGridVertical.Width = 1.000000000000000000
        MajorGridVertical.Gradient.Visible = False
        MajorGridVertical.Gradient.Style = Linear
        MajorGridVertical.Gradient.FirstColor = -2894893
        MajorGridVertical.Gradient.MiddleColor = -5197648
        MajorGridVertical.Gradient.LastColor = -8355712
        MajorGridVertical.Gradient.LinearCenter = 0.500000000000000000
        MajorGridVertical.Gradient.RadialCenterX = 0.500000000000000000
        MajorGridVertical.Gradient.RadialCenterY = 0.500000000000000000
        MajorGridVertical.Visible = False
        MinorGridVertical.Color = -8355712
        MinorGridVertical.DashStyle = DashStyleDot
        MinorGridVertical.Width = 1.000000000000000000
        MinorGridVertical.Gradient.Visible = False
        MinorGridVertical.Gradient.Style = Linear
        MinorGridVertical.Gradient.FirstColor = -2894893
        MinorGridVertical.Gradient.MiddleColor = -5197648
        MinorGridVertical.Gradient.LastColor = -8355712
        MinorGridVertical.Gradient.LinearCenter = 0.500000000000000000
        MinorGridVertical.Gradient.RadialCenterX = 0.500000000000000000
        MinorGridVertical.Gradient.RadialCenterY = 0.500000000000000000
        MinorGridVertical.Visible = False
        ZeroOrigin = False
        object XAxis: TRtAxis
          Left = 0
          Top = 636
          Width = 1129
          Height = 51
          ArrowPoint.Visible = False
          ArrowPoint.PointLength = 7.000000000000000000
          ArrowPoint.InnerLength = 5.000000000000000000
          ArrowPoint.PointHeight = 3.000000000000000000
          Caption = 'SLA'
          CaptionAlignment = taCenter
          CaptionColor = -7667712
          CaptionFont.Height = -19
          CaptionFont.Name = 'Times New Roman'
          CaptionFont.Size = 14.000000000000000000
          CaptionFont.Style = [fsBold]
          CaptionFont.FillColor = -7667712
          CaptionFont.Gradient.Visible = False
          CaptionFont.Gradient.Style = Linear
          CaptionFont.Gradient.FirstColor = -2894893
          CaptionFont.Gradient.MiddleColor = -5197648
          CaptionFont.Gradient.LastColor = -8355712
          CaptionFont.Gradient.LinearCenter = 0.500000000000000000
          CaptionFont.Gradient.RadialCenterX = 0.500000000000000000
          CaptionFont.Gradient.RadialCenterY = 0.500000000000000000
          CaptionVisible = True
          CaptionHorizontalOnVerticalAxis = False
          ExtraDigits = 0
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Size = 12.000000000000000000
          Font.Style = [fsBold]
          Font.FillColor = -16777077
          Font.Gradient.Visible = False
          Font.Gradient.Style = Linear
          Font.Gradient.FirstColor = -2894893
          Font.Gradient.MiddleColor = -5197648
          Font.Gradient.LastColor = -8355712
          Font.Gradient.LinearCenter = 0.500000000000000000
          Font.Gradient.RadialCenterX = 0.500000000000000000
          Font.Gradient.RadialCenterY = 0.500000000000000000
          ForeColor = -16777216
          NumbersColor = -16777077
          Scaling = Normal
          NumbersVisible = True
          Position = Bottom
          AutoTickParts = True
          LabelDistanceFactor = 1.000000000000000000
          MajorGridMode = AtLabel
          AxisThicknes = 1.000000000000000000
          MajorTickThicknes = 1.000000000000000000
          TickThicknes = 1.000000000000000000
          TickLength = 6.000000000000000000
          MajorTickLength = 10.000000000000000000
          MajorTickColor = -16777216
          TickColor = -16777216
          TicksPointToData = False
          Twisted = False
          IsSlaveAxis = False
          SlaveSlope = 1.000000000000000000
          Stop = 5.000000000000000000
          StartEnd = AutoRange
          StopEnd = AutoRange
          EndRounding = RndToMajorZoomToMinor
          MaxForExtraExponent = 1000.000000000000000000
          MinForExtraExponent = 0.001000000000000000
          DistanceAxisExtraExponent = 10.000000000000000000
          ParentFont = False
        end
        object FunctionAxis: TRtAxis
          Left = 0
          Top = 0
          Width = 57
          Height = 691
          ArrowPoint.Visible = False
          ArrowPoint.PointLength = 7.000000000000000000
          ArrowPoint.InnerLength = 5.000000000000000000
          ArrowPoint.PointHeight = 3.000000000000000000
          Caption = 'Sale Price'
          CaptionAlignment = taCenter
          CaptionColor = -7667712
          CaptionFont.Height = -19
          CaptionFont.Name = 'Times New Roman'
          CaptionFont.Size = 14.000000000000000000
          CaptionFont.Style = [fsBold]
          CaptionFont.FillColor = -7667712
          CaptionFont.Gradient.Visible = False
          CaptionFont.Gradient.Style = Linear
          CaptionFont.Gradient.FirstColor = -2894893
          CaptionFont.Gradient.MiddleColor = -5197648
          CaptionFont.Gradient.LastColor = -8355712
          CaptionFont.Gradient.LinearCenter = 0.500000000000000000
          CaptionFont.Gradient.RadialCenterX = 0.500000000000000000
          CaptionFont.Gradient.RadialCenterY = 0.500000000000000000
          CaptionVisible = True
          CaptionHorizontalOnVerticalAxis = False
          ExtraDigits = 0
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Size = 12.000000000000000000
          Font.Style = [fsBold]
          Font.FillColor = -16777077
          Font.Gradient.Visible = False
          Font.Gradient.Style = Linear
          Font.Gradient.FirstColor = -2894893
          Font.Gradient.MiddleColor = -5197648
          Font.Gradient.LastColor = -8355712
          Font.Gradient.LinearCenter = 0.500000000000000000
          Font.Gradient.RadialCenterX = 0.500000000000000000
          Font.Gradient.RadialCenterY = 0.500000000000000000
          ForeColor = -16777216
          NumbersColor = -16777077
          Scaling = Normal
          NumbersVisible = True
          Position = Left
          AutoTickParts = True
          LabelDistanceFactor = 1.000000000000000000
          MajorGridMode = AtLabel
          AxisThicknes = 1.000000000000000000
          MajorTickThicknes = 1.000000000000000000
          TickThicknes = 1.000000000000000000
          TickLength = 6.000000000000000000
          MajorTickLength = 10.000000000000000000
          MajorTickColor = -16777216
          TickColor = -16777216
          TicksPointToData = False
          Twisted = False
          IsSlaveAxis = False
          SlaveSlope = 1.000000000000000000
          Stop = 10.000000000000000000
          StartEnd = AutoRange
          StopEnd = AutoRange
          EndRounding = RndToMajorZoomToMinor
          MaxForExtraExponent = 1000.000000000000000000
          MinForExtraExponent = 0.001000000000000000
          DistanceAxisExtraExponent = 10.000000000000000000
          ParentFont = False
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1563
    Height = 31
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        MinHeight = 27
        Width = 1559
      end>
    DockSite = True
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 1546
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
  object Panel7: TPanel
    Left = 0
    Top = 31
    Width = 1563
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Color = 14607075
    TabOrder = 2
    object Panel408: TPanel
      Left = 841
      Top = 0
      Width = 722
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      Color = 14607075
      TabOrder = 0
      object Label59: TLabel
        Left = 602
        Top = 7
        Width = 31
        Height = 16
        Caption = 'RAR:'
        Color = 14607075
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 702
        Top = 7
        Width = 10
        Height = 16
        Caption = '%'
        Color = 14607075
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label76: TLabel
        Left = 369
        Top = 6
        Width = 97
        Height = 16
        Caption = 'Appraisal Date:'
        Color = 14607075
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Image13: TImage
        Left = 562
        Top = 6
        Width = 21
        Height = 18
        Cursor = crHandPoint
        AutoSize = True
        Picture.Data = {
          0A544A504547496D616765E9020000FFD8FFE000104A46494600010200006400
          640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
          64C000000001FFDB0084000604040405040605050609060506090B080606080B
          0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
          1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1FFFC00011080012001503011100021101031101FF
          C400900000010501000000000000000000000000030001020406050100030101
          000000000000000000000000000304020510000005020206060B010000000000
          0000010203040511121406002122133334325363153516315152627223436436
          07379711000101020B070403000000000000000001001102F021314151618191
          120313C1D1225262720471B14292A2C233FFDA000C03010002110311003F002C
          4B2CAEDA2601A9E0A1D24BCB50AFD6766CABDF6B2ABBA6AA1D732CAA0646CD96
          C27A9EA26DA1AEC8E95E4F8F8DD6CB199C0A192FAFB2D8762909B46D5D03B3CA
          64BAF89892D975F5FD7AE02966F2EAD56D56EE14AFC26F50E8D1E20A3F377756
          2F430F29BDD59E728C184CC6BE0CB50C0B9DB3E6676E1009EECC24CC0CE3CAB0
          C5F14572A47308277DF70892BAE9A2B41DD5C3331B28E56CB25A8C31D9B2E4A5
          A19CBB8DCB2B0471DDA639460D34950662E4B783073714A6EEC95B440CA2750B
          D3F49475EA3A55F8398EBAE46591D3DB5885C5D92F00215282D0088B3745084A
          B83195144C1107ADA38AA50E197922856F4E9F2FD9D65D5B8D1CC7F55D21F1A7
          134621BCD5F298C45BC56B99B93A441FE931FAF5774C77B3B8A75BB8B658152E
          C3482B83C30D771E6764B5D87C170F73B74C0D2DFA34D8D118C6BB5B353D34B7
          F6B540DE385109D6199F86C77F41E459F0781CB27CB7DBF51D9DBA7392113FD1
          3410A9ABE32D7F3CE59C74F9AE9A1C2ECBACF7ACD042FFD9}
        OnClick = Image13Click
      end
      object Label82: TLabel
        Left = 160
        Top = 7
        Width = 97
        Height = 16
        Caption = 'Valuation Date:'
        Color = 14607075
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object EqualizationRate_xpEdit: TxpEdit
        Left = 638
        Top = 5
        Width = 61
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
        ParentFont = False
        TabOrder = 0
        OnExit = EqualizationRate_xpEditExit
        OnKeyPress = SalePriceMin_xpEditKeyPress
      end
      object AppraisalDate_xpEdit: TxpEdit
        Left = 470
        Top = 5
        Width = 91
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
        ParentFont = False
        TabOrder = 1
        OnExit = AppraisalDate_xpEditExit
        OnKeyPress = SalePriceMin_xpEditKeyPress
      end
      object UseThisYearData_xpCheckBox: TxpCheckBox
        Left = 5
        Top = 9
        Width = 150
        Height = 17
        Cursor = crHandPoint
        Caption = 'Use This Year Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Helvetica'
        Font.Style = [fsBold]
        ParentColor = False
        TabOrder = 2
        TabStop = True
        Color = 14607075
        CheckColor = 40960
        Checked = True
        UnderLineOnActive = True
        Alignment = cbaRight
      end
      object edValuationDate: TxpEdit
        Left = 260
        Top = 5
        Width = 91
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
        ParentFont = False
        TabOrder = 3
        OnExit = AppraisalDate_xpEditExit
        OnKeyPress = SalePriceMin_xpEditKeyPress
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 273
      Height = 29
      Align = alLeft
      BevelOuter = bvNone
      Color = 14607075
      TabOrder = 1
      object SubjectParcel_Label: TLabel
        Left = 7
        Top = 4
        Width = 97
        Height = 16
        Caption = 'Subject Parcel:'
        Color = 14607075
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object Tab_Image_List: TImageList
    Left = 124
    Top = 76
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000199010094DF9C0001990100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000199
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AA9283004A4132003E281A00D3AF920000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001990100019901000199010001990100019901000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000199
      01000000000051B448000199010001990100019901000199010071B651000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0A39A00D5F8FF0052A5C3000F2F3D00544C4500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000199010001990100019901000199010001990100019901000199
      010000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000199
      01000199010001990100019901000199010001990100019901000199010071B6
      5100000000000000000000000000000000000000000000000000000000000000
      000000000000C1ADA20078BECB0076D8E8005EB4CE000C2E3D00D2B69E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000199010001990100019901000199010091DF9A0001990100019901000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000199
      010001990100019901000199010031A7270082BF670084C26D00119E0D000199
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055B2C50091E3F30062C3D30054A8C00044342A00D9C3
      AE00000000000000000000000000000000000000000000000000000000000000
      000001990100019901000000000001990100A7E5AE0001990100000000000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF0000008000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000001EA5
      1E000199010001990100019901008FC4740000000000000000000000000046AD
      380051AF3C000000000000000000000000000000000000000000B39D8900AA94
      7F00C5AE9100BBA19C00A7A1930064919D006DBECA0080DAE8004393A9002245
      520041403E000000000000000000000000000000000000000000000000000000
      000001990100019901000000000001990100A3E4AA0001990100000000000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00000080000000800000008000C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000089C
      0800019901000199010001990100019901000199010000000000000000000000
      00003CAB310000000000000000000000000000000000000000009D8976009D84
      6E00696884003F4B940090827F00B29E9000809F9F0083C6D3006ED3E70056AC
      C700242E2A00645D6E0000000000000000000000000000000000000000000000
      000000000000000000000000000001990100A2E3A80001990100019901000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF000000800000008000FFFFFF000000800000008000C0C0C000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7ACA100BDA2
      A9003445BD00032FC1006E688D00D4A68D00D2A999008BA3A80090DEF10085C6
      D7008D9D9D0038448E00C4AFB200000000000000000000000000000000000000
      0000000000000000000001990100019901000199010001990100019901000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000800080808000C0C0C000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000081C878000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001137C2002650
      E9005478FE00496FFA002648D50036419C00B7958300AD8B7700B2B5C0006572
      B0007191E1006985DB007B80AE00000000000000000000000000000000000000
      0000000000000199010001990100019901000199010001990100019901000199
      010000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008000C0C0C000C0C0
      C000FFFFFF00000000000000000000000000000000000000000081C97A000000
      0000000000000000000000000000019901000199010001990100019901000199
      01000000000000000000000000000000000000000000000000003D66F0005E7F
      FF005C77F0008C8DCC004A62E5002949CB005254860098847B00E7D4CD009096
      BE005A73BF00425FBB00D1C5C600000000000000000000000000000000000000
      0000019901000199010001990100019901000199010001990100000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008000C0C0
      C000FFFFFF00000000000000000000000000000000000000000000000000119F
      10000000000000000000000000000000000031A92B0001990100019901000199
      01000000000000000000000000000000000000000000000000009FA9EA009FA6
      F000A3A5DF00D6BEBF00898ACC004667E8001B3EBB0056608D00FFF4D900E8D3
      CB00A7A2BA009596B50000000000000000000000000000000000000000000000
      000001990100019901000000000001990100A5E2AB0001990100000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8000FFFFFF0000000000000000000000000000000000000000000000000041B2
      3F000199010081C77600000000000000000051B4480001990100019901000199
      0100000000000000000000000000000000000000000000000000D8CEC100FFFF
      FE00FDF7EF00F1EBE200F2D1C200DBB4B0008484DB002A4FDE00B7A7A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001990100019901000000000001990100A7E5AE0001990100000000000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000019901000199010001990100019901000199010001990100019901000199
      0100000000000000000000000000000000000000000000000000B8AB9C00C4B7
      A900C4B6A700C0ADA400D3B9B100CFB6AD00C7BFC0007C84CF005067C300E4CE
      BE00000000000000000000000000000000000000000000000000000000000000
      00000199010001990100019901000199010099DFA00001990100019901000199
      010001990100000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000019901000199010001990100019901000199010021A41D000199
      0100000000000000000000000000000000000000000000000000E5D0BE00E5D0
      BD00E5D0BD00E5CEBD00EDD6C700EED8C700F5E2CA00E9D6CF004D68D6005A74
      C800000000000000000000000000000000000000000000000000000000000000
      0000000000000199010001990100019901000199010001990100019901000199
      0100000000000000000000000000000000000000000000000000000000008080
      80008080800000000000FFFFFF00C0C0C000C0C0C000C0C0C000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000071C46E0041B13E0041B13D008FCC8300000000000199
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001990100019901000199010001990100019901000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000199010098DE9F0001990100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000798376008A887E00DBCECC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFB00000000000000000000000000000000000000
      00000000000000000000FCFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5A9
      7D00B88A4400C29866000000000000000000000000000000000000000000D58D
      8600AD7C7A00CA807E00CC847C0097857E00A5858000B48F8B00A6A19800A69F
      9600A2978F0084988B004B554900000000000000000000000000000000000000
      000062685100313B2E00252319007D706E00E4D7D90000000000000000000000
      0000C070B0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009EBEE2004892DD0067B88A0032A85400D8A34B00C595
      4500D7A14B00BF864500B97F410000000000000000000000000000000000FFF9
      EF0096929700CAFCF200CCFFF900C8FFFC00D6FEFD00DEFCFD00CBFAF800AFFF
      F800CFFEFC009C949B00455155000000000000000000C8C1B800918C83006E6E
      62004C5949003E553900162F1B00262A2400B048A000B058A000B060B000B068
      B000D0A0D000C078B0000000000000000000543B2B00543B2B00543B2B00543B
      2B00543B2B00543B2B00543B2B00203B7A001B3454001B3454001B3454001B34
      54001B3454001B3454001B3454001B3454000000000000000000000000000000
      000000000000BFBBD5000085D700008BD40033AB560033AA5500E3AB5000D9A4
      4C00C6964500BC834300A8713B0000000000000000000000000000000000FFFF
      FB00969297008D6070009C606B00CCFFFF008C5C6E007B647200FFFAFF006E68
      7300ECFFFF0098929D004F505A00000000007F8D7500384A25002B431B003751
      2D0055715D005C8258003E6C4200254B270070287000C078B000C080C000D080
      C000D098D000D0A8D000C078B000000000008E715F00D4BAB300D4BAB300D4BA
      B300D4BAB300D4BAB300795D4B005F92E3004763800090A8BE0090A8BE0090A8
      BE0090A8BE0090A8BE0090A8BE004C66800000000000DDD2DB00D95EBB000024
      C5000026CD000026CC00009EDB00009ADA0035AF580035AE5800E5AF5100E8B8
      6600E4AD5000B77D4000B2763C0000000000D58D8600AD7C7A00CA807E00EFFF
      FC0096929700CBFAFE00C6FFFF00BDFDF700C7FFFF00E9FDFE00CCF9F600AFFF
      FC00D1F6F400A69AA000614A520000000000BACFB900D6F3D200CBE6C5000000
      000000000000000000000000000097C99300602060008038800090409000B048
      A000C058B000A050A00090488000000000008E715F00D4BAB300D4BAB300D4BA
      B300D4BAB300D4BAB300795D4B005F92E3004763800090A8BE0090A8BE0090A8
      BE0090A8BE0090A8BE0090A8BE004C66800000000000F531C400F531C4000026
      CB000225BB000025C90000AEE10000AADF0036B35A0040B56200E8B25200F0CC
      8D00E7B15100BB7C4000AD6F390000000000FFF9EF00CAFFF900CAFCF200FFFE
      FC0096929700A25D7100A0627000DBFDF600B16E7700D8EFEA008E6D71008F6A
      6E00D1FFFB00AF9295004F504E00000000000000000000000000000000000000
      0000F7E1E300CDC4BB00769372004C8949006020600060206000602060006020
      6000A04090007020600000000000000000008E715F00CC660000D4BAB300CA68
      0400D4BAB300CC660000795D4B005F92E30047638000DF79000090A8BE00DF79
      0000DF79000090A8BE00DF7900004C66800000000000F531C400E12DB4000027
      CE00042BCE000023BB0002B6E40000B2E20037B55B0052BE7000EAB45200F2D2
      9800E9B25200B8793F00B4733C0000000000FFFFFB00E8FDFF008D607000F5FE
      F40096929700E0F8F600C1FFFC00EBFFFE00B8FCF100CAFFFF00DCFFFA00C8FB
      F300CAFFFF0070948E004D5A580000000000000000000000000000000000D2CD
      CE0068685000315A2700266D2A002D8C310033952B003EA036003A993E002F78
      320060206000000000000000000000000000795D4B00D4BAB300D4BAB300D4BA
      B300D4BAB300D4BAB300795D4B005F92E3004763800090A8BE0090A8BE0090A8
      BE0090A8BE0090A8BE0090A8BE004C66800000000000F535CA00F533C8000028
      D4000F32C4000028D20015B2CF0000B9DE0039B95D0073CD8D00619C3B00B98A
      0A00C27B0500B56D0800C5A6870000000000EFFFFC00ADFFFD00CBFAFE00FFFF
      F8009692970070737100CAFFF200896670008B667000D3FFFD00845A65009B69
      7500D1FEFB00A3979D00504A4F000000000000000000BCCCBA00597754002553
      1F00276D20002384240021912B002CA035004BAE46006DC567004B9D50003F7C
      420000000000000000000000000000000000543B2B007B625200C5701B00C570
      1B00C5701B00D4BAB300563B29005F92E3004763800090A8BE0090A8BE0090A8
      BE0090A8BE0090A8BE0090A8BE004C66800000000000FF3DDA00E134BD000029
      D700153AD9000025C3002DCDE60000B1CF0037B35A008BD6A00021984900118B
      33004F811F00CCA777000000000000000000FFFEFC00F1FBFF00A25D7100F0FD
      F50096929700D2F8F800F4FCFB00CCFFFE00C9FCF400EDF6F900CCFFFF00DDFF
      FF00D6FCFC00969297003653500000000000BED4B7004C783D002B721C001F80
      1800149A20002FA835002DAB3B0055C65E0072C36C0078B16D006C9C6C009FBD
      A0000000000000000000000000000000000000000000533B2C00D4BAB300C570
      1B00D4BAB3007B6252005F92E3005F92E300051F4400051F4400051F4400051F
      4400051F4400051F4400051F4400051F440000000000FF47E600FF45E400002A
      DC001D3FCD00002ADB0043CAD90000CFE60039B65C0082C19400169338000E88
      2E000E882E00000000000000000000000000F5FEF400CCFFFF00E0F8F600FFFE
      FB00969297007A7D8500735B6300E6F0F000806E7500806A7600D3F0F5006B60
      6A00EBFCFF00919697005E5656000000000085BD820031982F001CA31F0017A5
      1D0035B4400032BA32004EB74A008AC77D00ABCB9A00C4D9B300DDEAD2000000
      00000000000000000000000000000000000000000000000000007B625200D4BA
      B3007B625200543B2B005F92E3005F92E3005F92E3005F92E3005F92E3005F92
      E3005F92E3005F92E3002B55A2000000000000000000FF4BED00FF4AEB00002D
      E9003052E3000027CB0075E7EF0000C5D6002DB78F0045DC6C003BCC61002BB7
      500017973900000000000000000000000000FFFFF800CFFBF40070737100FFFF
      FB0096929700BFF8F900D7FFFF00CDFFFF00AAFFFD00CAFAFE00D6FFFF00D3FF
      FF00D0FFFC009A9292005B555000000000009AD19A0057B65B003DBB440030BC
      390015A32200488D500081A48200D6D3CF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000543B
      2B00000000002B55A200FF990000F58F00005F92E300FF990000F58F00005F92
      E300FF990000F58F00002B55A2000000000000000000FF55FA00FF53F800002F
      F0003D61F200002EEE008EDCDF0000E5EF000287CC00007ABB00000000000000
      000000000000000000000000000000000000F0FDF500C5FFFF00D2F8F800FFF5
      F20096929700D0F9FC00DBFFFF00DAF4FB00D6FAFF00D3F7FF00829CA3005359
      5E0051666300A19E9600A46D6A0000000000C3EFC80093DD9B006BD277004CCA
      5A00008B02004B48440092838700C6AFB700B4A4A500858378006F756400BAB8
      B000000000000000000000000000000000000000000000000000FEFDFD00FDFE
      FF00000000002B55A200FF990000F58F00005F92E300FF990000F58F00005F92
      E300FF990000F58F00002B55A2000000000000000000FF58FE00FF58FE000030
      F300486AF500002FF100BAF4F4005ADCDF003BADDB00178FCF00000000000000
      000000000000000000000000000000000000FFFEFB00C4E3E6007A7D8500FFFF
      FB0096929700C4F5F300C7FBF400D8FBFE00D9FFFF00D1FCFF0081949900F8FF
      FF00F6FCF700978B8100C57E7A0000000000000000000000000000000000CAF6
      D1007FDA850031BF480023BA3B0016BC2F0015C62F001EC235002D9E3C0097C0
      9A0000000000000000000000000000000000000000000000000000000000FCFD
      FE00FEFEFF002B55A2005F92E3005F92E3005F92E3005F92E3005F92E3005F92
      E3005F92E3005F92E3002B55A2000000000000000000FF59FF00FF59FF000031
      F9006885FA000031F7000036B600006CD00052CCEB0000000000000000000000
      000000000000000000000000000000000000FFFFFB00C6FFFF00BFF8F900F1F4
      EB0096929700969297009692970096929700969297009692970096929700D5FF
      F70091948B00CDACA300C6938900000000000000000000000000000000000000
      0000C6F4C90056F1660048CF550061D06E007AD5860094DA9D00BCE5BF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E2769000E2769000E2769000E2769000E2769000E2769000E27
      69000E2769000E2769000E2769000000000000000000F853F800CC2CCC000033
      FE007792FE000032FD00001FAC00001FAC000000000000000000000000000000
      000000000000000000000000000000000000FFF5F200D3FCFE00D0F9FC00DBFF
      FF00DAF4FB00D6FAFF00D3F7FF00829CA30053595E0051666300A19E9600A46D
      6A00000000000000000000000000000000000000000000000000000000000000
      000000000000B5FDAA009BC89000D0DCC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000990099000033
      FF006B68EB00391FD800021BA800001FAC000000000000000000000000000000
      000000000000000000000000000000000000FFFFFB00DAFFFF00C4F5F300C7FB
      F400D8FBFE00D9FFFF00D1FCFF0081949900F8FFFF00F6FCF700978B8100C57E
      7A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F4EB00D1FFFB00C9FFF900C8FF
      F900C5FFF700BEFFFE00C5FEF50093A09E00D5FFF70091948B00CDACA300C693
      890000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFE3FFFFFEFFFF87FFC1F
      E007E81FF83FF80FC003E00FF81FF007C003E00FFC0FF227C003E0E7C007F227
      C003E077C003FE07C003FFFFC001FC07C003DFFFC001F80FC003DE0FC001F03F
      C003EF0FC003F23FC003E30FC01FF227C003F00FC00FF007C003F80FC00FF80F
      E007FC2FFFFFFC1FFC3FFFFFFFFFFE3FF8FFFDFDFFE3E001F077FFFFFC01E001
      80030000F801E00100010000800100011E01000080010001F003000080010001
      E007000080010001800F000080030001000F800080070001001FC00180070001
      00FFE801803F0001000FC801803F0001E00FE001807F0001F01FF80180FF000F
      F8FFFFFFC0FF000FFDFFFFFFFFFF000F00000000000000000000000000000000
      000000000000}
  end
  object xpWindow1: TxpWindow
    SizeInfo.MaxSizeWidth = 1288
    SizeInfo.MaxSizeHeight = 998
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
    Left = 605
    Top = 8
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Action7
                Caption = '&Sales List'
                ImageIndex = 8
              end
              item
                Action = PrintAssessmentForm_Action
                ImageIndex = 8
              end
              item
                Action = Action6
                Caption = '&Map'
                ImageIndex = 8
              end
              item
                Caption = '-'
              end>
            Caption = '&Print'
            ImageIndex = 6
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = Show_PropertyClass_Action
                Caption = '&Property Class'
              end
              item
                Action = Show_Neighborhood_Action
                Caption = '&Neighborhood'
              end
              item
                Action = Show_BuildingStyle_Action
                Caption = '&Building Style'
              end
              item
                Action = Show_SchoolDistrict_Action
                Caption = 'Sc&hool District'
              end
              item
                Action = Show_SwisCode_Action
                Caption = '&Swis Code'
              end
              item
                Action = Show_FireDistrict_Action
                Caption = '&Fire District'
              end
              item
                Action = Show_Condition_Action
                Caption = '&Condition'
              end
              item
                Action = Show_Grade_Action
              end
              item
                Action = Show_Ownership_Action
              end>
            Caption = '&Sales Filters'
            ImageIndex = 20
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = Menu_Image_List
    Left = 649
    Top = 61
    StyleName = 'XP Style'
    object Action5: TAction
      Tag = 1
      Category = 'Tables'
      Caption = 'Property Class'
      ImageIndex = 9
    end
    object Action2: TAction
      Tag = 1
      Category = 'Tables'
      Caption = 'Neighborhoods'
      ImageIndex = 9
    end
    object Action4: TAction
      Tag = 1
      Category = 'Tables'
      Caption = 'Building Styles'
      ImageIndex = 9
    end
    object PrintAssessmentForm_Action: TAction
      Tag = 10
      Category = 'Print'
      Caption = 'Appraisal'
      ImageIndex = 8
      OnExecute = PrintAssessmentForm_ActionExecute
    end
    object Action1: TAction
      Tag = 1
      Category = 'Tables'
      Caption = 'Conditions'
      ImageIndex = 9
    end
    object Action3: TAction
      Tag = 1
      Category = 'Tables'
      Caption = 'Grades'
      ImageIndex = 9
    end
    object Show_PropertyClass_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Property Class'
      Checked = True
      OnExecute = Show_PropertyClass_ActionExecute
    end
    object Show_SwisCode_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Swis Code'
      Checked = True
      OnExecute = Show_SwisCode_ActionExecute
    end
    object Show_Neighborhood_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Neighborhood'
      Checked = True
      OnExecute = Show_Neighborhood_ActionExecute
    end
    object Show_BuildingStyle_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Building Style'
      Checked = True
      OnExecute = Show_BuildingStyle_ActionExecute
    end
    object Show_Condition_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Condition'
      Checked = True
      OnExecute = Show_Condition_ActionExecute
    end
    object Show_Grade_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Grade'
      Checked = True
      OnExecute = Show_Grade_ActionExecute
    end
    object Show_SchoolDistrict_Action: TAction
      Category = 'Sales Filters'
      Caption = 'School District'
      Checked = True
      OnExecute = Show_SchoolDistrict_ActionExecute
    end
    object Show_FireDistrict_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Fire District'
      Checked = True
      OnExecute = Show_FireDistrict_ActionExecute
    end
    object Action6: TAction
      Category = 'Print'
      Caption = 'Map'
      ImageIndex = 8
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Category = 'Print'
      Caption = 'Sales List'
      ImageIndex = 8
      OnExecute = Action7Execute
    end
    object Action8: TAction
      Category = 'Print'
      Caption = 'Sales 2'
      OnExecute = Action8Execute
    end
    object Show_Ownership_Action: TAction
      Category = 'Sales Filters'
      Caption = 'Ownership Code'
      Checked = True
      OnExecute = Show_Ownership_ActionExecute
    end
  end
  object Menu_Image_List: TImageList
    Left = 555
    Top = 4
    Bitmap = {
      494C010115001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
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
      0000000000000000000080808000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C0008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000A0409000CC90C00097C298006CBF680069BD660070C0
      6C0073C16F0071C16E0071C16E006ABE670000000000CFBAAD00CCB8AA00CCB8
      AA0000000000000000000000000000000000CCB8AA00CCB7AA00CCB7AA00CCB7
      AA00000000000000000000000000000000000000000000000000000000006349
      3500634935006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B048A000B058
      A000B060B000B068B000A0489000D0A0D000C078B00077B2750071C16E0071C1
      6E0071C16E0071C16E0071C16E006BBE6800DAC6B4006C645F003B3238003B3A
      3800000000000000000000000000A39788002020200020282000202820002C2B
      290000000000000000000000000000000000000000000000000000000000B6A1
      9200F9E1D100DEB79D00DFB59800E1B39400E1B09000E3AE8B00E4AC8700E5AA
      8300E6A67F00E7A47A00EAA27700634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070287000C078
      B000C080C000D080C000D088C000D098D000D0A8D000B97EAB0073BF700071C1
      6E0071C16E0071C16E0070C16D006CBF690000000000FD03FD003B3938000000
      00000000000000000000000000000000000084757100202020002C2A29000000
      000000000000000000000000000000000000000000000000000000000000B8A3
      9400FAE5D900FAE6D900FAE5D800F9E4D700FAE3D500FAE1D200F8DFCF00F7DC
      CB00F8DAC800F7D9C600E8A37B006349350000000000B7694C00B74F2F00C254
      3800C8594100B2503400A5583E009E6F5E00B0ACA80000000000F604FB00A113
      A10000000000000000000000000000000000000000000000000070206000A040
      9000B050A000B050B000C058B000C068C000D080C000D0A0D000A8749A0071C1
      6E0071C16E0072C16E0070C16D006CBF690000000000000000006B695E005F59
      5400C8B6A500BBAB9B00BFAB9F00CBB6A8003028300020282000605E53000000
      000000000000000000000000000000000000000000000000000000000000BAA5
      9500FAEBE100FBEBE100D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD
      8F00F7DDCD00F7DAC900E6A6800063493500D5957B00D2441D00F55E4600FF6F
      5C00FF705B00DE7D5000E76C4600F3563F00AA45230044843C0031752C006020
      6000663466003A823A00187F18005D835D000000000000000000602060008038
      800090409000B048A000B050A000C058B000A050A0009048800083A8810074C4
      71007FC87C008ACB880093CF9000A1D5A0000000000000000000D7C2B0003038
      3000534E4B00534E4B00534E4B003B3938003030300020282000D5BFAE000000
      000000000000000000000000000000000000000000000000000000000000BDA7
      9800FCEFE700FCEFE800FCEFE700FBEEE600FBECE400FAEAE000FAE7DB00F9E4
      D600F9E1D200F8DDCD00E5AB840063493500E4BEAD00E0543700FF736000FF87
      6D00E37A5000F6D69F00E6996E007D4071006C316A0064256300602060006020
      6000A04090006D4F63002BB62B00378537000000000086CB810061226100642B
      6400662E66006832680060206000A040900070206000E5C8E400EBF3EB00F0F5
      F000E9F2E900E1F0E000E3F0E300E4F1E4000000000000000000000000005F54
      5700C9B7A60000000000000000003B393800303030005E585400000000000000
      000000000000000000000000000000000000B6612900B14A0800B14A0800B14A
      08009A4105009A4105009A410500873B07008135040077310000D5AD8F00D5AD
      8F00FAE4D600F9E0D100E3AD89006349350000000000E3917900FF785A00F480
      5700E69A6C00FFD5A200F19D6800622160008038800090409000B048A000B050
      A000C058B000A050A00094478600809A800075C47000E0EFE000EAF2EA00DEEC
      DF00CCE8CB00D2B6D300602060006B376B00B6D5B500A1D89D0099CF97008BC7
      890082C280007BC67900A7D7A700D0E9D000000000000000000000000000AB98
      90005F54570000000000BCAC9C003030300030303000BCAA9C00000000000000
      000000000000000000000000000000000000B7683900FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0077310000FBEEE700FBEB
      E100FAE7DB00F9E3D500E2B08E006349350000000000000000009F5E42006527
      2800332E7C003F387F009C51520076275C00A0409000B050A000B050B000C058
      B000C068C000D080C000D0A0D000CC43C10072C36D0076C57100D0E8D000A8CF
      AB0076C57100868D9D00602060008EC98C008CC7880079C4750070BE70006FC2
      720072C36D006FC16C00A5D1A300D0E8CF000000000000000000000000000000
      000049404700DDC6B300524D4900303030004643410000000000000000000000
      000000000000000000000000000000000000CB734800FEFEFE008A2E0700AD60
      3700F9F1EF0081350400B3653F00FEFEFE00FEFEFE0081350400D5AD8F00D5AD
      8F00FAE9E000FAE5D900E1B2940063493500000000004A4B4C00010607000013
      41000C369E000A37A500041E82006F367200C078B000C080C000D080C000D088
      C000D098D000D0A8D000CA65BD000000000072C36D00CAE8C700D6EBD5008CCD
      880072C36D006EBE750071C46C008AC7870081C47F0072C36D0072C36D0072C3
      6D0076C5720071C36D00A5D2A300D0E8CF000000000000000000000000000000
      000080776F0080726F003038300030303000B1A0920000000000000000000000
      000000000000000000000000000000000000CD7A5400FEFEFE00A36C54009759
      3900F3C7B6008135040081350400CFB9AC00FEFEFE00873B0700FCF3EE00D5AD
      8F00FBECE300FAE8DC00DFB59800634935005B5B5B0008060300101A2E001B52
      B9001F5BC2001F5BC000124CB80090499800B058A000B060B000B068B000A048
      9000D0A0D000C270B5009794A6000000000072C36D0072C36D00E4F1E30081C9
      7D0072C36D0071BC68006FC6700079C87C0072C36D0072C36D0072C36D0072C3
      6D006DB77E0072C66B00A4D1A300D0E8CF000000000000000000000000000000
      00000000000040404000404040003B4139000000000000000000000000000000
      000000000000000000000000000000000000D4896600FEFEFE00B27D6600B869
      4300AA745C0081350400B55A31006C3D2700FEFEFE009A410500FDF5F100D5AD
      8F00FBEDE500FAE9DE00DDB79C00634935002222220025221E001C2C45002470
      D8002979DF002978DE00226FD9002B529500AFB8C00063ADF000549AE2009346
      9500C265BB0034A0FF0041789F000000000072C36D0072C36D00F2F7F20072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0070BC720073C57000A8D2A600CCE5CB000000000000000000000000000000
      0000000000005048500040404000C1B3A4000000000000000000000000000000
      000000000000000000000000000000000000D4907600FEFEFE00D4907600B869
      4300DEBBAE00994B2000DCA38A0097593900E1D1C8009A410500FDF7F200D5AD
      8F00FBEFE800FBEBE000DCB9A000634935003E3E3E00343231002C313600216E
      CA003196FF00379DFF003095FF003468AB009BB3C00043AAFA0058B0F100927C
      C4004FB4FF0048B1FF003586C400CCCBC90072C36D0072C36D00F2F7F20072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D007FC07A007CC67B00ACD6AA00CCE6CB000000000000000000000000000000
      000000000000C6B6A8006C676200000000000000000000000000C38566009050
      300090583000904820008040200000000000E59D7F00F3E1DB00D99B8200C27C
      5E00F3E1DB00B8694300F3E1DB00A6694C009B897600B14A0800D5AD8F00D5AD
      8F00FCF0E800DBBBA400DCBAA300644A360095959500343434004D4B48003541
      5600234582001B53B7001A60BD004D647D000000000049B0F4004EB4F1004FB5
      F50051B9FF004FB9FF003389C300C6C9CA0072C36D008CCD8800DAEDD90072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0071C26F006EBF6C00A3D5A300CCE8CC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C385
      660090503000C07860000000000000000000E8A48800F0BDA900D99B8200CC80
      5F00E9DBD500CC805F00F3E1DB00A36C5400DCA38A00B14A0800FCF7F300FCF4
      EE00B6A19200644A3600644A3600644A36000000000063636300474748008381
      7D0099948E005E5C6200151319009F9A9600000000002E8BBC003592C6004EA1
      D20055A5DC003491CD0028749A000000000072C36D008CCD8800D8EDD70072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0071C5
      6F0071C06D0071C87300A6C09000C8D6BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0887000000000000000000000000000E5AA9200FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B14A0800FDF6F300FCF3
      EE00B8A39400D3C4B900644A36001818180000000000000000007C7C7C006B6B
      6B0075757500646462009494920000000000000000008ABAD20050A1CF0095CA
      EA0093C7E5003A8FBB008DB0C1000000000072C36D0099D39600CEE8CC0072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D006CB9
      6D0072C26D0071C47000A4CC9B00CBDEC4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5AA9200E5AA9200E8A48800E59D
      7F00D7967B00D4896600D07D5700C9765100C36D4100B6612900FDF6F200FCF3
      EC00BFAA9B00644A36001818180000000000000000000000000000000000D3D3
      D300C5C5C500E2E2E2000000000000000000000000000000000090BDD50079B3
      D10062A5C90096BED300000000000000000072C36D00A5D8A200BFE2BD0072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D006EBC
      6C0072C16E0071C16E0090CF9000DAECD9000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F903
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096918E0074706B00050100000E0B0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008AAD9C00689288000A130D0010231C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F905
      F600831883000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8F9100786A
      70004C4046001C11140009010200362E2F006B6B6B00A8A8A800090909000000
      000000000000000000000000000000000000000000000000000084B88B0062A7
      5600497B3500143A0F0009180700315A360075757500ABABAB00161616000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000171615006A3767006C316A00642563006020
      6000A04090009318870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938A8600281F1C00180C0C004F42
      4400756A6C00AFA8AB00E4DFE100ECE9EB00EDEFF000B3B5B6005E6061000000
      00000000000000000000000000000000000078B899001A573600112F15003783
      3D005F9D6300ADB3A700E4DFE100ECE9EB00EDEFF000B7B4B7006E6468000B0B
      0B00000000000000000000000000000000000000000080808000808080008080
      800080808000808080008080800080808000602060008038800090409000B048
      A000C058B000A050A000A03D9300000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000060A04005E5E58006A666100BAB4
      AF00EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB00868483000503
      0200BEBCBB00000000000000000000000000090D1D005D6D710061867F00B4BD
      B500EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB0087948E000D12
      1000BDBFBD000000000000000000000000000000000080808000FFFFFF00D8E9
      EC00D8E9EC0000FFFF00D8E9EC0009FEFD0070206000A0409000B050A000B050
      B000C068C000D080C000D0A0D000CE40C400000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF008080800000000000000000000000000000020000727670002B291F005D57
      4A00484033005A54470056564A0043473C00595043004B423800716A6100726C
      6500231F1A000000000000000000000000000B0A0F00717684001C5054003597
      90001791820030988D00476B75003C4C5C0023A39000218D740052A190005B9A
      8C001D4B400000000000000000000000000080808000FFFFFF00D8E9EC0000FF
      FF0000FFFF00D8E9EC0000FFFF00D8E9EC0070287000C078B000C080C000D080
      C000D098D000D0A8D000C274B300000000000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC00000000008080800000000000000000000F12100093908B0091877D00A694
      830098836E008A776200756653007F74600074634E0081725F006A5D4D005047
      3A00110B040083807C000000000000000000201C230088A9A8005FCBB40074CE
      B20048DFB80026EBC50012E0BD0024E2D4000FDEB9001EE9C70015CCAB001B9B
      87000B2A20007F979200000000000000000080808000FFFFFF0000FFFF00D8E9
      EC00D8E9EC0000FFFF00D8E9EC0000FFFF00B250A400B058A000B060B000B068
      B000D0A0D000C769B90000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      800000000000000000000000000000000000AFA9AA005B4F4B00B39D92009577
      640085634C00836149007E604700644A32006A5438006550350063523D005548
      38004A413700040100000000000000000000ABB3A9003A94670092C5A80033EA
      AA0004F9AD0003F5B10002F0B70003C89A0006CEAE0006C8AA000BC5A70010AD
      9000208C73000A110D000000000000000000FFFFFF0000FFFF00D8E9EC0000FF
      FF0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF0000000000D8E9EC00D6E4
      E800CB5CBE0000000000000000000000000080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC0000000000000000000000000008030400C6B9B1009A86
      7500886D58007F60490073533C006F503900654F360067513800705B45005040
      2F0070665C00120E0D00B5B8BD0000000000000000000D160E00BEC2B60051DC
      B20016F4B60002F3B20001E0A20001DA9C0006C8A40006CCA70008DCAF000BA8
      86003EB19A0018251E00BBB5BB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FF000000FFFF
      FF000300030000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC0000000000000000009E999A0043373100BAA5
      9600806550009071580077563C0075543A006E5436005E462A00735C42007966
      51003A2D1F005B5653000102060000000000000000009BA89A001C855C00A1C2
      A90005F7B60020F1B50000E4A70000E1A30003D5AD0003BC9D0007DEB6000EE7
      BE000B836A005676680014090B00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF000000000000000000000000000000000012080100BAAA
      9A00A9917B00886A4F0087654800775335006D4F2C00644623006C5031007159
      41006F5F4E00544C45009E9D9F000000000000000000000000000C261800A5C1
      AE006FD1AE000CF6BD0005F7BB0000DEA80001CDAA0002BD9E0001D0AA0005DD
      B30011D6B1003A867400A5A2A2000000000080808000FFFFFF0000FFFF00D8E9
      EC00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000ABA29E002F21
      1500B6A08E00AA8F75006A4A2D0088664800664622008D6D4A00684C2A006850
      340071604D00564B43000D0809000000000000000000000000009BBAA9000F67
      4C0096C4A9006AD4B10001CB9E0005F7BE0002BE9D000DF5C90001C8A80004CB
      A8000FDBB50029997900121D11000000000080808000FFFFFF00D8E9EC0000FF
      FF0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00000000008080
      8000000000000000000000000000000000000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000008080800000000000000000000000000000000000000000001208
      0100D6C6B9008C7664007E644C008C6E550062462700583C1E006E563A005C46
      2D0079695800554C4300C2BEBD00000000000000000000000000000000000C26
      1800D2CABC0029ECB60004F3BB0017F3BC0002BE9E0006A9870005D5B00005B9
      9B0013E7B8002E937F00C1C1BE000000000080808000FFFFFF0000FFFF00D8E9
      EC00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF0000000000808080008080
      8000000000000000000000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      000080808000808080000000000000000000000000000000000000000000B5B1
      B00009000000A89C92009B8A7D00725E4D008C7B6800645340006B5A47006D5D
      4C005A4E4200716962000400000000000000000000000000000000000000B3B7
      B3000818080087C5B0005CD7AE000BE1A80031E7C4000DC5A5000ED1B00011D4
      A90017B18A0052A08A000A100A00000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF008080800080808000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008D8C9000120D0E0009000000140A03000701000009000000160C05000B02
      00000B03000005000000B4B2B200000000000000000000000000000000000000
      00009E968E0018251600081808000D291B0009160C00081808000D2E1E00081B
      0D00081D11000A110900B4B6B300000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FAFAF900F1F2
      F300FAFAFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096918E0074706B00050100000E0B0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096918E0074706B00050100000E0B
      070000000000000000000000000000000000000000000000000000000000AD7C
      7A00CA807E00CC847C0097857E00A5858000B48F8B00A6A19800A69F9600A297
      8F0084988B004B55490000000000000000000000000000000000DDE0E1002C3D
      47007992A000CAC8D000F7F7F800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8F9100786A
      70004C4046001C11140009010200362E2F006B6B6B00A8A8A800090909000000
      000000000000000000000000000000000000000000000000000000000000938A
      8600281F1C00180C0C004F424400756A6C00E4DFE100ECE9EB00EDEFF000B3B5
      B6005E6061000000000000000000000000000000000000000000FFF9EF00CAFF
      F900CAFCF200CCFFF900C8FFFC00D6FEFD00DEFCFD00CBFAF800AFFFF800CFFE
      FC009C949B004551550000000000000000000000000000000000F4FEFF006994
      A2009ABAC100708AA1006F6B7E00E3E1E3000000000000000000000000000000
      000000000000000000000000000000000000938A8600281F1C00180C0C004F42
      4400756A6C00AFA8AB00E4DFE100ECE9EB00EDEFF000B3B5B6005E6061000000
      0000FC05FD00B262D9006D8DB90029375700000000000000000000000000060A
      04005E5E58006A666100BAB4AF00EBE7E200DADDDB00F1F6F400EDEAE600E2DF
      DB0086848300BEBCBB0000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF0098929D004F505A000000000000000000000000000000000000000000BEE5
      F100D5EEF70076C0D6005F93B1004C79A000DAD6D800FEFEFE00000000000000
      000000000000000000000000000000000000060A04005E5E58006A666100BAB4
      AF00EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB00868483000604
      03009BABC2006787B40050607D005B5F71000000000000000000000000000002
      0000727670002B291F005D574A004840330056564A0043473C00595043004B42
      3800716A6100231F1A0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A69AA000614A52000000000000000000000000000000000000000000DCEE
      F30096CCDB008CC7DC0071CFFF0056C2F70048709500CFCACD00FBFBFB000000
      00000000000000000000000000000000000000020000727670002B291F005D57
      4A00484033005A54470056564A0043473C00595043004B423800716A6100818E
      A0006A8BB90051627F005154670000000000000000000000000000000000AFA9
      AA005B4F4B00B39D92009577640085634C007E604700644A32006A5438006550
      350063523D004A41370004010000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00AF9295004F504E0000000000000000000000000000000000000000000000
      0000B0D7E3007BCAF4008BD6FF007ACFFF0062CAFF003C668E00C0BBBF00FBFB
      FB00000000000000000000000000000000000F12100093908B0091877D00A694
      830098836E008A776200756653007F74600074634E0081725F00B0A18200817C
      6C0017264A0052576A0000000000000000000000000000000000AF655400A79B
      000008030400C6B9B1009A867500886D580073533C006F503900654F36006751
      3800705B450070665C00120E0D00B5B8BD000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0070948E004D5A580000000000000000000000000000000000000000000000
      00000000000091D1F00084CCEF008DD7FF0079CDFD0060C9FF003A638B00CAC4
      C800FEFEFE00000000000000000000000000AFA9AA005B4F4B00B39D92009577
      64008A6D54008E867500594F30003E361D004D463000807A6D00B09D68009B89
      5D006157460081838900000000000000000000000000726A6200A0860000C9CA
      00009E999A0043373100BAA596008065500077563C0075543A006E5436005E46
      2A00735C42003A2D1F005B565300010206000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00A3979D00504A4F0000000000000000000000000000000000000000000000
      00000000000000000000AED6E20083CBEC008ED8FF007ACEFE005EC7FC003E71
      9C00DBD8DC000000000000000000000000000000000008030400C6B9B1009E8D
      7D0095895B0099906200BAB18200BBB28800A0997800555034003B3317009283
      5900B6B1A70019151400B5B8BD00000000004DA53800D9ED0000FFFF0000FBFA
      00009CC20000ABA29E002F211500B6A08E006A4A2D0088664800664622008D6D
      4A00684C2A0071604D00564B43000D0809000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00969297003653500000000000000000000000000000000000000000000000
      0000000000000000000000000000B1D8E30083CBEC008CD7FF0076C6F30085A1
      B000514F5300D6D6D500FEFEFE0000000000000000009E999A0043373100ACA6
      8C00B7AB7600E0DCC900D8D1B100E8E4D100EAE6D500C2BA990055503700938D
      81003A2D1F005B565300010206000000000028940400FFFF0D00FFFF0300F0F8
      000083C300000073000012080100D6C6B9007E644C008C6E550062462700583C
      1E006E563A0079695800554C4300C2BEBD000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00919697005E56560000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AED6E2007FCBF000A5B0B700B4AF
      AB005354530030304B00CDCDD50000000000000000000000000012080100A99A
      5E00E1DDC600E5E3D600E0DCC900DFDAC400ECEAE000EFEDE200A19A7B004C44
      30006F5F4E00544C45009E9D9F00000000002E970400FFFF5B00FFFF7E000073
      00000080000000790000B5B1B000090000009B8A7D00725E4D008C7B68006453
      40006B5A47005A4E420071696200040000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A9292005B55500000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5D3E2008B9291009F9E
      93008E8EC5008888FF0047477600000000000000000000000000ABA29E00AB9C
      5A00F1F0EB00EAE9E200E4E2D700E0DDCC00DCD7C100E0DCC400B9B088004038
      1E0071604D00564B43000D0809000000000027940400FFFF3500FFFF1800FFFF
      00005BA4000047970000FFFF0000007B000000800000894B4300576466000000
      0000000000000000000000000000000000000000000000000000FFF5F200D3FC
      FE00D0F9FC00DBFFFF00DAF4FB00D6FAFF00D3F7FF00829CA30053595E005166
      6300A19E9600A46D6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C3CA006565
      AB00CDCDFF009696F6008282A70000000000000000000000000000000000BBAD
      6B00F2EFEA00F1F1F000E9E7E200E4E3D700DFDBC900D7D1B500BCB286005249
      2A0079695800554C4300C2BEBD000000000095C8AB0065B20000F3F90000FFFF
      0000F0F900003296000018870000008000004D210000CEBAC000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFB00DAFF
      FF00C4F5F300C7FBF400D8FBFE00D9FFFF00D1FCFF0081949900F8FFFF00F6FC
      F700978B8100C57E7A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      FD008A8AEE009393F100E0E0EE0000000000000000000000000000000000C7C0
      9E00E4E0C500FCFDFF00F2F3F200EBEBE400E7E5D800E3E0CD00999063008F8A
      7A005A4E4200716962000400000000000000000000000E80130000740000FFFF
      0000A7D3000003790000007400000081000063381C0000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F4EB00D1FF
      FB00C9FFF900C8FFF900C5FFF700BEFFFE00C5FEF50093A09E00D5FFF7009194
      8B00CDACA300C693890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FE00FAFAFE0000000000000000000000000000000000000000000000
      0000D1C79600E5E0C500F2F0EA00F4F3EF00E5E1CB00B6AC770090875D002A23
      20000B03000005000000B4B2B200000000000000000000000000000000000079
      00004CA600005DAE000066B4000092C19F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CAB8A400C4AA7500AD956200A8916300B1A09100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806850008060
      5000806050007060500070584000705840007058400070504000705040006048
      3000604830006048300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000859EC000496DA1001A203B009090900090909000909090009090
      9000909090000000000090909000909090009090900090909000000000009090
      9000909090009090900090909000909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A48B8200E0D0C000B0A0
      9000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A0900060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008AA2C3004A6EA3007E8B9E001A203B00E7E7E700D3D3D300D3D3D300D3D3
      D300E7E7E7000000000090909000D3D3D300D3D3D300E7E7E700000000009090
      9000D3D3D300D3D3D300D3D3D300909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B39B9100FFE8E000FFF8
      F000FFF0E000FFE8E000F0D8D000F0D0B000F0D0B000F0C0A00000A0000000A0
      000000A0000070584000604830008D7057000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008DA4
      C6004A6EA3007D8A9D001A203B00CCD0D600FF787800FF4D4D00FF4D4D00FF4D
      4D00FF787800FF787800FF7878004D4D4D004D4D4D0090909000909090009090
      90000000000000000000D3D3D300909090000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0E0E000F0D8C00000FF100000FF
      B00000A000008068500070504000604830000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D9DB3004A6E
      A3007E8B9E001A203B00CCD0D6000000000090909000FF4D4D00FF4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4DFF004D4DFF004D4DFF004D4D4D000000
      00000000000000000000D3D3D30090909000000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF0080808000000000000000000000000000B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0E0E000F0D8C00000FF100000FF
      B00000A000008068500070504000604830000000000000000000000000000000
      00000000000000000000000000000000000000000000CEBF9700978557001A20
      3B001A203B00CBCFD5000000000000000000E7E7E7004D4D4D004D4D4D00D3D3
      D300000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D300909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC0000000000808080000000000000000000B0908000F0E8E000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF8F000F0E8E00000FF100000FF
      100000A00000907060007060500060483000000000000000000000000000A2A1
      9A0068614100403B200038331D00534F3B0093918900A7905200B6A885006051
      2A00C6C8CC00000000000000000000000000E7E7E700000000004D4D4D000000
      00004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      00000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      800000000000000000000000000000000000B0988000D0C0B000D0B8B000C0B0
      A000B0A09000B0988000A0888000908070009080700090706000806860008060
      50007058500090807000806860007058400000000000000000009D926600857A
      4600B6AC7B00C7BC8B00BAB28600948D6D003C371C00342F1C007A683500D3CF
      C40000000000000000000000000000000000E7E7E700000000004D4D4D00D3D3
      D30000000000D3D3D300000000004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D3009090900080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC000000000000000000C0A09000FFF8F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF0F000F0F0
      F000F0E8E000A0888000907860008060500000000000B0AFA500A4955300DED9
      C400D9D3B800D5CEAD00F1EFE700DAD3B500B5AD87003C371C00A3A19B000000
      000000000000000000000000000000000000E7E7E7004D4D4D004D4D4D000000
      0000D3D3D30000000000D3D3D3004D4D4D00D3D3D300D3D3D3004D4D4D000000
      00000000000000000000D3D3D3009090900080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC0000000000DFC5AE00B9A08900D0B0A000C0A8
      A000D0B0A000C0A09000B0908000A0807000A080700090706000806050007060
      500080706000B0A09000A08870008060500000000000A3965800D6CFAC00E5E2
      D400E0DCC900DDD8C200E3DFCC00F4F4F200E7E4D500958E6F00514D3A000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D30000000000D3D3D3004D4D4D00D3D3D3004D4D4D000000
      00000000000000000000D3D3D300909090008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF00000000000000000000000000D9C3AF00C0B0A000E0C8
      C000FFFFFF00FFF8FF00FFF8FF00FFF0F000FFF0F000F0F0E000F0E0E000C0A8
      A00080605000A0908000C0B0A0008060500000000000A0904900ECEADE00E9E8
      E000E5E3D700E1DECE00DFDAC700DFDBC500E7E4D400B8B0870038331D000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D000000
      0000D3D3D30000000000A64D4D004D4D4D00D3D3D300D3D3D300D3D3D3004D4D
      4D000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000C0B0
      A000FFFFFF00F0E8E000D0C8C000D0C8C000D0C8C000D0B8B000D0C0B000E0D0
      D0008068600080605000B0989000B0A0900000000000B5A45400F2F0EB00F0EF
      ED00E8E7E000E4E2D800E1DECE00DBD7C100D3CDAE00C7BC8D00403B20000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D300000000004D4D4D004D4D4D00A64D4D004D4D4D000000
      00000000000000000000FBFBFB00909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF0000000000808080000000000000000000000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0
      D000D0B8B00080605000C5AA97000000000000000000C2B57400E9E5D300F6F6
      F600EFEEEC00E9E8E200E6E4D800E0DDCB00D9D3BA00B8AE8000655F3F000000
      00000000000000000000000000000000000090909000909090004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00D3D3D3004D4D4D00E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      000080808000808080000000000000000000000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0
      D000D0B8B00080605000C5AA97000000000000000000C7C3B200D7CFA400FAFA
      FA00F7F7F700F1F1EE00EBEAE200E6E4D600E1DEC90082774500AAA9A3000000
      0000000000000000000000000000000000000000000090909000909090004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00909090009090
      900000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000F6DF
      CC00D0B8B000FFFFFF00F0F0F000D0C8C000D0C8C000D0C8C000D0B8B000C0B0
      B000E0D8D0008070600087675700000000000000000000000000CEC38F00D8D0
      A500E9E5D300F4F2ED00F0EEE400D9D3B100A0935200A0976A00000000000000
      0000000000000000000000000000000000000000000000000000909090009090
      900090909000909090004D4D4D004D4D4D004D4D4D0090909000909090000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9D1C300E1D1D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      FF00F0E8E000D0B8B0008060500000000000000000000000000000000000C6C3
      B200C2B47300AE9E500098894500A2955700B4B3A90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009090900090909000909090009090900090909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9D2C400D0C0B000D0C0B000D0C0B000D0C0B000D0C0B000D0C0
      B000D0C0B000D0C0B000D0C0B000000000000000000000000000000000000000
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
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FC7F000000000000FC7F000000000000FC7F000000000000
      FC7F000000000000FC7F000000000000F83F000000000000F01F000000000000
      E00F000000000000C007000000000000C007000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FC008F0FE000FFFFC0000E0FE000FFFF
      C0009F1FE000804FC000C01FE0000000C000C01FE00000008000E63F00008000
      0000E43F0000C0000000F07F000080010000F07F000000010000F8FF00000001
      0000F8FF000000000000F9C1000000800000FFE3000080810000FFF70000C181
      0000FFFF0001E3C30000FFFFE003FFFFFFFFFFFFFFEFFFFFFC3FFC3FFFE7FFFF
      C01FC01FC003E001000F000F8001C001000700078000C0010007000700018001
      00030003000380010003000300070001800180010007000080018001000F0001
      C001C001000F8001C001C001000F8001E001E001000F8003E001E001807FC01F
      F001F001C6FFE1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFC3FFF0F
      E003C1FFC01FE007C003C0FF0000E003C003E03F0000E003C003E01F0001E001
      C003F00F0003C000C003F80700038000C003FC0780010000C003FE0180010000
      C003FF01C0010000C003FF81C001001FC003FFC1E001003FC003FFE1E001807F
      C003FFF3F001E0FFFFFFFFFFF83FFFFFFFFFFFFFC003FFF80420FFFF8001FFF0
      0420E0018000FFE0000CC0010000FFC1001CC0010000FF83080480010000E007
      507C80010000C00F4A0400010000801F141C00000000801F0A1C00018000801F
      140C8001E000801F0A1C8001E001801F00018003E001801F800FC01FE001C03F
      C01FE1BFF001E07FF83FFFFFF801FFFFFFFFFFFFF807FFFFC003F83FF807FFF9
      8001101FF807E7FF00000001F807C3F300000000F807C3E700000000F807E1C7
      00000000F807F08F00001800F807F81F0000F800FFFBFC3F0000F800FF83F81F
      0000F800FE07F09F0000F800F80FC1C70000F800E01F83E31000FC01C07F8FF1
      1800FF8FC1FFFFFFC003FFFFE7FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object SalesTab_ImageList: TImageList
    Left = 349
    Top = 516
    Bitmap = {
      494C010114001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0409000CC90C00097C298006CBF680069BD660070C0
      6C0073C16F0071C16E0071C16E006ABE670000000000CFBAAD00CCB8AA00CCB8
      AA0000000000000000000000000000000000CCB8AA00CCB7AA00CCB7AA00CCB7
      AA00000000000000000000000000000000000000000000000000000000006349
      3500634935006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B048A000B058
      A000B060B000B068B000A0489000D0A0D000C078B00077B2750071C16E0071C1
      6E0071C16E0071C16E0071C16E006BBE6800DAC6B4006C645F003B3238003B3A
      3800000000000000000000000000A39788002020200020282000202820002C2B
      290000000000000000000000000000000000000000000000000000000000B6A1
      9200F9E1D100DEB79D00DFB59800E1B39400E1B09000E3AE8B00E4AC8700E5AA
      8300E6A67F00E7A47A00EAA27700634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070287000C078
      B000C080C000D080C000D088C000D098D000D0A8D000B97EAB0073BF700071C1
      6E0071C16E0071C16E0070C16D006CBF690000000000FD03FD003B3938000000
      00000000000000000000000000000000000084757100202020002C2A29000000
      000000000000000000000000000000000000000000000000000000000000B8A3
      9400FAE5D900FAE6D900FAE5D800F9E4D700FAE3D500FAE1D200F8DFCF00F7DC
      CB00F8DAC800F7D9C600E8A37B006349350000000000B7694C00B74F2F00C254
      3800C8594100B2503400A5583E009E6F5E00B0ACA80000000000F604FB00A113
      A10000000000000000000000000000000000000000000000000070206000A040
      9000B050A000B050B000C058B000C068C000D080C000D0A0D000A8749A0071C1
      6E0071C16E0072C16E0070C16D006CBF690000000000000000006B695E005F59
      5400C8B6A500BBAB9B00BFAB9F00CBB6A8003028300020282000605E53000000
      000000000000000000000000000000000000000000000000000000000000BAA5
      9500FAEBE100FBEBE100D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD
      8F00F7DDCD00F7DAC900E6A6800063493500D5957B00D2441D00F55E4600FF6F
      5C00FF705B00DE7D5000E76C4600F3563F00AA45230044843C0031752C006020
      6000663466003A823A00187F18005D835D000000000000000000602060008038
      800090409000B048A000B050A000C058B000A050A0009048800083A8810074C4
      71007FC87C008ACB880093CF9000A1D5A0000000000000000000D7C2B0003038
      3000534E4B00534E4B00534E4B003B3938003030300020282000D5BFAE000000
      000000000000000000000000000000000000000000000000000000000000BDA7
      9800FCEFE700FCEFE800FCEFE700FBEEE600FBECE400FAEAE000FAE7DB00F9E4
      D600F9E1D200F8DDCD00E5AB840063493500E4BEAD00E0543700FF736000FF87
      6D00E37A5000F6D69F00E6996E007D4071006C316A0064256300602060006020
      6000A04090006D4F63002BB62B00378537000000000086CB810061226100642B
      6400662E66006832680060206000A040900070206000E5C8E400EBF3EB00F0F5
      F000E9F2E900E1F0E000E3F0E300E4F1E4000000000000000000000000005F54
      5700C9B7A60000000000000000003B393800303030005E585400000000000000
      000000000000000000000000000000000000B6612900B14A0800B14A0800B14A
      08009A4105009A4105009A410500873B07008135040077310000D5AD8F00D5AD
      8F00FAE4D600F9E0D100E3AD89006349350000000000E3917900FF785A00F480
      5700E69A6C00FFD5A200F19D6800622160008038800090409000B048A000B050
      A000C058B000A050A00094478600809A800075C47000E0EFE000EAF2EA00DEEC
      DF00CCE8CB00D2B6D300602060006B376B00B6D5B500A1D89D0099CF97008BC7
      890082C280007BC67900A7D7A700D0E9D000000000000000000000000000AB98
      90005F54570000000000BCAC9C003030300030303000BCAA9C00000000000000
      000000000000000000000000000000000000B7683900FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0077310000FBEEE700FBEB
      E100FAE7DB00F9E3D500E2B08E006349350000000000000000009F5E42006527
      2800332E7C003F387F009C51520076275C00A0409000B050A000B050B000C058
      B000C068C000D080C000D0A0D000CC43C10072C36D0076C57100D0E8D000A8CF
      AB0076C57100868D9D00602060008EC98C008CC7880079C4750070BE70006FC2
      720072C36D006FC16C00A5D1A300D0E8CF000000000000000000000000000000
      000049404700DDC6B300524D4900303030004643410000000000000000000000
      000000000000000000000000000000000000CB734800FEFEFE008A2E0700AD60
      3700F9F1EF0081350400B3653F00FEFEFE00FEFEFE0081350400D5AD8F00D5AD
      8F00FAE9E000FAE5D900E1B2940063493500000000004A4B4C00010607000013
      41000C369E000A37A500041E82006F367200C078B000C080C000D080C000D088
      C000D098D000D0A8D000CA65BD000000000072C36D00CAE8C700D6EBD5008CCD
      880072C36D006EBE750071C46C008AC7870081C47F0072C36D0072C36D0072C3
      6D0076C5720071C36D00A5D2A300D0E8CF000000000000000000000000000000
      000080776F0080726F003038300030303000B1A0920000000000000000000000
      000000000000000000000000000000000000CD7A5400FEFEFE00A36C54009759
      3900F3C7B6008135040081350400CFB9AC00FEFEFE00873B0700FCF3EE00D5AD
      8F00FBECE300FAE8DC00DFB59800634935005B5B5B0008060300101A2E001B52
      B9001F5BC2001F5BC000124CB80090499800B058A000B060B000B068B000A048
      9000D0A0D000C270B5009794A6000000000072C36D0072C36D00E4F1E30081C9
      7D0072C36D0071BC68006FC6700079C87C0072C36D0072C36D0072C36D0072C3
      6D006DB77E0072C66B00A4D1A300D0E8CF000000000000000000000000000000
      00000000000040404000404040003B4139000000000000000000000000000000
      000000000000000000000000000000000000D4896600FEFEFE00B27D6600B869
      4300AA745C0081350400B55A31006C3D2700FEFEFE009A410500FDF5F100D5AD
      8F00FBEDE500FAE9DE00DDB79C00634935002222220025221E001C2C45002470
      D8002979DF002978DE00226FD9002B529500AFB8C00063ADF000549AE2009346
      9500C265BB0034A0FF0041789F000000000072C36D0072C36D00F2F7F20072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0070BC720073C57000A8D2A600CCE5CB000000000000000000000000000000
      0000000000005048500040404000C1B3A4000000000000000000000000000000
      000000000000000000000000000000000000D4907600FEFEFE00D4907600B869
      4300DEBBAE00994B2000DCA38A0097593900E1D1C8009A410500FDF7F200D5AD
      8F00FBEFE800FBEBE000DCB9A000634935003E3E3E00343231002C313600216E
      CA003196FF00379DFF003095FF003468AB009BB3C00043AAFA0058B0F100927C
      C4004FB4FF0048B1FF003586C400CCCBC90072C36D0072C36D00F2F7F20072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D007FC07A007CC67B00ACD6AA00CCE6CB000000000000000000000000000000
      000000000000C6B6A8006C676200000000000000000000000000C38566009050
      300090583000904820008040200000000000E59D7F00F3E1DB00D99B8200C27C
      5E00F3E1DB00B8694300F3E1DB00A6694C009B897600B14A0800D5AD8F00D5AD
      8F00FCF0E800DBBBA400DCBAA300644A360095959500343434004D4B48003541
      5600234582001B53B7001A60BD004D647D000000000049B0F4004EB4F1004FB5
      F50051B9FF004FB9FF003389C300C6C9CA0072C36D008CCD8800DAEDD90072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0071C26F006EBF6C00A3D5A300CCE8CC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C385
      660090503000C07860000000000000000000E8A48800F0BDA900D99B8200CC80
      5F00E9DBD500CC805F00F3E1DB00A36C5400DCA38A00B14A0800FCF7F300FCF4
      EE00B6A19200644A3600644A3600644A36000000000063636300474748008381
      7D0099948E005E5C6200151319009F9A9600000000002E8BBC003592C6004EA1
      D20055A5DC003491CD0028749A000000000072C36D008CCD8800D8EDD70072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0071C5
      6F0071C06D0071C87300A6C09000C8D6BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0887000000000000000000000000000E5AA9200FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B14A0800FDF6F300FCF3
      EE00B8A39400D3C4B900644A36001818180000000000000000007C7C7C006B6B
      6B0075757500646462009494920000000000000000008ABAD20050A1CF0095CA
      EA0093C7E5003A8FBB008DB0C1000000000072C36D0099D39600CEE8CC0072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D006CB9
      6D0072C26D0071C47000A4CC9B00CBDEC4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5AA9200E5AA9200E8A48800E59D
      7F00D7967B00D4896600D07D5700C9765100C36D4100B6612900FDF6F200FCF3
      EC00BFAA9B00644A36001818180000000000000000000000000000000000D3D3
      D300C5C5C500E2E2E2000000000000000000000000000000000090BDD50079B3
      D10062A5C90096BED300000000000000000072C36D00A5D8A200BFE2BD0072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D006EBC
      6C0072C16E0071C16E0090CF9000DAECD9000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F903
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096918E0074706B00050100000E0B0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008AAD9C00689288000A130D0010231C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F905
      F600831883000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8F9100786A
      70004C4046001C11140009010200362E2F006B6B6B00A8A8A800090909000000
      000000000000000000000000000000000000000000000000000084B88B0062A7
      5600497B3500143A0F0009180700315A360075757500ABABAB00161616000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000171615006A3767006C316A00642563006020
      6000A04090009318870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938A8600281F1C00180C0C004F42
      4400756A6C00AFA8AB00E4DFE100ECE9EB00EDEFF000B3B5B6005E6061000000
      00000000000000000000000000000000000078B899001A573600112F15003783
      3D005F9D6300ADB3A700E4DFE100ECE9EB00EDEFF000B7B4B7006E6468000B0B
      0B00000000000000000000000000000000000000000080808000808080008080
      800080808000808080008080800080808000602060008038800090409000B048
      A000C058B000A050A000A03D9300000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000060A04005E5E58006A666100BAB4
      AF00EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB00868483000503
      0200BEBCBB00000000000000000000000000090D1D005D6D710061867F00B4BD
      B500EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB0087948E000D12
      1000BDBFBD000000000000000000000000000000000080808000FFFFFF00D8E9
      EC00D8E9EC0000FFFF00D8E9EC0009FEFD0070206000A0409000B050A000B050
      B000C068C000D080C000D0A0D000CE40C400000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF008080800000000000000000000000000000020000727670002B291F005D57
      4A00484033005A54470056564A0043473C00595043004B423800716A6100726C
      6500231F1A000000000000000000000000000B0A0F00717684001C5054003597
      90001791820030988D00476B75003C4C5C0023A39000218D740052A190005B9A
      8C001D4B400000000000000000000000000080808000FFFFFF00D8E9EC0000FF
      FF0000FFFF00D8E9EC0000FFFF00D8E9EC0070287000C078B000C080C000D080
      C000D098D000D0A8D000C274B300000000000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC00000000008080800000000000000000000F12100093908B0091877D00A694
      830098836E008A776200756653007F74600074634E0081725F006A5D4D005047
      3A00110B040083807C000000000000000000201C230088A9A8005FCBB40074CE
      B20048DFB80026EBC50012E0BD0024E2D4000FDEB9001EE9C70015CCAB001B9B
      87000B2A20007F979200000000000000000080808000FFFFFF0000FFFF00D8E9
      EC00D8E9EC0000FFFF00D8E9EC0000FFFF00B250A400B058A000B060B000B068
      B000D0A0D000C769B90000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      800000000000000000000000000000000000AFA9AA005B4F4B00B39D92009577
      640085634C00836149007E604700644A32006A5438006550350063523D005548
      38004A413700040100000000000000000000ABB3A9003A94670092C5A80033EA
      AA0004F9AD0003F5B10002F0B70003C89A0006CEAE0006C8AA000BC5A70010AD
      9000208C73000A110D000000000000000000FFFFFF0000FFFF00D8E9EC0000FF
      FF0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF0000000000D8E9EC00D6E4
      E800CB5CBE0000000000000000000000000080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC0000000000000000000000000008030400C6B9B1009A86
      7500886D58007F60490073533C006F503900654F360067513800705B45005040
      2F0070665C00120E0D00B5B8BD0000000000000000000D160E00BEC2B60051DC
      B20016F4B60002F3B20001E0A20001DA9C0006C8A40006CCA70008DCAF000BA8
      86003EB19A0018251E00BBB5BB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FF000000FFFF
      FF000300030000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC0000000000000000009E999A0043373100BAA5
      9600806550009071580077563C0075543A006E5436005E462A00735C42007966
      51003A2D1F005B5653000102060000000000000000009BA89A001C855C00A1C2
      A90005F7B60020F1B50000E4A70000E1A30003D5AD0003BC9D0007DEB6000EE7
      BE000B836A005676680014090B00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF000000000000000000000000000000000012080100BAAA
      9A00A9917B00886A4F0087654800775335006D4F2C00644623006C5031007159
      41006F5F4E00544C45009E9D9F000000000000000000000000000C261800A5C1
      AE006FD1AE000CF6BD0005F7BB0000DEA80001CDAA0002BD9E0001D0AA0005DD
      B30011D6B1003A867400A5A2A2000000000080808000FFFFFF0000FFFF00D8E9
      EC00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000ABA29E002F21
      1500B6A08E00AA8F75006A4A2D0088664800664622008D6D4A00684C2A006850
      340071604D00564B43000D0809000000000000000000000000009BBAA9000F67
      4C0096C4A9006AD4B10001CB9E0005F7BE0002BE9D000DF5C90001C8A80004CB
      A8000FDBB50029997900121D11000000000080808000FFFFFF00D8E9EC0000FF
      FF0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00000000008080
      8000000000000000000000000000000000000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000008080800000000000000000000000000000000000000000001208
      0100D6C6B9008C7664007E644C008C6E550062462700583C1E006E563A005C46
      2D0079695800554C4300C2BEBD00000000000000000000000000000000000C26
      1800D2CABC0029ECB60004F3BB0017F3BC0002BE9E0006A9870005D5B00005B9
      9B0013E7B8002E937F00C1C1BE000000000080808000FFFFFF0000FFFF00D8E9
      EC00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF0000000000808080008080
      8000000000000000000000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      000080808000808080000000000000000000000000000000000000000000B5B1
      B00009000000A89C92009B8A7D00725E4D008C7B6800645340006B5A47006D5D
      4C005A4E4200716962000400000000000000000000000000000000000000B3B7
      B3000818080087C5B0005CD7AE000BE1A80031E7C4000DC5A5000ED1B00011D4
      A90017B18A0052A08A000A100A00000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF008080800080808000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008D8C9000120D0E0009000000140A03000701000009000000160C05000B02
      00000B03000005000000B4B2B200000000000000000000000000000000000000
      00009E968E0018251600081808000D291B0009160C00081808000D2E1E00081B
      0D00081D11000A110900B4B6B300000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
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
      000000000000859EC000496DA1001A203B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008AA2C3004A6EA3007E8B9E001A203B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAF900F1F2
      F300FAFAFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096918E0074706B00050100000E0B
      0700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008DA4
      C6004A6EA3007D8A9D001A203B00CCD0D600000000000000000000000000AD7C
      7A00CA807E00CC847C0097857E00A5858000B48F8B00A6A19800A69F9600A297
      8F0084988B004B55490000000000000000000000000000000000DDE0E1002C3D
      47007992A000CAC8D000F7F7F800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000938A
      8600281F1C00180C0C004F424400756A6C00E4DFE100ECE9EB00EDEFF000B3B5
      B6005E6061000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D9DB3004A6E
      A3007E8B9E001A203B00CCD0D600000000000000000000000000FFF9EF00CAFF
      F900CAFCF200CCFFF900C8FFFC00D6FEFD00DEFCFD00CBFAF800AFFFF800CFFE
      FC009C949B004551550000000000000000000000000000000000F4FEFF006994
      A2009ABAC100708AA1006F6B7E00E3E1E3000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000060A
      04005E5E58006A666100BAB4AF00EBE7E200DADDDB00F1F6F400EDEAE600E2DF
      DB0086848300BEBCBB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEBF9700978557001A20
      3B001A203B00CBCFD50000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF0098929D004F505A000000000000000000000000000000000000000000BEE5
      F100D5EEF70076C0D6005F93B1004C79A000DAD6D800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      0000727670002B291F005D574A004840330056564A0043473C00595043004B42
      3800716A6100231F1A000000000000000000000000000000000000000000A2A1
      9A0068614100403B200038331D00534F3B0093918900A7905200B6A885006051
      2A00C6C8CC000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A69AA000614A52000000000000000000000000000000000000000000DCEE
      F30096CCDB008CC7DC0071CFFF0056C2F70048709500CFCACD00FBFBFB000000
      000000000000000000000000000000000000000000000000000000000000AFA9
      AA005B4F4B00B39D92009577640085634C007E604700644A32006A5438006550
      350063523D004A413700040100000000000000000000000000009D926600857A
      4600B6AC7B00C7BC8B00BAB28600948D6D003C371C00342F1C007A683500D3CF
      C400000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00AF9295004F504E0000000000000000000000000000000000000000000000
      0000B0D7E3007BCAF4008BD6FF007ACFFF0062CAFF003C668E00C0BBBF00FBFB
      FB00000000000000000000000000000000000000000000000000AF655400A79B
      000008030400C6B9B1009A867500886D580073533C006F503900654F36006751
      3800705B450070665C00120E0D00B5B8BD0000000000B0AFA500A4955300DED9
      C400D9D3B800D5CEAD00F1EFE700DAD3B500B5AD87003C371C00A3A19B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0070948E004D5A580000000000000000000000000000000000000000000000
      00000000000091D1F00084CCEF008DD7FF0079CDFD0060C9FF003A638B00CAC4
      C800FEFEFE0000000000000000000000000000000000726A6200A0860000C9CA
      00009E999A0043373100BAA596008065500077563C0075543A006E5436005E46
      2A00735C42003A2D1F005B5653000102060000000000A3965800D6CFAC00E5E2
      D400E0DCC900DDD8C200E3DFCC00F4F4F200E7E4D500958E6F00514D3A000000
      0000000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00A3979D00504A4F0000000000000000000000000000000000000000000000
      00000000000000000000AED6E20083CBEC008ED8FF007ACEFE005EC7FC003E71
      9C00DBD8DC000000000000000000000000004DA53800D9ED0000FFFF0000FBFA
      00009CC20000ABA29E002F211500B6A08E006A4A2D0088664800664622008D6D
      4A00684C2A0071604D00564B43000D08090000000000A0904900ECEADE00E9E8
      E000E5E3D700E1DECE00DFDAC700DFDBC500E7E4D400B8B0870038331D000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00969297003653500000000000000000000000000000000000000000000000
      0000000000000000000000000000B1D8E30083CBEC008CD7FF0076C6F30085A1
      B000514F5300D6D6D500FEFEFE000000000028940400FFFF0D00FFFF0300F0F8
      000083C300000073000012080100D6C6B9007E644C008C6E550062462700583C
      1E006E563A0079695800554C4300C2BEBD0000000000B5A45400F2F0EB00F0EF
      ED00E8E7E000E4E2D800E1DECE00DBD7C100D3CDAE00C7BC8D00403B20000000
      0000000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00919697005E56560000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AED6E2007FCBF000A5B0B700B4AF
      AB005354530030304B00CDCDD500000000002E970400FFFF5B00FFFF7E000073
      00000080000000790000B5B1B000090000009B8A7D00725E4D008C7B68006453
      40006B5A47005A4E4200716962000400000000000000C2B57400E9E5D300F6F6
      F600EFEEEC00E9E8E200E6E4D800E0DDCB00D9D3BA00B8AE8000655F3F000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A9292005B55500000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5D3E2008B9291009F9E
      93008E8EC5008888FF00474776000000000027940400FFFF3500FFFF1800FFFF
      00005BA4000047970000FFFF0000007B000000800000894B4300576466000000
      00000000000000000000000000000000000000000000C7C3B200D7CFA400FAFA
      FA00F7F7F700F1F1EE00EBEAE200E6E4D600E1DEC90082774500AAA9A3000000
      0000000000000000000000000000000000000000000000000000FFF5F200D3FC
      FE00D0F9FC00DBFFFF00DAF4FB00D6FAFF00D3F7FF00829CA30053595E005166
      6300A19E9600A46D6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C3CA006565
      AB00CDCDFF009696F6008282A7000000000095C8AB0065B20000F3F90000FFFF
      0000F0F900003296000018870000008000004D210000CEBAC000000000000000
      0000000000000000000000000000000000000000000000000000CEC38F00D8D0
      A500E9E5D300F4F2ED00F0EEE400D9D3B100A0935200A0976A00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFB00DAFF
      FF00C4F5F300C7FBF400D8FBFE00D9FFFF00D1FCFF0081949900F8FFFF00F6FC
      F700978B8100C57E7A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      FD008A8AEE009393F100E0E0EE0000000000000000000E80130000740000FFFF
      0000A7D3000003790000007400000081000063381C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C3
      B200C2B47300AE9E500098894500A2955700B4B3A90000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F4EB00D1FF
      FB00C9FFF900C8FFF900C5FFF700BEFFFE00C5FEF50093A09E00D5FFF7009194
      8B00CDACA300C693890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FE00FAFAFE0000000000000000000000000000000000000000000079
      00004CA600005DAE000066B4000092C19F000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000806850008060
      5000806050007060500070584000705840007058400070504000705040006048
      3000604830006048300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001414FC00FFFFFF00000000009090900090909000909090009090
      9000909090000000000090909000909090009090900090909000000000009090
      9000909090009090900090909000909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A48B8200E0D0C000B0A0
      9000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A0900060483000000000000000000000000000000000001414
      FC00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700D3D3D300D3D3D300D3D3
      D300E7E7E7000000000090909000D3D3D300D3D3D300E7E7E700000000009090
      9000D3D3D300D3D3D300D3D3D300909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B39B9100FFE8E000FFF8
      F000FFF0E000FFE8E000F0D8D000F0D0B000F0D0B000F0C0A00000A0000000A0
      000000A0000070584000604830008D70570000000000000000001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000000000
      00001414FC00FFFFFF000000000000000000FF787800FF4D4D00FF4D4D00FF4D
      4D00FF787800FF787800FF7878004D4D4D004D4D4D0090909000909090009090
      90000000000000000000D3D3D300909090000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0E0E000F0D8C00000FF100000FF
      B00000A0000080685000705040006048300000000000000000001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000001414
      FC00FFFFFF0000000000000000000000000090909000FF4D4D00FF4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4DFF004D4DFF004D4DFF004D4D4D000000
      00000000000000000000D3D3D30090909000000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF0080808000000000000000000000000000B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0E0E000F0D8C00000FF100000FF
      B00000A000008068500070504000604830000000000000000000000000001414
      FC001414FC001414FC00FFFFFF000000000000000000000000001414FC001414
      FC00FFFFFF00000000000000000000000000E7E7E7004D4D4D004D4D4D00D3D3
      D300000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D300909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC0000000000808080000000000000000000B0908000F0E8E000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF8F000F0E8E00000FF100000FF
      100000A000009070600070605000604830000000000000000000000000000000
      00001414FC001414FC001414FC00FFFFFF00000000001414FC001414FC00FFFF
      FF0000000000000000000000000000000000E7E7E700000000004D4D4D000000
      00004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      00000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      800000000000000000000000000000000000B0988000D0C0B000D0B8B000C0B0
      A000B0A09000B0988000A0888000908070009080700090706000806860008060
      5000705850009080700080686000705840000000000000000000000000000000
      0000000000001414FC001414FC001414FC001414FC001414FC00FFFFFF000000
      000000000000000000000000000000000000E7E7E700000000004D4D4D00D3D3
      D30000000000D3D3D300000000004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D3009090900080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC000000000000000000C0A09000FFF8F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF0F000F0F0
      F000F0E8E000A088800090786000806050000000000000000000000000000000
      000000000000000000001414FC001414FC001414FC00FFFFFF00000000000000
      000000000000000000000000000000000000E7E7E7004D4D4D004D4D4D000000
      0000D3D3D30000000000D3D3D3004D4D4D00D3D3D300D3D3D3004D4D4D000000
      00000000000000000000D3D3D3009090900080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC0000000000DFC5AE00B9A08900D0B0A000C0A8
      A000D0B0A000C0A09000B0908000A0807000A080700090706000806050007060
      500080706000B0A09000A0887000806050000000000000000000000000000000
      0000000000001414FC001414FC001414FC001414FC001414FC00FFFFFF000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D30000000000D3D3D3004D4D4D00D3D3D3004D4D4D000000
      00000000000000000000D3D3D300909090008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF00000000000000000000000000D9C3AF00C0B0A000E0C8
      C000FFFFFF00FFF8FF00FFF8FF00FFF0F000FFF0F000F0F0E000F0E0E000C0A8
      A00080605000A0908000C0B0A000806050000000000000000000000000000000
      00001414FC001414FC001414FC00FFFFFF00000000001414FC00FFFFFF000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D000000
      0000D3D3D30000000000A64D4D004D4D4D00D3D3D300D3D3D300D3D3D3004D4D
      4D000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000C0B0
      A000FFFFFF00F0E8E000D0C8C000D0C8C000D0C8C000D0B8B000D0C0B000E0D0
      D0008068600080605000B0989000B0A0900000000000000000001414FC001414
      FC001414FC001414FC00FFFFFF000000000000000000000000001414FC001414
      FC00FFFFFF00000000000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D300000000004D4D4D004D4D4D00A64D4D004D4D4D000000
      00000000000000000000FBFBFB00909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF0000000000808080000000000000000000000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0
      D000D0B8B00080605000C5AA970000000000000000001414FC001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000001414
      FC001414FC00FFFFFF00000000000000000090909000909090004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00D3D3D3004D4D4D00E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      000080808000808080000000000000000000000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0
      D000D0B8B00080605000C5AA970000000000000000001414FC001414FC00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001414FC001414FC00FFFFFF00000000000000000090909000909090004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00909090009090
      900000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000F6DF
      CC00D0B8B000FFFFFF00F0F0F000D0C8C000D0C8C000D0C8C000D0B8B000C0B0
      B000E0D8D0008070600087675700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909090009090
      900090909000909090004D4D4D004D4D4D004D4D4D0090909000909090000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9D1C300E1D1D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      FF00F0E8E000D0B8B00080605000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009090900090909000909090009090900090909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9D2C400D0C0B000D0C0B000D0C0B000D0C0B000D0C0B000D0C0
      B000D0C0B000D0C0B000D0C0B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096918E0074706B00050100000E0B0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00000000000000
      0000000000000000000000000000000000000000000000000000000000000199
      0100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8F9100786A
      70004C4046001C11140009010200362E2F006B6B6B00A8A8A800090909000000
      00000000000000000000000000000000000000000000000000006A6A6A000000
      0000676767006A6A6A0067676700696969006A6A6A00676767006A6A6A000000
      0000676767006A6A6A005C5C5C00000000004D4D4D004D4D4D004D4D4D000000
      00004D4D4D00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000199
      01000000000051B448000199010001990100019901000199010071B651000000
      000000000000000000000000000000000000938A8600281F1C00180C0C004F42
      4400756A6C00AFA8AB00E4DFE100ECE9EB00EDEFF000B3B5B6005E6061000000
      0000FC05FD00B262D9006D8DB9002937570000000000B6B6B600FFFFFF00F1F1
      F100E6E6E600FFFFFF00E2E2E200F9F9F900FFFFFF00DDDDDD00FFFFFF00F0F0
      F000E7E7E700FFFFFF008484840000000000A64D4D00A64D4D004D4D4D004D4D
      4D00DEEDEF00DEEDEF00DEEDEF004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D00000000000000000000000000000000000199
      01000199010001990100019901000199010001990100019901000199010071B6
      510000000000000000000000000000000000060A04005E5E58006A666100BAB4
      AF00EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB00868483000604
      03009BABC2006787B40050607D005B5F710000000000B3B3B300EEEEEE00E3E3
      E300DDDDDD00EDEDED00DADADA00E7E7E700ECECEC00D8D8D800EDEDED00E2E2
      E200DDDDDD00F1F1F1007D7D7D0000000000A64D4D00A64D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF004D4D4D00DEEDEF004D4D4D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000199
      010001990100019901000199010031A7270082BF670084C26D00119E0D000199
      01000000000000000000000000000000000000020000727670002B291F005D57
      4A00484033005A54470056564A0043473C00595043004B423800716A6100818E
      A0006A8BB90051627F00515467000000000000000000B2B2B200E3E3E300DCDC
      DC00D9D9D900E3E3E300D7D7D700DFDFDF00E2E2E200D6D6D600E3E3E300DCDC
      DC00D9D9D900E9E9E9007A7A7A0000000000A64D4D00A64D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF00DEEDEF004D4D4D00FFFFFF004D4DA600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000001EA5
      1E000199010001990100019901008FC4740000000000000000000000000046AD
      380051AF3C000000000000000000000000000F12100093908B0091877D00A694
      830098836E008A776200756653007F74600074634E0081725F00B0A18200817C
      6C0017264A0052576A00000000000000000000000000B6B6B600FFFFFF00F2F2
      F200E6E6E600FFFFFF00E1E1E100FAFAFA00FFFFFF00E7E7E000FFFFFF00FDFD
      F500EDEDE900FFFFFF008484840000000000FF4D4D00FF4D4D004D4D4D00A6A6
      A600A6A6A600A6A6A600A6A6A600FFFFFF004D4DA6004D4DA6004D4DA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D00000000000000000000000000089C
      0800019901000199010001990100019901000199010000000000000000000000
      00003CAB3100000000000000000000000000AFA9AA005B4F4B00B39D92009577
      64008A6D54008E867500594F30003E361D004D463000807A6D00B09D68009B89
      5D006157460081838900000000000000000000000000B1B1B100E0E0E000DADA
      DA00D7D7D700DFDFDF00D6D6D600DDDDDD00D8D8DC007C7CB7007C7CBE007272
      B700A8A8C800F0F0EA007878780000000000A64D4D00A64D4D00A6A6A6000000
      000000000000A6A6A600FFFFFF004D4DA6004D4DA600FFFFFF004D4DA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008030400C6B9B1009E8D
      7D0095895B0099906200BAB18200BBB28800A0997800555034003B3317009283
      5900B6B1A70019151400B5B8BD000000000000000000B4B4B400F4F4F400E7E7
      E700DFDFDF00F4F4F400DCDCDC00EFEFED00E5E5EE005E5EB000D3D3E9009191
      C9008A8AC300FAFAF8007F7F7F00000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      A600FFFFFF00FFFFFF00FFFFFF004D4D4D00000000000000000081C878000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E999A0043373100ACA6
      8C00B7AB7600E0DCC900D8D1B100E8E4D100EAE6D500C2BA990055503700938D
      81003A2D1F005B565300010206000000000000000000B5B5B500FDFDFD00ECEC
      EC00E2E2E200FDFDFD00DEDEDE00F5F5F300ECECF6006666B400F5F5FA00A8A8
      D4008E8EC600FEFEFD0081818100000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4DA600FFFFFF00FFFFFF004D4D4D00000000000000000081C97A000000
      0000000000000000000000000000019901000199010001990100019901000199
      010000000000000000000000000000000000000000000000000012080100A99A
      5E00E1DDC600E5E3D600E0DCC900DFDAC400ECEAE000EFEDE200A19A7B004C44
      30006F5F4E00544C45009E9D9F000000000000000000B1B1B100DCDCDC00D8D8
      D800D6D6D600DBDBDB00D5D5D500DBDBDA00D3D3D8006666AF006C6CB6005D5D
      AE009999C100EEEEE70077777700000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4DA600FFFFFF004D4D4D00000000000000000000000000119F
      10000000000000000000000000000000000031A92B0001990100019901000199
      0100000000000000000000000000000000000000000000000000ABA29E00AB9C
      5A00F1F0EB00EAE9E200E4E2D700E0DDCC00DCD7C100E0DCC400B9B088004038
      1E0071604D00564B43000D0809000000000000000000B6B7B700FFFFFF00F3FA
      FA00E8EFEF00FFFFFF00E4EBEB00FBFFFF00FFFFFF00E2E2E000FFFFFF00F5F5
      F300EBEBEA00FFFFFF0084848400000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000000041B2
      3F000199010081C77600000000000000000051B4480001990100019901000199
      010000000000000000000000000000000000000000000000000000000000BBAD
      6B00F2EFEA00F1F1F000E9E7E200E4E3D700DFDBC900D7D1B500BCB286005249
      2A0079695800554C4300C2BEBD000000000000000000B1ADAD00E0C0C000D4B5
      B500CEAEAE00E0C0C000CBACAC00D9B9B900DEDBDB00C8C9C900E0E0E000D3D3
      D300CECECE00E2E2E20079797900000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      0000019901000199010001990100019901000199010001990100019901000199
      010000000000000000000000000000000000000000000000000000000000C7C0
      9E00E4E0C500FCFDFF00F2F3F200EBEBE400E7E5D800E3E0CD00999063008F8A
      7A005A4E420071696200040000000000000000000000A99D9D009E343400A037
      3700A13838009E353500A13838009F3636009E949400A1A4A4009E9E9E00A0A0
      A000A1A1A100A6A6A60065656500000000000000000000000000000000000000
      00000000000000000000A6A6A600A6A6A6004D4D4D00FFFFFF00D3D3D300D3D3
      D3004D4D4D00A6A6A600A6A6A600000000000000000000000000000000000000
      000000000000019901000199010001990100019901000199010021A41D000199
      0100000000000000000000000000000000000000000000000000000000000000
      0000D1C79600E5E0C500F2F0EA00F4F3EF00E5E1CB00B6AC770090875D002A23
      20000B03000005000000B4B2B2000000000000000000A6A1A100A6818100A682
      8200A6828200A6828200A6828200A6828200A6A2A200A6A7A700A6A6A600A6A6
      A600A6A6A600ADADAD0067676700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600A6A6A600A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000071C46E0041B13E0041B13D008FCC8300000000000199
      0100000000000000000000000000000000000000000000000000000000000000
      000000000000CAB8A400C4AA7500AD956200A8916300B1A09100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC008F0FE000FFFFC0000E0FE000FFFF
      C0009F1FE000804FC000C01FE0000000C000C01FE00000008000E63F00008000
      0000E43F0000C0000000F07F000080010000F07F000000010000F8FF00000001
      0000F8FF000000000000F9C1000000800000FFE3000080810000FFF70000C181
      0000FFFF0001E3C30000FFFFE003FFFFFFFFFFFFFFEFFFFFFC3FFC3FFFE7FFFF
      C01FC01FC003E001000F000F8001C001000700078000C0010007000700018001
      00030003000380010003000300070001800180010007000080018001000F0001
      C001C001000F8001C001C001000F8001E001E001000F8003E001E001807FC01F
      F001F001C6FFE1BFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFF0FFFFC3FFFF0F
      FFE0E003C1FFE007FFC1C003C0FFE003FF83C003E03FE003E007C003E01FE001
      C00FC003F00FC000801FC003F8078000801FC003FC070000801FC003FE010000
      801FC003FF010000801FC003FF81001F801FC003FFC1003FC03FC003FFE1807F
      E07FC003FFF3E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFF90420FFFF8001
      E7FF0420E0018000C3F3000CC0010000C3E7001CC0010000E1C7080480010000
      F08F507C80010000F81F4A0400010000FC3F141C00000000F81F0A1C00018000
      F09F140C8001E000C1C70A1C8001E00183E300018003E0018FF1800FC01FE001
      FFFFC01FE1BFF001FFFFF83FFFFFF801FFFFFFFFFFFFFFFFFC3FFFFFF83FEFFF
      C01FD011101FE81F000080010001E00F000080010000E00F000180010000E0E7
      000380010000E077000380011800FFFF80018001F800DFFF80018001F800DE0F
      C0018001F800EF0FC0018001F800E30FE0018001F800F00FE0018001FC01F80F
      F0018001FF8FFC2FF83FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object Adjustments_ImageList: TImageList
    Left = 507
    Top = 523
    Bitmap = {
      494C010114001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0409000CC90C00097C298006CBF680069BD660070C0
      6C0073C16F0071C16E0071C16E006ABE670000000000CFBAAD00CCB8AA00CCB8
      AA0000000000000000000000000000000000CCB8AA00CCB7AA00CCB7AA00CCB7
      AA00000000000000000000000000000000000000000000000000000000006349
      3500634935006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B048A000B058
      A000B060B000B068B000A0489000D0A0D000C078B00077B2750071C16E0071C1
      6E0071C16E0071C16E0071C16E006BBE6800DAC6B4006C645F003B3238003B3A
      3800000000000000000000000000A39788002020200020282000202820002C2B
      290000000000000000000000000000000000000000000000000000000000B6A1
      9200F9E1D100DEB79D00DFB59800E1B39400E1B09000E3AE8B00E4AC8700E5AA
      8300E6A67F00E7A47A00EAA27700634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070287000C078
      B000C080C000D080C000D088C000D098D000D0A8D000B97EAB0073BF700071C1
      6E0071C16E0071C16E0070C16D006CBF690000000000FD03FD003B3938000000
      00000000000000000000000000000000000084757100202020002C2A29000000
      000000000000000000000000000000000000000000000000000000000000B8A3
      9400FAE5D900FAE6D900FAE5D800F9E4D700FAE3D500FAE1D200F8DFCF00F7DC
      CB00F8DAC800F7D9C600E8A37B006349350000000000B7694C00B74F2F00C254
      3800C8594100B2503400A5583E009E6F5E00B0ACA80000000000F604FB00A113
      A10000000000000000000000000000000000000000000000000070206000A040
      9000B050A000B050B000C058B000C068C000D080C000D0A0D000A8749A0071C1
      6E0071C16E0072C16E0070C16D006CBF690000000000000000006B695E005F59
      5400C8B6A500BBAB9B00BFAB9F00CBB6A8003028300020282000605E53000000
      000000000000000000000000000000000000000000000000000000000000BAA5
      9500FAEBE100FBEBE100D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD8F00D5AD
      8F00F7DDCD00F7DAC900E6A6800063493500D5957B00D2441D00F55E4600FF6F
      5C00FF705B00DE7D5000E76C4600F3563F00AA45230044843C0031752C006020
      6000663466003A823A00187F18005D835D000000000000000000602060008038
      800090409000B048A000B050A000C058B000A050A0009048800083A8810074C4
      71007FC87C008ACB880093CF9000A1D5A0000000000000000000D7C2B0003038
      3000534E4B00534E4B00534E4B003B3938003030300020282000D5BFAE000000
      000000000000000000000000000000000000000000000000000000000000BDA7
      9800FCEFE700FCEFE800FCEFE700FBEEE600FBECE400FAEAE000FAE7DB00F9E4
      D600F9E1D200F8DDCD00E5AB840063493500E4BEAD00E0543700FF736000FF87
      6D00E37A5000F6D69F00E6996E007D4071006C316A0064256300602060006020
      6000A04090006D4F63002BB62B00378537000000000086CB810061226100642B
      6400662E66006832680060206000A040900070206000E5C8E400EBF3EB00F0F5
      F000E9F2E900E1F0E000E3F0E300E4F1E4000000000000000000000000005F54
      5700C9B7A60000000000000000003B393800303030005E585400000000000000
      000000000000000000000000000000000000B6612900B14A0800B14A0800B14A
      08009A4105009A4105009A410500873B07008135040077310000D5AD8F00D5AD
      8F00FAE4D600F9E0D100E3AD89006349350000000000E3917900FF785A00F480
      5700E69A6C00FFD5A200F19D6800622160008038800090409000B048A000B050
      A000C058B000A050A00094478600809A800075C47000E0EFE000EAF2EA00DEEC
      DF00CCE8CB00D2B6D300602060006B376B00B6D5B500A1D89D0099CF97008BC7
      890082C280007BC67900A7D7A700D0E9D000000000000000000000000000AB98
      90005F54570000000000BCAC9C003030300030303000BCAA9C00000000000000
      000000000000000000000000000000000000B7683900FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0077310000FBEEE700FBEB
      E100FAE7DB00F9E3D500E2B08E006349350000000000000000009F5E42006527
      2800332E7C003F387F009C51520076275C00A0409000B050A000B050B000C058
      B000C068C000D080C000D0A0D000CC43C10072C36D0076C57100D0E8D000A8CF
      AB0076C57100868D9D00602060008EC98C008CC7880079C4750070BE70006FC2
      720072C36D006FC16C00A5D1A300D0E8CF000000000000000000000000000000
      000049404700DDC6B300524D4900303030004643410000000000000000000000
      000000000000000000000000000000000000CB734800FEFEFE008A2E0700AD60
      3700F9F1EF0081350400B3653F00FEFEFE00FEFEFE0081350400D5AD8F00D5AD
      8F00FAE9E000FAE5D900E1B2940063493500000000004A4B4C00010607000013
      41000C369E000A37A500041E82006F367200C078B000C080C000D080C000D088
      C000D098D000D0A8D000CA65BD000000000072C36D00CAE8C700D6EBD5008CCD
      880072C36D006EBE750071C46C008AC7870081C47F0072C36D0072C36D0072C3
      6D0076C5720071C36D00A5D2A300D0E8CF000000000000000000000000000000
      000080776F0080726F003038300030303000B1A0920000000000000000000000
      000000000000000000000000000000000000CD7A5400FEFEFE00A36C54009759
      3900F3C7B6008135040081350400CFB9AC00FEFEFE00873B0700FCF3EE00D5AD
      8F00FBECE300FAE8DC00DFB59800634935005B5B5B0008060300101A2E001B52
      B9001F5BC2001F5BC000124CB80090499800B058A000B060B000B068B000A048
      9000D0A0D000C270B5009794A6000000000072C36D0072C36D00E4F1E30081C9
      7D0072C36D0071BC68006FC6700079C87C0072C36D0072C36D0072C36D0072C3
      6D006DB77E0072C66B00A4D1A300D0E8CF000000000000000000000000000000
      00000000000040404000404040003B4139000000000000000000000000000000
      000000000000000000000000000000000000D4896600FEFEFE00B27D6600B869
      4300AA745C0081350400B55A31006C3D2700FEFEFE009A410500FDF5F100D5AD
      8F00FBEDE500FAE9DE00DDB79C00634935002222220025221E001C2C45002470
      D8002979DF002978DE00226FD9002B529500AFB8C00063ADF000549AE2009346
      9500C265BB0034A0FF0041789F000000000072C36D0072C36D00F2F7F20072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0070BC720073C57000A8D2A600CCE5CB000000000000000000000000000000
      0000000000005048500040404000C1B3A4000000000000000000000000000000
      000000000000000000000000000000000000D4907600FEFEFE00D4907600B869
      4300DEBBAE00994B2000DCA38A0097593900E1D1C8009A410500FDF7F200D5AD
      8F00FBEFE800FBEBE000DCB9A000634935003E3E3E00343231002C313600216E
      CA003196FF00379DFF003095FF003468AB009BB3C00043AAFA0058B0F100927C
      C4004FB4FF0048B1FF003586C400CCCBC90072C36D0072C36D00F2F7F20072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D007FC07A007CC67B00ACD6AA00CCE6CB000000000000000000000000000000
      000000000000C6B6A8006C676200000000000000000000000000C38566009050
      300090583000904820008040200000000000E59D7F00F3E1DB00D99B8200C27C
      5E00F3E1DB00B8694300F3E1DB00A6694C009B897600B14A0800D5AD8F00D5AD
      8F00FCF0E800DBBBA400DCBAA300644A360095959500343434004D4B48003541
      5600234582001B53B7001A60BD004D647D000000000049B0F4004EB4F1004FB5
      F50051B9FF004FB9FF003389C300C6C9CA0072C36D008CCD8800DAEDD90072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C3
      6D0071C26F006EBF6C00A3D5A300CCE8CC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C385
      660090503000C07860000000000000000000E8A48800F0BDA900D99B8200CC80
      5F00E9DBD500CC805F00F3E1DB00A36C5400DCA38A00B14A0800FCF7F300FCF4
      EE00B6A19200644A3600644A3600644A36000000000063636300474748008381
      7D0099948E005E5C6200151319009F9A9600000000002E8BBC003592C6004EA1
      D20055A5DC003491CD0028749A000000000072C36D008CCD8800D8EDD70072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0071C5
      6F0071C06D0071C87300A6C09000C8D6BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0887000000000000000000000000000E5AA9200FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B14A0800FDF6F300FCF3
      EE00B8A39400D3C4B900644A36001818180000000000000000007C7C7C006B6B
      6B0075757500646462009494920000000000000000008ABAD20050A1CF0095CA
      EA0093C7E5003A8FBB008DB0C1000000000072C36D0099D39600CEE8CC0072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D006CB9
      6D0072C26D0071C47000A4CC9B00CBDEC4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5AA9200E5AA9200E8A48800E59D
      7F00D7967B00D4896600D07D5700C9765100C36D4100B6612900FDF6F200FCF3
      EC00BFAA9B00644A36001818180000000000000000000000000000000000D3D3
      D300C5C5C500E2E2E2000000000000000000000000000000000090BDD50079B3
      D10062A5C90096BED300000000000000000072C36D00A5D8A200BFE2BD0072C3
      6D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D0072C36D006EBC
      6C0072C16E0071C16E0090CF9000DAECD9000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F903
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096918E0074706B00050100000E0B0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008AAD9C00689288000A130D0010231C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F905
      F600831883000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8F9100786A
      70004C4046001C11140009010200362E2F006B6B6B00A8A8A800090909000000
      000000000000000000000000000000000000000000000000000084B88B0062A7
      5600497B3500143A0F0009180700315A360075757500ABABAB00161616000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000171615006A3767006C316A00642563006020
      6000A04090009318870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938A8600281F1C00180C0C004F42
      4400756A6C00AFA8AB00E4DFE100ECE9EB00EDEFF000B3B5B6005E6061000000
      00000000000000000000000000000000000078B899001A573600112F15003783
      3D005F9D6300ADB3A700E4DFE100ECE9EB00EDEFF000B7B4B7006E6468000B0B
      0B00000000000000000000000000000000000000000080808000808080008080
      800080808000808080008080800080808000602060008038800090409000B048
      A000C058B000A050A000A03D9300000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000060A04005E5E58006A666100BAB4
      AF00EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB00868483000503
      0200BEBCBB00000000000000000000000000090D1D005D6D710061867F00B4BD
      B500EBE7E200F0EDE900DADDDB00F1F6F400EDEAE600E2DFDB0087948E000D12
      1000BDBFBD000000000000000000000000000000000080808000FFFFFF00D8E9
      EC00D8E9EC0000FFFF00D8E9EC0009FEFD0070206000A0409000B050A000B050
      B000C068C000D080C000D0A0D000CE40C400000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF008080800000000000000000000000000000020000727670002B291F005D57
      4A00484033005A54470056564A0043473C00595043004B423800716A6100726C
      6500231F1A000000000000000000000000000B0A0F00717684001C5054003597
      90001791820030988D00476B75003C4C5C0023A39000218D740052A190005B9A
      8C001D4B400000000000000000000000000080808000FFFFFF00D8E9EC0000FF
      FF0000FFFF00D8E9EC0000FFFF00D8E9EC0070287000C078B000C080C000D080
      C000D098D000D0A8D000C274B300000000000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC00000000008080800000000000000000000F12100093908B0091877D00A694
      830098836E008A776200756653007F74600074634E0081725F006A5D4D005047
      3A00110B040083807C000000000000000000201C230088A9A8005FCBB40074CE
      B20048DFB80026EBC50012E0BD0024E2D4000FDEB9001EE9C70015CCAB001B9B
      87000B2A20007F979200000000000000000080808000FFFFFF0000FFFF00D8E9
      EC00D8E9EC0000FFFF00D8E9EC0000FFFF00B250A400B058A000B060B000B068
      B000D0A0D000C769B90000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      800000000000000000000000000000000000AFA9AA005B4F4B00B39D92009577
      640085634C00836149007E604700644A32006A5438006550350063523D005548
      38004A413700040100000000000000000000ABB3A9003A94670092C5A80033EA
      AA0004F9AD0003F5B10002F0B70003C89A0006CEAE0006C8AA000BC5A70010AD
      9000208C73000A110D000000000000000000FFFFFF0000FFFF00D8E9EC0000FF
      FF0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF0000000000D8E9EC00D6E4
      E800CB5CBE0000000000000000000000000080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC0000000000000000000000000008030400C6B9B1009A86
      7500886D58007F60490073533C006F503900654F360067513800705B45005040
      2F0070665C00120E0D00B5B8BD0000000000000000000D160E00BEC2B60051DC
      B20016F4B60002F3B20001E0A20001DA9C0006C8A40006CCA70008DCAF000BA8
      86003EB19A0018251E00BBB5BB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FF000000FFFF
      FF000300030000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC0000000000000000009E999A0043373100BAA5
      9600806550009071580077563C0075543A006E5436005E462A00735C42007966
      51003A2D1F005B5653000102060000000000000000009BA89A001C855C00A1C2
      A90005F7B60020F1B50000E4A70000E1A30003D5AD0003BC9D0007DEB6000EE7
      BE000B836A005676680014090B00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF000000000000000000000000000000000012080100BAAA
      9A00A9917B00886A4F0087654800775335006D4F2C00644623006C5031007159
      41006F5F4E00544C45009E9D9F000000000000000000000000000C261800A5C1
      AE006FD1AE000CF6BD0005F7BB0000DEA80001CDAA0002BD9E0001D0AA0005DD
      B30011D6B1003A867400A5A2A2000000000080808000FFFFFF0000FFFF00D8E9
      EC00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000ABA29E002F21
      1500B6A08E00AA8F75006A4A2D0088664800664622008D6D4A00684C2A006850
      340071604D00564B43000D0809000000000000000000000000009BBAA9000F67
      4C0096C4A9006AD4B10001CB9E0005F7BE0002BE9D000DF5C90001C8A80004CB
      A8000FDBB50029997900121D11000000000080808000FFFFFF00D8E9EC0000FF
      FF0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00000000008080
      8000000000000000000000000000000000000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000008080800000000000000000000000000000000000000000001208
      0100D6C6B9008C7664007E644C008C6E550062462700583C1E006E563A005C46
      2D0079695800554C4300C2BEBD00000000000000000000000000000000000C26
      1800D2CABC0029ECB60004F3BB0017F3BC0002BE9E0006A9870005D5B00005B9
      9B0013E7B8002E937F00C1C1BE000000000080808000FFFFFF0000FFFF00D8E9
      EC00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF0000000000808080008080
      8000000000000000000000000000000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      000080808000808080000000000000000000000000000000000000000000B5B1
      B00009000000A89C92009B8A7D00725E4D008C7B6800645340006B5A47006D5D
      4C005A4E4200716962000400000000000000000000000000000000000000B3B7
      B3000818080087C5B0005CD7AE000BE1A80031E7C4000DC5A5000ED1B00011D4
      A90017B18A0052A08A000A100A00000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF008080800080808000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008D8C9000120D0E0009000000140A03000701000009000000160C05000B02
      00000B03000005000000B4B2B200000000000000000000000000000000000000
      00009E968E0018251600081808000D291B0009160C00081808000D2E1E00081B
      0D00081D11000A110900B4B6B300000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
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
      000000000000859EC000496DA1001A203B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008AA2C3004A6EA3007E8B9E001A203B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAF900F1F2
      F300FAFAFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096918E0074706B00050100000E0B
      0700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008DA4
      C6004A6EA3007D8A9D001A203B00CCD0D600000000000000000000000000AD7C
      7A00CA807E00CC847C0097857E00A5858000B48F8B00A6A19800A69F9600A297
      8F0084988B004B55490000000000000000000000000000000000DDE0E1002C3D
      47007992A000CAC8D000F7F7F800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000938A
      8600281F1C00180C0C004F424400756A6C00E4DFE100ECE9EB00EDEFF000B3B5
      B6005E6061000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D9DB3004A6E
      A3007E8B9E001A203B00CCD0D600000000000000000000000000FFF9EF00CAFF
      F900CAFCF200CCFFF900C8FFFC00D6FEFD00DEFCFD00CBFAF800AFFFF800CFFE
      FC009C949B004551550000000000000000000000000000000000F4FEFF006994
      A2009ABAC100708AA1006F6B7E00E3E1E3000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000060A
      04005E5E58006A666100BAB4AF00EBE7E200DADDDB00F1F6F400EDEAE600E2DF
      DB0086848300BEBCBB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEBF9700978557001A20
      3B001A203B00CBCFD50000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF0098929D004F505A000000000000000000000000000000000000000000BEE5
      F100D5EEF70076C0D6005F93B1004C79A000DAD6D800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      0000727670002B291F005D574A004840330056564A0043473C00595043004B42
      3800716A6100231F1A000000000000000000000000000000000000000000A2A1
      9A0068614100403B200038331D00534F3B0093918900A7905200B6A885006051
      2A00C6C8CC000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A69AA000614A52000000000000000000000000000000000000000000DCEE
      F30096CCDB008CC7DC0071CFFF0056C2F70048709500CFCACD00FBFBFB000000
      000000000000000000000000000000000000000000000000000000000000AFA9
      AA005B4F4B00B39D92009577640085634C007E604700644A32006A5438006550
      350063523D004A413700040100000000000000000000000000009D926600857A
      4600B6AC7B00C7BC8B00BAB28600948D6D003C371C00342F1C007A683500D3CF
      C400000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00AF9295004F504E0000000000000000000000000000000000000000000000
      0000B0D7E3007BCAF4008BD6FF007ACFFF0062CAFF003C668E00C0BBBF00FBFB
      FB00000000000000000000000000000000000000000000000000AF655400A79B
      000008030400C6B9B1009A867500886D580073533C006F503900654F36006751
      3800705B450070665C00120E0D00B5B8BD0000000000B0AFA500A4955300DED9
      C400D9D3B800D5CEAD00F1EFE700DAD3B500B5AD87003C371C00A3A19B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0070948E004D5A580000000000000000000000000000000000000000000000
      00000000000091D1F00084CCEF008DD7FF0079CDFD0060C9FF003A638B00CAC4
      C800FEFEFE0000000000000000000000000000000000726A6200A0860000C9CA
      00009E999A0043373100BAA596008065500077563C0075543A006E5436005E46
      2A00735C42003A2D1F005B5653000102060000000000A3965800D6CFAC00E5E2
      D400E0DCC900DDD8C200E3DFCC00F4F4F200E7E4D500958E6F00514D3A000000
      0000000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00A3979D00504A4F0000000000000000000000000000000000000000000000
      00000000000000000000AED6E20083CBEC008ED8FF007ACEFE005EC7FC003E71
      9C00DBD8DC000000000000000000000000004DA53800D9ED0000FFFF0000FBFA
      00009CC20000ABA29E002F211500B6A08E006A4A2D0088664800664622008D6D
      4A00684C2A0071604D00564B43000D08090000000000A0904900ECEADE00E9E8
      E000E5E3D700E1DECE00DFDAC700DFDBC500E7E4D400B8B0870038331D000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00969297003653500000000000000000000000000000000000000000000000
      0000000000000000000000000000B1D8E30083CBEC008CD7FF0076C6F30085A1
      B000514F5300D6D6D500FEFEFE000000000028940400FFFF0D00FFFF0300F0F8
      000083C300000073000012080100D6C6B9007E644C008C6E550062462700583C
      1E006E563A0079695800554C4300C2BEBD0000000000B5A45400F2F0EB00F0EF
      ED00E8E7E000E4E2D800E1DECE00DBD7C100D3CDAE00C7BC8D00403B20000000
      0000000000000000000000000000000000000000000000000000F3E6E600B265
      65009A353500A3474700A3474700A3474700A346460099333300C4898900FFFF
      FF00919697005E56560000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AED6E2007FCBF000A5B0B700B4AF
      AB005354530030304B00CDCDD500000000002E970400FFFF5B00FFFF7E000073
      00000080000000790000B5B1B000090000009B8A7D00725E4D008C7B68006453
      40006B5A47005A4E4200716962000400000000000000C2B57400E9E5D300F6F6
      F600EFEEEC00E9E8E200E6E4D800E0DDCB00D9D3BA00B8AE8000655F3F000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A9292005B55500000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5D3E2008B9291009F9E
      93008E8EC5008888FF00474776000000000027940400FFFF3500FFFF1800FFFF
      00005BA4000047970000FFFF0000007B000000800000894B4300576466000000
      00000000000000000000000000000000000000000000C7C3B200D7CFA400FAFA
      FA00F7F7F700F1F1EE00EBEAE200E6E4D600E1DEC90082774500AAA9A3000000
      0000000000000000000000000000000000000000000000000000FFF5F200D3FC
      FE00D0F9FC00DBFFFF00DAF4FB00D6FAFF00D3F7FF00829CA30053595E005166
      6300A19E9600A46D6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C3CA006565
      AB00CDCDFF009696F6008282A7000000000095C8AB0065B20000F3F90000FFFF
      0000F0F900003296000018870000008000004D210000CEBAC000000000000000
      0000000000000000000000000000000000000000000000000000CEC38F00D8D0
      A500E9E5D300F4F2ED00F0EEE400D9D3B100A0935200A0976A00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFB00DAFF
      FF00C4F5F300C7FBF400D8FBFE00D9FFFF00D1FCFF0081949900F8FFFF00F6FC
      F700978B8100C57E7A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      FD008A8AEE009393F100E0E0EE0000000000000000000E80130000740000FFFF
      0000A7D3000003790000007400000081000063381C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C3
      B200C2B47300AE9E500098894500A2955700B4B3A90000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F4EB00D1FF
      FB00C9FFF900C8FFF900C5FFF700BEFFFE00C5FEF50093A09E00D5FFF7009194
      8B00CDACA300C693890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FE00FAFAFE0000000000000000000000000000000000000000000079
      00004CA600005DAE000066B4000092C19F000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000806850008060
      5000806050007060500070584000705840007058400070504000705040006048
      3000604830006048300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001414FC00FFFFFF00000000009090900090909000909090009090
      9000909090000000000090909000909090009090900090909000000000009090
      9000909090009090900090909000909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A48B8200E0D0C000B0A0
      9000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A0900060483000000000000000000000000000000000001414
      FC00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700D3D3D300D3D3D300D3D3
      D300E7E7E7000000000090909000D3D3D300D3D3D300E7E7E700000000009090
      9000D3D3D300D3D3D300D3D3D300909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B39B9100FFE8E000FFF8
      F000FFF0E000FFE8E000F0D8D000F0D0B000F0D0B000F0C0A00000A0000000A0
      000000A0000070584000604830008D70570000000000000000001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000000000
      00001414FC00FFFFFF000000000000000000FF787800FF4D4D00FF4D4D00FF4D
      4D00FF787800FF787800FF7878004D4D4D004D4D4D0090909000909090009090
      90000000000000000000D3D3D300909090000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0E0E000F0D8C00000FF100000FF
      B00000A0000080685000705040006048300000000000000000001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000001414
      FC00FFFFFF0000000000000000000000000090909000FF4D4D00FF4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4DFF004D4DFF004D4DFF004D4D4D000000
      00000000000000000000D3D3D30090909000000000000000000080808000FFFF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FF
      FF0080808000000000000000000000000000B4938300E0D8D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F000F0E0E000F0E0E000F0D8C00000FF100000FF
      B00000A000008068500070504000604830000000000000000000000000001414
      FC001414FC001414FC00FFFFFF000000000000000000000000001414FC001414
      FC00FFFFFF00000000000000000000000000E7E7E7004D4D4D004D4D4D00D3D3
      D300000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D300909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9
      EC0000000000808080000000000000000000B0908000F0E8E000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF8F000F0E8E00000FF100000FF
      100000A000009070600070605000604830000000000000000000000000000000
      00001414FC001414FC001414FC00FFFFFF00000000001414FC001414FC00FFFF
      FF0000000000000000000000000000000000E7E7E700000000004D4D4D000000
      00004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      00000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC008080
      800000000000000000000000000000000000B0988000D0C0B000D0B8B000C0B0
      A000B0A09000B0988000A0888000908070009080700090706000806860008060
      5000705850009080700080686000705840000000000000000000000000000000
      0000000000001414FC001414FC001414FC001414FC001414FC00FFFFFF000000
      000000000000000000000000000000000000E7E7E700000000004D4D4D00D3D3
      D30000000000D3D3D300000000004D4D4D004D4D4D004D4D4D004DA64D004DA6
      4D004DA64D0000000000D3D3D3009090900080808000FFFFFF0000FFFF00D8E9
      EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF00D8E9EC0000FFFF000000
      0000D8E9EC00D8E9EC000000000000000000C0A09000FFF8F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF0F000F0F0
      F000F0E8E000A088800090786000806050000000000000000000000000000000
      000000000000000000001414FC001414FC001414FC00FFFFFF00000000000000
      000000000000000000000000000000000000E7E7E7004D4D4D004D4D4D000000
      0000D3D3D30000000000D3D3D3004D4D4D00D3D3D300D3D3D3004D4D4D000000
      00000000000000000000D3D3D3009090900080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FF000000FFFFFF00D8E9EC0000000000DFC5AE00B9A08900D0B0A000C0A8
      A000D0B0A000C0A09000B0908000A0807000A080700090706000806050007060
      500080706000B0A09000A0887000806050000000000000000000000000000000
      0000000000001414FC001414FC001414FC001414FC001414FC00FFFFFF000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D30000000000D3D3D3004D4D4D00D3D3D3004D4D4D000000
      00000000000000000000D3D3D300909090008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF00000000000000000000000000D9C3AF00C0B0A000E0C8
      C000FFFFFF00FFF8FF00FFF8FF00FFF0F000FFF0F000F0F0E000F0E0E000C0A8
      A00080605000A0908000C0B0A000806050000000000000000000000000000000
      00001414FC001414FC001414FC00FFFFFF00000000001414FC00FFFFFF000000
      000000000000000000000000000000000000909090004D4D4D004D4D4D000000
      0000D3D3D30000000000A64D4D004D4D4D00D3D3D300D3D3D300D3D3D3004D4D
      4D000000000000000000D3D3D300909090000000000080808000FFFFFF0000FF
      FF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000C0B0
      A000FFFFFF00F0E8E000D0C8C000D0C8C000D0C8C000D0B8B000D0C0B000E0D0
      D0008068600080605000B0989000B0A0900000000000000000001414FC001414
      FC001414FC001414FC00FFFFFF000000000000000000000000001414FC001414
      FC00FFFFFF00000000000000000000000000909090004D4D4D004D4D4D004D4D
      4D0000000000D3D3D300000000004D4D4D004D4D4D00A64D4D004D4D4D000000
      00000000000000000000FBFBFB00909090000000000080808000FFFFFF00D8E9
      EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF0000000000808080000000000000000000000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0
      D000D0B8B00080605000C5AA970000000000000000001414FC001414FC001414
      FC001414FC00FFFFFF0000000000000000000000000000000000000000001414
      FC001414FC00FFFFFF00000000000000000090909000909090004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00D3D3D3004D4D4D00E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000080808000FFFFFF0000FF
      FF00D8E9EC0000FFFF00D8E9EC0080808000FFFFFF00FFFFFF00FFFFFF000000
      000080808000808080000000000000000000000000000000000000000000E0C8
      B100F0E8E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF0F000F0E0
      D000D0B8B00080605000C5AA970000000000000000001414FC001414FC00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001414FC001414FC00FFFFFF00000000000000000090909000909090004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00909090009090
      900000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000F6DF
      CC00D0B8B000FFFFFF00F0F0F000D0C8C000D0C8C000D0C8C000D0B8B000C0B0
      B000E0D8D0008070600087675700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909090009090
      900090909000909090004D4D4D004D4D4D004D4D4D0090909000909090000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9D1C300E1D1D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      FF00F0E8E000D0B8B00080605000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009090900090909000909090009090900090909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9D2C400D0C0B000D0C0B000D0C0B000D0C0B000D0C0B000D0C0
      B000D0C0B000D0C0B000D0C0B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600ADADAD006B6B6B00474747007C7C7C00DCDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060600060606000606060006060600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DA00A3A3A3007575750099999900DCDCDC00FFFFFF00ACACAC0071717100D8D8
      D800000000000000000000000000000000000000000000000000000000000000
      0000051405005C665C00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C665C000000
      0000000000000000000000000000000000000000000000000000000000000199
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D4D4D004D4D4D004D4D4D000000
      00004D4D4D00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF004D4D4D000000
      00000000000000000000000000000000000000000000CDCDCD009D9D9D008D8D
      8D00BFBFBF00F3F3F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD006767
      6700D3D3D3000000000000000000000000000000000000000000000000002852
      2800FFFFFF00F0F0FE00FFFFFF00FFFFFF007979BD00FFFFFF00F0F0FE00FFFF
      FF00285228000000000000000000000000000000000000000000000000000199
      01000000000051B448000199010001990100019901000199010071B651000000
      000000000000000000000000000000000000A64D4D00A64D4D004D4D4D004D4D
      4D00DEEDEF00DEEDEF00DEEDEF004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D000000000098989800A3A3A300D7D7D700FEFE
      FE00FFFFFF00FDFDFD00F9F9F900DCDBDB00EEEEEE00EEEEEE00EAEAEA00BEBE
      BE0062626200CDCDCD000000000000000000000000000000000028512800FFFF
      FF00FFFFFF004A4AA400FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4AA400FFFF
      FF00FFFFFF002851280000000000000000000000000000000000000000000199
      01000199010001990100019901000199010001990100019901000199010071B6
      510000000000000000000000000000000000A64D4D00A64D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF004D4D4D00DEEDEF004D4D4D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D00C3C3C300FBFBFB00F7F7F700F4F4
      F400F0F0F000B6B3B100A08C8200E3BDAB00816E650079767300A5A5A500A7A7
      A700A3A3A30060606000C6C6C6000000000000000000000C0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000C0000000000000000000000000000000000000199
      010001990100019901000199010031A7270082BF670084C26D00119E0D000199
      010000000000000000000000000000000000A64D4D00A64D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF00DEEDEF004D4D4D00FFFFFF004D4DA600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D00D8D8D800ADADAD00DBDBDB00A49E
      9B00B29D9300F8D7C700FEDAC900FED8C600AF928400A68B7D00665851007472
      71009A9A9A00959595005C5C5C000000000000000000646C65008F8AE3008883
      E100FCFBFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004A4AA500F2F2FF0057615700000000000000000000000000000000001EA5
      1E000199010001990100019901008FC4740000000000000000000000000046AD
      380051AF3C00000000000000000000000000FF4D4D00FF4D4D004D4D4D00A6A6
      A600A6A6A600A6A6A600A6A6A600FFFFFF004D4DA6004D4DA6004D4DA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000B3B3B300FEE7
      DC00DBA28100B4653D00D6A28C00FEDFD100AF938600AF928400AD9082007A65
      5C008F8F8F00878787008D8D8D0000000000060C05007069D3003028CB003028
      CB00827DE000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000070000000000000000000000000000089C
      0800019901000199010001990100019901000199010000000000000000000000
      00003CAB3100000000000000000000000000A64D4D00A64D4D00A6A6A6000000
      000000000000A6A6A600FFFFFF004D4DA6004D4DA600FFFFFF004D4DA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000E6E6E600FFEE
      E600C2520000B1450000DCA98E00EED8D700AF978C00AF928400AF9284009179
      6D00BABABA00000000000000000000000000574AB4003028CB005449C500483F
      C4003028CB007D71BC00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007979BC00FCFCFF00060606000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      A600FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000E6E6E600FFF5
      F100E7904800EBB79000F4DFDA00171CE0001E1BC40079649500AF9284009179
      6D00DFDFDF000000000000000000000000002F27C4009D95DE00FFFFFF00FFFF
      FF00FFFFFF004B44D200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007979BC00FCFCFF0006060600000000000000000081C878000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4DA600FFFFFF00FFFFFF004D4D4D000000000000000000D9D9D900FFFD
      FB00FFFCFB00FDFAF900828ADB003550E4000000D9000000E2001511C8005849
      8B00D1D1D30000000000000000000000000000070000F3F0F1008372BC00695B
      BA00594BC0004B43D000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000070000000000000000000081C97A000000
      0000000000000000000000000000019901000199010001990100019901000199
      0100000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4DA600FFFFFF004D4D4D00000000000000000000008900FFFF
      FF00FFFFFF00F3F3FD00496DEC000609DB000000D3000000CC000000D3000000
      DE003A3AC500000000000000000000000000000000006256BF00352CCA00322A
      CB003028CB006D66DB00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF004A4AA500F2F2FF005761570000000000000000000000000000000000119F
      10000000000000000000000000000000000031A92B0001990100019901000199
      0100000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000007272BD00B09B
      C800FFFFFF007E87F2003855F5000000EA000000E0000000D4000000C6000E0E
      BC00D3D3E500000000000000000000000000751BDC003028CB003028CB00352C
      CA00B7B4ED00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000041B2
      3F000199010081C77600000000000000000051B4480001990100019901000199
      0100000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A600FFFFFF00FFFFFF004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D00FFFFFF00FFFFFF004D4D4D000000000000000000000000007D7A
      D000E0C4CF004B72F7000406FD000000F2000000E4000000D7000202C900A2A2
      D700000000000000000000000000000000003028CB0000000000000000007668
      C100FBFAF900C7C5EE00FFFFFF00FFFFFF0000000000FFFFFF004C4BA500FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000019901000199010001990100019901000199010001990100019901000199
      0100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A6A6A600A6A6A6004D4D4D00FFFFFF00D3D3D300D3D3
      D3004D4D4D00A6A6A600A6A6A600000000000000000000000000000000000000
      00005B57CE00090E9E000202B5000000E0000000DE000000D2006363CE000000
      0000000000000000000000000000000000003028CB005C20D600000000007B6E
      CB004A40C700352DCC00FEFEFE00FFFFFF0000000000FFFFFF00F0F0FF00FFFF
      FF00285228000000000000000000000000000000000000000000000000000000
      000000000000019901000199010001990100019901000199010021A41D000199
      0100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600A6A6A600A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      000000000000000083004747A500252596000B0B95003939BA00000000000000
      000000000000000000000000000000000000FA01FE004923D1003028CB003028
      CB00312BB4005D675D00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C665C000514
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000071C46E0041B13E0041B13D008FCC8300000000000199
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FE00FF008D16E3008817
      E100000000000000000006060600060606000606060006060600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC008F0FE000FFFFC0000E0FE000FFFF
      C0009F1FE000804FC000C01FE0000000C000C01FE00000008000E63F00008000
      0000E43F0000C0000000F07F000080010000F07F000000010000F8FF00000001
      0000F8FF000000000000F9C1000000800000FFE3000080810000FFF70000C181
      0000FFFF0001E3C30000FFFFE003FFFFFFFFFFFFFFEFFFFFFC3FFC3FFFE7FFFF
      C01FC01FC003E001000F000F8001C001000700078000C0010007000700018001
      00030003000380010003000300070001800180010007000080018001000F0001
      C001C001000F8001C001C001000F8001E001E001000F8003E001E001807FC01F
      F001F001C6FFE1BFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFF0FFFFC3FFFF0F
      FFE0E003C1FFE007FFC1C003C0FFE003FF83C003E03FE003E007C003E01FE001
      C00FC003F00FC000801FC003F8078000801FC003FC070000801FC003FE010000
      801FC003FF010000801FC003FF81001F801FC003FFC1003FC03FC003FFE1807F
      E07FC003FFF3E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFF90420FFFF8001
      E7FF0420E0018000C3F3000CC0010000C3E7001CC0010000E1C7080480010000
      F08F507C80010000F81F4A0400010000FC3F141C00000000F81F0A1C00018000
      F09F140C8001E000C1C70A1C8001E00183E300018003E0018FF1800FC01FE001
      FFFFC01FE1BFF001FFFFF83FFFFFF801FFFFF81FFC3FFFFFF83FE00FF01FEFFF
      101F8007E007E81F00010003C003E00F000000018001E00F000000018001E0E7
      0000C0010000E0771800C0070000FFFFF800C0070000DFFFF800C0070000DE0F
      F800C0078001EF0FF800C0070003E30FF800E00F6007F00FFC01F01F2007F80F
      FF8FF83F000FFC2FFFFFFFFF8C3FFFFF00000000000000000000000000000000
      000000000000}
  end
  object Time_PopUp: TPopupMenu
    Images = DataModule1.PopUpImages
    Left = 187
    Top = 578
    object AddNewPicture1: TMenuItem
      Caption = 'Add New Time Trending Adjustment'
      ImageIndex = 0
      OnClick = AddNewPicture1Click
    end
    object MenuItem26: TMenuItem
      Caption = 'Edit Selected Time Adjustment'
      ImageIndex = 1
      OnClick = TimeTrending_ListviewClick
    end
    object MenuItem27: TMenuItem
      Tag = 20
      Caption = 'Delete Selected Time Adjustment'
      ImageIndex = 2
      OnClick = MenuItem27Click
    end
  end
  object Inventory_Adjustment_Popup: TPopupMenu
    Images = DataModule1.PopUpImages
    Left = 235
    Top = 578
    object MenuItem1: TMenuItem
      Caption = 'Add New Default Inventory Adjustment'
      ImageIndex = 0
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Edit Selected Default Inventory Adjustment'
      ImageIndex = 1
      OnClick = TimeTrending_ListviewClick
    end
    object MenuItem3: TMenuItem
      Tag = 20
      Caption = 'Delete Selected Default Inventory Adjustment'
      ImageIndex = 2
      OnClick = MenuItem3Click
    end
  end
  object SalesVector: TRtDoubleVector
    PersistentValues = False
    Capacity = 128
    Increment = 128
    Left = 32
    Top = 152
  end
  object PointsSeries: TRtPointSeries
    Visible = True
    Caption = 'f(x)+Random'
    IncludeInLegend = False
    AutoUpdate = True
    OutliersVisible = False
    XAxis = XAxis
    YAxis = FunctionAxis
    XData = SqFtVector
    YData = SalesVector
    Line.Color = -65536
    Line.Width = 1.000000000000000000
    Line.Gradient.Visible = False
    Line.Gradient.Style = Linear
    Line.Gradient.FirstColor = -2894893
    Line.Gradient.MiddleColor = -5197648
    Line.Gradient.LastColor = -8355712
    Line.Gradient.LinearCenter = 0.500000000000000000
    Line.Gradient.RadialCenterX = 0.500000000000000000
    Line.Gradient.RadialCenterY = 0.500000000000000000
    Line.Visible = False
    Area.Visible = False
    Area.ForeColor = -2894893
    Area.BackColor = -5658199
    Area.AreaStyle = Total
    Area.Gradient.Visible = False
    Area.Gradient.Style = Linear
    Area.Gradient.FirstColor = -2894893
    Area.Gradient.MiddleColor = -5197648
    Area.Gradient.LastColor = -8355712
    Area.Gradient.LinearAngle = 90.000000000000000000
    Area.Gradient.LinearCenter = 0.500000000000000000
    Area.Gradient.RadialCenterX = 0.500000000000000000
    Area.Gradient.RadialCenterY = 0.500000000000000000
    PointSymbol.Visible = True
    PointSymbol.Size = 9.000000000000000000
    PointSymbol.BorderLineWidth = 1.000000000000000000
    PointSymbol.BorderColor = -16776961
    PointSymbol.FillColor = -10496
    PointSymbol.PointSymbol = Star
    Left = 32
    Top = 192
    Layer = 0
  end
  object RegressionSeries: TRtLinearRegression
    Visible = True
    Caption = 'Linear Regression'
    IncludeInLegend = True
    AutoUpdate = True
    OutliersVisible = False
    XAxis = XAxis
    YAxis = FunctionAxis
    XData = SqFtVector
    YData = SalesVector
    Line.Color = -2354116
    Line.Width = 2.000000000000000000
    Line.Gradient.Visible = False
    Line.Gradient.Style = Linear
    Line.Gradient.FirstColor = -2894893
    Line.Gradient.MiddleColor = -5197648
    Line.Gradient.LastColor = -8355712
    Line.Gradient.LinearCenter = 0.500000000000000000
    Line.Gradient.RadialCenterX = 0.500000000000000000
    Line.Gradient.RadialCenterY = 0.500000000000000000
    Line.Visible = True
    Area.Visible = False
    Area.ForeColor = -2894893
    Area.BackColor = -5658199
    Area.AreaStyle = Total
    Area.Gradient.Visible = False
    Area.Gradient.Style = Linear
    Area.Gradient.FirstColor = -2894893
    Area.Gradient.MiddleColor = -5197648
    Area.Gradient.LastColor = -8355712
    Area.Gradient.LinearAngle = 90.000000000000000000
    Area.Gradient.LinearCenter = 0.500000000000000000
    Area.Gradient.RadialCenterX = 0.500000000000000000
    Area.Gradient.RadialCenterY = 0.500000000000000000
    AutoStart = True
    AutoStop = True
    CalculationStop = 5.000000000000000000
    ClipYValues = True
    FixedOffset = False
    Offset = 0.157808939127390900
    DisplayAutoStart = True
    DisplayAutoStop = True
    DisplayStop = 5.000000000000000000
    CoupleCalculationAndDisplay = True
    Left = 32
    Top = 240
    Layer = 1
  end
  object SqFtVector: TRtDoubleVector
    PersistentValues = False
    Capacity = 128
    Increment = 128
    Left = 64
    Top = 152
  end
  object Comps_PopUpMenu: TPopupMenu
    Images = DataModule1.PopUpImages
    Left = 395
    Top = 354
    object MenuItem4: TMenuItem
      Caption = 'Remove Selected Comparable'
      ImageIndex = 2
      OnClick = MenuItem4Click
    end
    object ExporttoExcel1: TMenuItem
      Caption = 'Export to Excel'
      ImageIndex = 60
      OnClick = ExporttoExcel1Click
    end
    object PrintComps1: TMenuItem
      Caption = 'Print Comps'
      ImageIndex = 27
    end
  end
  object Weightings_Popup: TPopupMenu
    Images = DataModule1.PopUpImages
    Left = 147
    Top = 578
    object MenuItem5: TMenuItem
      Caption = 'Add New Weighting'
      ImageIndex = 0
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Edit Selected Weighting'
      ImageIndex = 1
      OnClick = TimeTrending_ListviewClick
    end
    object MenuItem7: TMenuItem
      Tag = 20
      Caption = 'Delete Selected Weighting'
      ImageIndex = 2
      OnClick = MenuItem7Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 957
    Top = 100
  end
  object SaveDialog1: TSaveDialog
    Left = 1030
    Top = 100
  end
  object Temp_Inventory_Adjustment_Popup: TPopupMenu
    Images = DataModule1.PopUpImages
    Left = 291
    Top = 578
    object MenuItem8: TMenuItem
      Caption = 'Add New Inventory Adjustment for This Appraisal'
      ImageIndex = 0
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Edit Selected Inventory Adjustment for This Appraisal'
      ImageIndex = 1
      OnClick = Temp_Adjustment_ListviewClick
    end
    object MenuItem10: TMenuItem
      Tag = 20
      Caption = 'Delete Selected Inventory Adjustment for This Appraisal'
      ImageIndex = 2
      OnClick = MenuItem10Click
    end
  end
  object dlgLoadPicture: TMMOpenDialog
    Filter = 
      'All Supported Media Formats|*.BMP;*.CMS;*.GIF;*.JPG;*.PCX;*.PNG;' +
      '*.SCM;*.TIF;*.PCD;*.EMF;*.WMF;*.TGA;*.CRW;*.DCR;*.DIR;*.MRW;*.NE' +
      'F;*.ORF;*.RAF;*.X3F;*.THM;*.WAV;*.MID;*.RMI;*.AVI;|Windows Bitma' +
      'p    (BMP) |*.BMP|Credit Message    (CMS) |*.CMS|Compuserve Gif ' +
      '   (GIF) |*.GIF|Jpeg    (JPG) |*.JPG|PaintShop Pro    (PCX) |*.P' +
      'CX|Portable Graphics    (PNG) |*.PNG|Scrolling Message    (SCM) ' +
      '|*.SCM|Tagged Image    (TIF) |*.TIF|Kodak Photo CD    (PCD) |*.P' +
      'CD|Windows Metafile    (WMF) |*.WMF|Enhanced Metafile    (EMF) |' +
      '*.EMF|Targe Image    (TGA) |*.TGA|Canon CIFF  (CRW)|*.CRW|Kodak ' +
      'DCR (DCR)|*.DCR|Kodak DIR (DIR)|*.DIR|Minolta DiMAGE  (MRW)|*.MR' +
      'W|Nikon NEF  (NEF)|*.NEF|Olympus Raw  (ORF)|*.ORF|Fuji raw   (RA' +
      'F)|*.RAF|Foveon X3 raw  (X3F)|*.X3F|Wave Sound    (WAV) |*.WAV|M' +
      'idi Sound    (MID) |*.MID|RMI Sound    (RMI) |*.RMI|Video for Wi' +
      'ndows    (AVI) |*.AVI'
    PreviewBtnHint = 'Enable/Disable preview of selected file'
    TiffFirstHint = 'First Tif Page'
    TiffNextHint = 'Next Tif Page'
    TiffPrior = 'Prior Tif Page'
    TiffLast = 'Last Tif Page'
    TiffSelectedPage = 0
    Left = 369
    Top = 212
  end
  object pmenSubjectImage: TPopupMenu
    Left = 230
    Top = 261
    object mnuImageEdit: TMenuItem
      Caption = 'Edit'
      OnClick = mnuImageEditClick
    end
    object mnuImageChange: TMenuItem
      Caption = 'Change'
      OnClick = LoadNewPictureClick
    end
  end
  object tmrImageRefresh: TTimer
    Enabled = False
    OnTimer = tmrImageRefreshTimer
    Left = 237
    Top = 91
  end
  object pmenResultsImage: TPopupMenu
    Left = 361
    Top = 265
    object mnuCompsImageEdit: TMenuItem
      Caption = 'Edit'
      OnClick = mnuCompsImageEditClick
    end
    object MenuItem12: TMenuItem
      Caption = 'Change'
      OnClick = LoadNewPictureClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = tmrImageRefreshTimer
    Left = 441
    Top = 153
  end
end
