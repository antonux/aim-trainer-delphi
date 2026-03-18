object AL: TAL
  Left = 0
  Top = 0
  Caption = 'AimLabs'
  ClientHeight = 615
  ClientWidth = 1116
  Color = 2961202
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  RoundedCorners = rcOn
  OnCreate = FormCreate
  DesignSize = (
    1116
    615)
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1116
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    Color = 1842720
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 42
      Height = 21
      Caption = 'Score:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 16
      Width = 35
      Height = 21
      Caption = 'Miss:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lSc: TLabel
      Left = 72
      Top = 16
      Width = 9
      Height = 21
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lMi: TLabel
      Left = 169
      Top = 16
      Width = 9
      Height = 21
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388863
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cbDiff: TComboBox
      Left = 358
      Top = 16
      Width = 145
      Height = 23
      Hint = 'Difficulty'
      ParentCustomHint = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'Easy'
      OnChange = cbDiffChange
      Items.Strings = (
        'Easy'
        'Normal'
        'Hard'
        'Hell')
    end
    object bSt: TButton
      Left = 232
      Top = 16
      Width = 75
      Height = 24
      Caption = 'Start'
      TabOrder = 1
      OnClick = bStClick
    end
  end
  object sb: TScrollBox
    Left = 128
    Top = 171
    Width = 844
    Height = 215
    Anchors = [akLeft, akRight]
    AutoScroll = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 2961202
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '='
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object tmr: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = tmrTimer
    Left = 904
    Top = 88
  end
end
