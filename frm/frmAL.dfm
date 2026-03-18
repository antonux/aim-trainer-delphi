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
  Position = poDesigned
  RoundedCorners = rcOn
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
  end
  object sb: TScrollBox
    Left = 144
    Top = 155
    Width = 844
    Height = 215
    Anchors = [akLeft, akRight]
    AutoScroll = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 2961202
    ParentColor = False
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 904
    Top = 88
  end
end
