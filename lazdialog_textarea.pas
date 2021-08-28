unit lazdialog_textarea;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    btnOk: TButton;
    lbCaption: TLabel;
    Memo1: TMemo;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  textareaForm: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.btnOkClick(Sender: TObject);
begin


  write(self.Memo1.Text);
       //exec action
  //close
  self.close();
end;

end.

