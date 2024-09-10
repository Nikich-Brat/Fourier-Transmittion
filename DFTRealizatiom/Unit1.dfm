object Form1: TForm1
  Left = 528
  Top = 83
  Width = 1356
  Height = 970
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 114
    Height = 13
    Caption = 'Frequency discretization'
  end
  object Label2: TLabel
    Left = 264
    Top = 24
    Width = 13
    Height = 13
    Caption = 'A1'
  end
  object Label3: TLabel
    Left = 264
    Top = 48
    Width = 13
    Height = 13
    Caption = 'A2'
  end
  object Label4: TLabel
    Left = 408
    Top = 24
    Width = 9
    Height = 13
    Caption = 'f1'
  end
  object Label5: TLabel
    Left = 408
    Top = 48
    Width = 9
    Height = 13
    Caption = 'f2'
  end
  object Label6: TLabel
    Left = 24
    Top = 48
    Width = 100
    Height = 13
    Caption = 'time interval from 0 to'
  end
  object Label7: TLabel
    Left = 472
    Top = 24
    Width = 23
    Height = 13
    Caption = 'fstart'
  end
  object Label8: TLabel
    Left = 472
    Top = 48
    Width = 23
    Height = 13
    Caption = 'fstop'
  end
  object Label9: TLabel
    Left = 744
    Top = 48
    Width = 70
    Height = 13
    Caption = 'analize interval'
  end
  object Label10: TLabel
    Left = 664
    Top = 48
    Width = 9
    Height = 13
    Caption = 'to'
  end
  object Chart1: TChart
    Left = 16
    Top = 80
    Width = 473
    Height = 313
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.Direction = gdFromBottomLeft
    Gradient.EndColor = clWhite
    Gradient.StartColor = clBlack
    Title.Text.Strings = (
      'Signal Digital')
    Legend.Visible = False
    View3D = False
    Color = clSilver
    TabOrder = 1
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object BitBtn2: TBitBtn
    Left = 416
    Top = 80
    Width = 75
    Height = 25
    Caption = #1089#1080#1075#1085#1072#1083
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '10000'
  end
  object Edit2: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0,01'
  end
  object Edit3: TEdit
    Left = 280
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '1'
  end
  object Edit4: TEdit
    Left = 280
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0,05'
  end
  object Edit5: TEdit
    Left = 424
    Top = 24
    Width = 41
    Height = 21
    TabOrder = 7
    Text = '1220'
  end
  object Edit6: TEdit
    Left = 424
    Top = 48
    Width = 41
    Height = 21
    TabOrder = 8
    Text = '1507'
  end
  object TChart
    Left = 496
    Top = 80
    Width = 841
    Height = 313
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Spectr')
    View3D = False
    Color = clSilver
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 766
      Top = 0
      Width = 75
      Height = 25
      Caption = #1089#1087#1077#1082#1090#1088
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      BarStyle = bsRectGradient
      BarWidthPercent = 50
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series7: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      ShowInLegend = False
      LinePen.Style = psDot
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series8: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      ShowInLegend = False
      LinePen.Style = psDot
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 496
    Top = 392
    Width = 841
    Height = 321
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Phase')
    Legend.Visible = False
    View3D = False
    Color = clSilver
    TabOrder = 9
    object CheckBox3: TCheckBox
      Left = 736
      Top = 8
      Width = 97
      Height = 17
      Caption = 'CheckBox3'
      TabOrder = 0
    end
    object Series3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clRed
      BarStyle = bsRectGradient
      BarWidthPercent = 50
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object ComboBox1: TComboBox
    Left = 600
    Top = 24
    Width = 145
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 10
    Text = #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1086#1077' '#1086#1082#1085#1086
    Items.Strings = (
      #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1086#1077' '#1086#1082#1085#1086
      #1054#1082#1085#1086' '#1061#1072#1085#1085#1072
      #1054#1082#1085#1086' '#1061#1101#1084#1084#1080#1085#1075#1072
      #1054#1082#1085#1086' '#1041#1083#1101#1082#1084#1072#1085#1072
      #1054#1082#1085#1086' '#1041#1072#1088#1090#1083#1077#1090#1072
      #1054#1082#1085#1086' '#1050#1072#1081#1079#1077#1088#1072)
  end
  object Chart4: TChart
    Left = 16
    Top = 392
    Width = 473
    Height = 321
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Windowed Signal')
    Legend.Visible = False
    View3D = False
    Color = clSilver
    TabOrder = 11
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object CheckBox1: TCheckBox
    Left = 744
    Top = 24
    Width = 65
    Height = 17
    Caption = 'windows'
    TabOrder = 12
    OnClick = CheckBox1Click
  end
  object Chart5: TChart
    Left = 16
    Top = 712
    Width = 473
    Height = 321
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Recovered Signal')
    Legend.Visible = False
    View3D = False
    Color = clSilver
    TabOrder = 13
    object BitBtn3: TBitBtn
      Left = 400
      Top = 0
      Width = 75
      Height = 25
      Caption = #1074#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series9: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Edit7: TEdit
    Left = 496
    Top = 24
    Width = 41
    Height = 21
    TabOrder = 14
    Text = '1100'
  end
  object Edit8: TEdit
    Left = 496
    Top = 48
    Width = 41
    Height = 21
    TabOrder = 15
    Text = '1300'
  end
  object Chart6: TChart
    Left = 496
    Top = 712
    Width = 841
    Height = 321
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Recovered Spectr')
    Legend.Visible = False
    View3D = False
    Color = clSilver
    TabOrder = 16
    object Button1: TButton
      Left = 760
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Series6: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clRed
      BarStyle = bsRectGradient
      BarWidthPercent = 50
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object CheckBox2: TCheckBox
    Left = 536
    Top = 24
    Width = 41
    Height = 17
    Caption = 'filter'
    TabOrder = 17
    OnClick = CheckBox1Click
  end
  object Edit9: TEdit
    Left = 600
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 18
    Text = '0'
  end
  object Edit10: TEdit
    Left = 680
    Top = 48
    Width = 65
    Height = 21
    TabOrder = 19
    Text = '100'
  end
  object Chart2: TChart
    Left = 16
    Top = 1046
    Width = 473
    Height = 324
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    View3D = False
    TabOrder = 20
    object Button3: TButton
      Left = 392
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Series11: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object MainMenu1: TMainMenu
    Left = 1248
    Top = 32
    object N1: TMenuItem
      Caption = #1092#1072#1081#1083
      object N2: TMenuItem
        Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1080#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1090#1100
        OnClick = N3Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 1280
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 1312
    Top = 32
  end
end
