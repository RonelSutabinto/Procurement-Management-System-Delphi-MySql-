object BudgetoptForm: TBudgetoptForm
  Left = 238
  Top = 139
  Caption = 'Budget Option'
  ClientHeight = 289
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel7: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 289
    Align = alClient
    Caption = 'Budget Options'
    DisplayStyle = dsPanelOnly
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 0
    ExplicitHeight = 290
    FullWidth = 654
    object nhpBO: TNxHeaderPanel
      Left = 80
      Top = 72
      Width = 457
      Height = 201
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 3
      Visible = False
      FullWidth = 457
      object Label196: TLabel
        Left = 38
        Top = 35
        Width = 61
        Height = 11
        Caption = 'PAYEE CODE'
        FocusControl = DBEdit200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label212: TLabel
        Left = 8
        Top = 7
        Width = 94
        Height = 11
        Caption = 'PAYEE / ACCOUNTS'
        FocusControl = DBEdit200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 38
        Top = 59
        Width = 61
        Height = 11
        Caption = 'PAYEE NAME'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 22
        Top = 83
        Width = 77
        Height = 11
        Caption = 'ACCOUNTCODE'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 22
        Top = 107
        Width = 77
        Height = 11
        Caption = 'ACCOUNTNAME'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 38
        Top = 131
        Width = 67
        Height = 11
        Caption = 'DESCRIPTION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 155
        Width = 128
        Height = 11
        Caption = 'AREA/CONTRIBUTION TAG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit200: TDBEdit
        Left = 142
        Top = 32
        Width = 180
        Height = 21
        DataField = 'pcode'
        DataSource = dspaytobudget
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = DBEdit200Change
        OnEnter = DBEdit200Enter
        OnKeyPress = DBEdit200KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 142
        Top = 56
        Width = 180
        Height = 21
        DataField = 'name'
        DataSource = dspaytobudget
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 142
        Top = 80
        Width = 180
        Height = 21
        DataField = 'accountcode'
        DataSource = dspaytobudget
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = DBEdit2Change
      end
      object DBEdit3: TDBEdit
        Left = 142
        Top = 104
        Width = 180
        Height = 21
        DataField = 'accountname'
        DataSource = dspaytobudget
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnChange = DBEdit200Change
        OnEnter = DBEdit200Enter
        OnKeyPress = DBEdit200KeyPress
      end
      object boDESC: TComboBox
        Left = 142
        Top = 128
        Width = 180
        Height = 21
        TabOrder = 4
        Items.Strings = (
          'PAYROLL'
          'BENEFITS'
          'SSS'
          'PAGIBIG'
          'PHILHEALTH')
      end
      object NxButton1: TNxButton
        Left = 328
        Top = 32
        Width = 75
        Caption = 'SAVE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = NxButton1Click
      end
      object NxButton2: TNxButton
        Left = 328
        Top = 56
        Width = 75
        Caption = 'CANCEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = NxButton2Click
      end
      object boAREATAG: TComboBox
        Left = 142
        Top = 152
        Width = 180
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Items.Strings = (
          'DMO'
          'SAO'
          'LAO'
          'PAO'
          'SSS'
          'PAG'
          'PHI')
      end
    end
    object boADD: TNxLinkLabel
      Left = 536
      Top = 16
      Width = 23
      Height = 16
      Caption = 'ADD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      HoverColor = clWindowText
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = boADDClick
    end
    object boEDIT: TNxLinkLabel
      Left = 568
      Top = 16
      Width = 24
      Height = 16
      Caption = 'EDIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      HoverColor = clWindowText
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = boEDITClick
    end
    object boDELETE: TNxLinkLabel
      Left = 600
      Top = 16
      Width = 40
      Height = 16
      Caption = 'DELETE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      HoverColor = clWindowText
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = boDELETEClick
    end
    object CRDBGrid2: TCRDBGrid1
      Left = 16
      Top = 40
      Width = 625
      Height = 233
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting]
      DataSource = dspaytobudget
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'pcode'
          Title.Alignment = taCenter
          Title.Caption = 'Payee Code'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'accountcode'
          Title.Alignment = taCenter
          Title.Caption = 'Accountcode'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'accountname'
          Title.Alignment = taCenter
          Title.Caption = 'Accountname'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'description'
          Title.Caption = 'Description'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'area'
          Title.Caption = 'Area'
          Width = 48
          Visible = True
        end>
    end
    object CRDBGrid1: TCRDBGrid1
      Left = 280
      Top = 76
      Width = 321
      Height = 120
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting]
      DataSource = dsSearchAccount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnKeyPress = CRDBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'accountcode'
          Title.Alignment = taCenter
          Title.Caption = 'AccountCode'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'accountname'
          Title.Alignment = taCenter
          Title.Caption = 'Accountname'
          Width = 180
          Visible = True
        end>
    end
    object gridsearch: TCRDBGrid1
      Left = 296
      Top = 91
      Width = 321
      Height = 120
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting]
      DataSource = dsPayeeSearch
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnKeyPress = gridsearchKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PCode'
          Title.Alignment = taCenter
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Width = 180
          Visible = True
        end>
    end
  end
  object PayeeSearch: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      
        'Select * from zanecoacctg.payee where (name like :Name or Pcode ' +
        'like :name)')
    Left = 8
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Name'
      end
      item
        DataType = ftUnknown
        Name = 'name'
      end>
    object PayeeSearchPCode: TStringField
      FieldName = 'PCode'
      Size = 30
    end
    object PayeeSearchName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object PayeeSearchidpayee: TLargeintField
      FieldName = 'idpayee'
    end
  end
  object dsPayeeSearch: TMyDataSource
    DataSet = PayeeSearch
    Left = 8
    Top = 48
  end
  object paytobudgetchart: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'Select '
      ' bp.idchart,'
      ' bp.idpcode,'
      ' bp.description,'
      ' bp.area,'
      ' c.accountcode,'
      ' c.accountname,'
      ' p.pcode,'
      ' p.name'
      'from zanecopayroll.budgetpayee bp'
      'inner join zanecobudget.chart c on c.idchart = bp.idchart'
      'inner join zanecoacctg.payee p on p.idpayee = idpcode')
    BeforePost = paytobudgetchartBeforePost
    Left = 8
    Top = 80
    object paytobudgetchartidchart: TLargeintField
      FieldName = 'idchart'
    end
    object paytobudgetchartidpcode: TLargeintField
      FieldName = 'idpcode'
    end
    object paytobudgetchartaccountcode: TStringField
      FieldName = 'accountcode'
      Size = 100
    end
    object paytobudgetchartaccountname: TStringField
      FieldName = 'accountname'
      Size = 70
    end
    object paytobudgetchartpcode: TStringField
      FieldName = 'pcode'
      Size = 30
    end
    object paytobudgetchartname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object paytobudgetchartdescription: TStringField
      FieldName = 'description'
      Size = 45
    end
    object paytobudgetchartarea: TStringField
      FieldName = 'area'
      Size = 3
    end
  end
  object dspaytobudget: TMyDataSource
    DataSet = paytobudgetchart
    Left = 8
    Top = 112
  end
  object MyQuery1: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from zanecopayroll.paytobudget')
    Left = 8
    Top = 144
    object StringField1: TStringField
      FieldName = 'pCode'
      Size = 45
    end
    object StringField2: TStringField
      FieldName = 'pName'
      Size = 45
    end
    object LargeintField1: TLargeintField
      FieldName = 'accountdmo'
    end
    object StringField3: TStringField
      FieldName = 'pcodepao'
      Size = 45
    end
    object StringField4: TStringField
      FieldName = 'pNamePao'
      Size = 45
    end
    object LargeintField2: TLargeintField
      FieldName = 'accountpao'
    end
    object StringField5: TStringField
      FieldName = 'pcodesao'
      Size = 45
    end
    object StringField6: TStringField
      FieldName = 'pNamesao'
      Size = 45
    end
    object LargeintField3: TLargeintField
      FieldName = 'accountsao'
    end
    object StringField7: TStringField
      FieldName = 'pcodelao'
      Size = 45
    end
    object StringField8: TStringField
      FieldName = 'pnamelao'
      Size = 45
    end
    object LargeintField4: TLargeintField
      FieldName = 'Accountlao'
    end
    object StringField9: TStringField
      FieldName = 'accountsss'
      Size = 45
    end
    object StringField10: TStringField
      FieldName = 'accountph'
      Size = 45
    end
    object StringField11: TStringField
      FieldName = 'accountpag'
      Size = 45
    end
  end
  object ds: TMyDataSource
    DataSet = MyQuery1
    Left = 8
    Top = 176
  end
  object SearchAccount: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select idchart,accountcode,accountname from zanecobudget.chart '
      'where mastertype <> '#39'GA'#39' and'
      '      accountcode like :AC and '
      '      cutoffdate = :date')
    Left = 8
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AC'
      end
      item
        DataType = ftUnknown
        Name = 'date'
      end>
    object SearchAccountaccountcode: TStringField
      FieldName = 'accountcode'
      Size = 100
    end
    object SearchAccountaccountname: TStringField
      FieldName = 'accountname'
      Size = 70
    end
    object SearchAccountidchart: TLargeintField
      FieldName = 'idchart'
    end
  end
  object dsSearchAccount: TMyDataSource
    DataSet = SearchAccount
    Left = 8
    Top = 240
  end
end
