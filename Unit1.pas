unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    idhtp1: TIdHTTP;
    btn1: TButton;
    btn2: TButton;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
//  params := TStringList.Create;
//  params.Add('a='+'ODP');
//  res := TStringStream.Create('');
//  //Button1.Post('http://localhost/lipi/ODP.php',params,res);
//  ShowMessage(res.DataString);
//  res.Free;
//  params.Free;
end;

procedure TForm1.btn1Click(Sender: TObject);
Var
params : TStringList;
res : TStringStream;
begin
  params := TStringList.Create;
  params.Add('ODP1='+'ODP1');
  res := TStringStream.Create('');
  idhtp1.Post('http://localhost/lipi/ODP.php', params, res);
  ShowMessage(res.DataString);
  res.Free;
  params.free;

  Label5.Caption := Edit1.text;
  Label6.Caption := Edit2.text;
end;

procedure TForm1.btn2Click(Sender: TObject);

var

Uid: TGuid;
Result: HResult;
begin
  Result := CreateGuid(Uid);
  if Result = S_OK then
  Edit3.Text:=(GuidToString(Uid));

  Label5.Caption := Edit1.text;
  Label6.Caption := Edit2.text;
end;

end.
