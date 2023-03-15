unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, DBCtrls;

type
  TFrmPrincipal = class(TForm)
    PnlBottom: TPanel;
    PnlTopo: TPanel;
    BtnConsulta: TBitBtn;
    DBGrid1: TDBGrid;
    edtConsulta: TEdit;
    lblConsulta: TLabel;
    opcoes: TRadioGroup;
    procedure edtConsultaChange(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure opcoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses  UDM;

{$R *.dfm}

procedure TFrmPrincipal.BtnConsultaClick(Sender: TObject);
begin
  dm.cdsConsulta.Close;
  if (opcoes.ItemIndex = 0) then
  begin
    dm.sqlConsulta.CommandText := 'SELECT * FROM CLIENTES WHERE NOME LIKE  ''%'+edtConsulta.Text+'%''';
  end;

  if (opcoes.ItemIndex = 1) then
  begin
    dm.sqlConsulta.CommandText := 'SELECT * FROM CLIENTES WHERE BAIRRO LIKE  ''%'+edtConsulta.Text+'%''';
  end;
  dm.cdsConsulta.Open;
end;

procedure TFrmPrincipal.edtConsultaChange(Sender: TObject);
begin

  dm.cdsConsulta.Close;
  if (opcoes.ItemIndex = 0) then
  begin
    dm.sqlConsulta.CommandText := 'SELECT * FROM CLIENTES WHERE NOME LIKE  ''%'+edtConsulta.Text+'%''';
  end;

  if (opcoes.ItemIndex = 1) then
  begin
    dm.sqlConsulta.CommandText := 'SELECT * FROM CLIENTES WHERE BAIRRO LIKE  ''%'+edtConsulta.Text+'%''';
  end;
  dm.cdsConsulta.Open;

end;

procedure TFrmPrincipal.opcoesClick(Sender: TObject);
begin
  if (opcoes.ItemIndex = 0) then
  begin
    lblConsulta.Caption := 'Digite o nome';
  end;

  if (opcoes.ItemIndex = 1) then
  begin
    lblConsulta.Caption := 'Digite o bairro';
  end;

end;

end.
