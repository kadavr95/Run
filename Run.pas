unit Run;

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
  if (mouse.CursorPos.Y-form1.top) < (btn.top+btn.height+form1.Top) then
   begin
    if (mouse.CursorPos.Y-form1.top) > (btn.top+form1.Top) then
     begin
      if (mouse.cursorpos.X-form1.left-8) < (btn.left+form1.Left+8+5) then
       begin
        btn.left:=mouse.cursorpos.x-form1.left-8+10;
        lbl.Caption:='right';
       end
      else
       begin
        btn.left:=mouse.cursorpos.x-form1.left-8-btn.width;
        lbl.Caption:='left';
       end;
     end;
   end;

  if (mouse.cursorpos.X-form1.left) < (btn.left+btn.width+form1.Left) then
   begin
    if (mouse.cursorpos.X-form1.left) > (btn.left+form1.Left) then
     begin
      if (mouse.CursorPos.Y-form1.top-27) < (btn.top+form1.Top+27+5) then
       begin
        btn.top:=mouse.CursorPos.Y-form1.top-27+29;
        lbl.Caption:='down';
       end
      else
      begin
       btn.top:=mouse.cursorpos.y-form1.top-27-btn.height;
       lbl.Caption:='top';
      end;
     end;
   end;
 end;
end.
