object Form1: TForm1
  Left = 217
  Top = 170
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Major : '
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 35
    Height = 13
    Caption = 'Minor : '
  end
  object Label3: TLabel
    Left = 56
    Top = 200
    Width = 35
    Height = 13
    Caption = 'Major : '
  end
  object Label4: TLabel
    Left = 56
    Top = 240
    Width = 35
    Height = 13
    Caption = 'Minor : '
  end
  object Label5: TLabel
    Left = 96
    Top = 200
    Width = 30
    Height = 13
    Caption = '_____'
  end
  object Label6: TLabel
    Left = 96
    Top = 240
    Width = 30
    Height = 13
    Caption = '_____'
  end
  object Edit1: TEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 56
    Top = 160
    Width = 289
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 80
    Top = 104
    Width = 153
    Height = 25
    Caption = 'GENERATE UUID'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 104
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
    OnClick = btn2Click
  end
  object idhtp1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 48
    Top = 104
  end
end
