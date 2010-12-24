unit Run0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn: TButton;
    lbl: TLabel;
    procedure btnClick(Sender: TObject);
    procedure btnmouseenter(sender: tobject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClick(Sender: TObject);
begin
lbl.Caption:='Congratulations!';
end;

procedure tform1.btnmouseenter(sender: tobject);
 begin
  if (mouse.CursorPos.Y-form1.top) < (btn.top+btn.height+27) then
   begin
    if (mouse.CursorPos.Y-form1.top) > (btn.top+27) then
     begin
      if (mouse.cursorpos.X-form1.left-8) < (btn.left+8) then
       begin
        btn.left:=btn.Left+2;
        lbl.Caption:='right';
       end
      else
       begin
        btn.left:=btn.Left-2;
        lbl.Caption:='left';
       end;
     end;
   end;

  if (mouse.cursorpos.X-form1.left) < (btn.left+btn.width+8) then
   begin
    if (mouse.cursorpos.X-form1.left) > (btn.left+8) then
     begin
      if (mouse.CursorPos.Y-form1.top) < (btn.top+27) then
       begin
        btn.top:=btn.top+2;
        lbl.Caption:='down';
       end
      else
      begin
       btn.top:=btn.Top-2;
       lbl.Caption:='top';
      end;
     end;
   end;
 end;
end.
