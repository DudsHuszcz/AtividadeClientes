unit U_home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormHome = class(TForm)
    PanelTop: TPanel;
    PanelLeft: TPanel;
    PanelTelas: TPanel;
    PanelCliente: TPanel;
    ImageCliente: TImage;
    LabelCliente: TLabel;
    Image3: TImage;
    PanelAdd: TPanel;
    LabelAdd: TLabel;
    ImageAdd: TImage;
    procedure ImageClienteClick(Sender: TObject);
    procedure ImageAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHome: TFormHome;
  IDAtual: Integer = 1;

implementation

{$R *.dfm}

uses U_cadastro, U_clientes;

procedure TFormHome.ImageAddClick(Sender: TObject);
begin
  FormCadastro:= TFormCadastro.Create(self);
 FormCadastro.Parent :=PanelTelas;
 FormCadastro.Align := alClient;
 FormCadastro.borderstyle := bsNone;
 FormCadastro.Show;
end;

procedure TFormHome.ImageClienteClick(Sender: TObject);
begin
FormClientes:= TFormClientes.Create(self);
 FormClientes.Parent :=PanelTelas;
 FormClientes.Align := alClient;
 FormClientes.borderstyle := bsNone;
 FormClientes.Show;
end;

end.
procedure TFormHome.closeform;
var i : integer;

begin
for I := 0 to pnl_telas.ControlCount-1 do
  begin
    if PanelTelas.Controls[i] is Tform then
    begin
     Tform(PanelTelas.Controls[i]).Close;
    end;

  end;

end;