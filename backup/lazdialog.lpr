program lazdialog;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazdialogU, lazdialog_textarea
  { you can add units after this };

{$R *.res}

var
  i,ia:integer;
 arg,sForm, sCaption,sLabel,sDefault, sAction:AnsiString;

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;

  //Default :
  sForm:='';
  //Parse params
  ia:=1;
  for i := 1 to ParamCount do begin
     if(ia>=ParamCount)then begin break; end;
      arg:=     ParamStr(ia);
     if( arg = '--textarea')then
     begin
          sForm:='textarea';
          Application.CreateForm(TForm2, textareaForm);
     end;

     if( arg= '--caption')then
     begin
          inc(ia);
          sCaption:=ParamStr(ia);
     end;

     if( arg = '--label')then
     begin
          inc(ia);
          sLabel:=ParamStr(ia);
     end;

     if( arg = '--default')then
     begin
          inc(ia);
          sDefault:=ParamStr(ia);
     end;

     if( arg = '--help')then
     begin

          writeln('Example :');
          writeln('lazdialog --textarea --caption "windowTitle" --label "questiion label?" --default "default textarea content"');
          halt;
     end;
      inc(ia);  //normal
   end;


  //Default :
  if( sForm = 'textarea')then
   begin
     if( sCaption = '')then
     begin
          sCaption:='LazDialog - Textarea';
     end;
   end;

  //Application.CreateForm(TForm1, Form1);
  if(sForm<>'')then
  begin
     textareaForm.caption:=sCaption;
     textareaForm.lbCaption.Caption:=sLabel;
     textareaForm.memo1.Lines.Text:=sDefault;
     Application.Run;
  end;


end.

