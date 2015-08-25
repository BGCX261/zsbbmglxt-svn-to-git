unit uMailServerInfoSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, DBCtrlsEh, Mask, DBCtrls,
  RzEdit, frxpngimage, pngimage, StrUtils, dxGDIPlusClasses;

type
  TMailServerInfoSet = class(TForm)
    grp1: TGroupBox;
    cds1: TClientDataSet;
    ds1: TDataSource;
    pnl1: TPanel;
    btn_Set: TBitBtn;
    btn_Exit: TBitBtn;
    Label1: TLabel;
    dbedt1: TDBEdit;
    pnl_Title: TPanel;
    img_Title: TImage;
    img_Hint: TImage;
    lbl_Title: TLabel;
    lbl1: TLabel;
    dbedt_MailServer: TDBEdit;
    lbl2: TLabel;
    dbedt_MailAddress: TDBEdit;
    lbl3: TLabel;
    dbedtUploadVirtualDir: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    DBNumberEditEh1: TDBNumberEditEh;
    btn_Test: TBitBtn;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_SetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cds1NewRecord(DataSet: TDataSet);
    procedure btn_TestClick(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure dbedt_MailServerChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MailServerInfoSet: TMailServerInfoSet;

implementation
uses uDM;
{$R *.dfm}

procedure TMailServerInfoSet.btn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMailServerInfoSet.btn_SetClick(Sender: TObject);
begin
  if cds1.State in [dsInsert,dsEdit] then
    cds1.Post;
  if cds1.ChangeCount>0 then
    if DM.UpdateData('ID','select * from MailServerInfo',cds1.Delta,False) then
    begin
      cds1.MergeChangeLog;
      MessageBox(Handle, '操作完成！邮件转发服务器参数设置成功！　　', '系统提示', MB_OK
        + MB_ICONINFORMATION + MB_TOPMOST);
      //vobj_Admin.GetCurSfSetInfo(gb_Cur_Xn,gb_Cur_Sfmc,gb_Cur_StartTime,gb_Cur_EndTime);
      dbedt_MailServerChange(Self);
    end;
end;

procedure TMailServerInfoSet.btn_TestClick(Sender: TObject);
var
  ToMail,content:string;
begin
  ToMail := InputBox('请输入接收邮箱地址','邮箱地址，如: abc@163.com','');
  if ToMail='' then Exit;
  Screen.Cursor := crHourGlass;
  try
  content := '本邮件来自『专升本报名管理系统』<br />'+
             '登录用户名：______________<br />'+
             '登录密码：______________<br />';
  if vobj_Admin.SendTestMail(ToMail,'密码找回【测试】',content) then
    Application.MessageBox('测试邮件已发出！请打开电子邮箱查看邮件内容！',
      '系统提示', MB_OK + MB_ICONINFORMATION + MB_TOPMOST)
  else
    Application.MessageBox('邮件发送失败！请检查邮件服务器的参数设置是否正确！',
      '系统提示', MB_OK + MB_ICONSTOP + MB_TOPMOST);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMailServerInfoSet.cds1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('SmtpAuthType').Value := 1;
  DataSet.FieldByName('SmtpPort').Value := 25;
end;

procedure TMailServerInfoSet.dbedt_MailServerChange(Sender: TObject);
begin
  btn_Set.Enabled := (TEdit(Sender).Text<>'') and (cds1.State in [dsInsert,dsEdit]);
end;

procedure TMailServerInfoSet.ds1StateChange(Sender: TObject);
begin
  btn_Test.Enabled := (not (cds1.State in [dsInsert,dsEdit]));
end;

procedure TMailServerInfoSet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMailServerInfoSet.FormCreate(Sender: TObject);
begin
  cds1.XMLData := dm.OpenData('select * from MailServerInfo');
end;

end.
