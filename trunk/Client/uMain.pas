unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, ActnMan, ActnList, RzStatus, RzPanel, uStatusDisplay,
  StdActns, uWizard, auAutoUpgrader, DB, DBClient,ShellAPI, 
  dxBar, ImgList, cxClasses, auHTTP, XPStyleActnCtrls, Dialogs,
  dxGDIPlusClasses, RzBckgnd, StdCtrls;

type
  TMain = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    lbl_CzyName: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    RzFieldStatus1: TRzFieldStatus;
    RzClockStatus1: TRzClockStatus;
    auAutoUpgrader1: TauAutoUpgrader;
    cds_Temp: TClientDataSet;
    tmr_Count: TTimer;
    ActionManger1: TActionManager;
    act_sys_Czy: TAction;
    act_sys_CzyRight: TAction;
    act_sys_ChgCzyPwd: TAction;
    act_sys_IpSet: TAction;
    act_sys_OnlineUpdateSet: TAction;
    act_sys_LoginLog: TAction;
    act_sys_Exit: TAction;
    act_hlp_Help: TAction;
    act_hlp_Reg: TAction;
    act_hlp_Update: TAction;
    act_hlp_about: TAction;
    act_Win_CloseAll: TWindowCascade;
    act_Win_CloseCurWin: TWindowClose;
    act_Win_Wizard: TAction;
    act_cwsf_print: TAction;
    act_cwgl_SfCsSet: TAction;
    act_cwgl_SfInfoPublish: TAction;
    act_Interface_Xjgl: TAction;
    act_Win_HintMessage: TAction;
    act_Stu_BmBrowse: TAction;
    Status_SrvInfo: TRzStatusPane;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    ImageList_mm: TImageList;
    act_sys_LockScreen: TAction;
    dxBarButton46: TdxBarButton;
    act_ReportDesign: TAction;
    dxBarButton47: TdxBarButton;
    act_Cwsf_PrintSet: TAction;
    act_cwsf_UpdateReport: TAction;
    dxBarButton48: TdxBarButton;
    tmr1: TTimer;
    act_sys_SysLog: TAction;
    dxBarButton21: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton51: TdxBarButton;
    act_Stu_BmInput: TAction;
    act_Stu_BmConfirm: TAction;
    dxBarButton9: TdxBarButton;
    act_Data_BkZySet: TAction;
    act_Data_BkLbSet: TAction;
    act_Data_JsjLbSet: TAction;
    act_Data_EnglishLbSet: TAction;
    act_Data_Mz: TAction;
    act_Data_Zzmm: TAction;
    act_Data_SchoolSet: TAction;
    dxBarSubItem2: TdxBarSubItem;
    act_Pk_RoomSet: TAction;
    act_Pk_KsPcSet: TAction;
    act_Pk_Input: TAction;
    act_Pk_Browse: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton27: TdxBarButton;
    act_Data_SfDmSet: TAction;
    dxBarButton28: TdxBarButton;
    act_cwgl_WebSite: TAction;
    dxBarButton29: TdxBarButton;
    act_Pk_KsKcSet: TAction;
    dxBarButton30: TdxBarButton;
    act_Pk_AutoCreate: TAction;
    dxBarButton31: TdxBarButton;
    act_PK_KsxzSet: TAction;
    dxBarButton39: TdxBarButton;
    act_PK_DeleteAllPKRecord: TAction;
    dxBarButton40: TdxBarButton;
    act_Cj_InitKsCjb: TAction;
    act_Cj_CjInput: TAction;
    act_Cj_CjBrowse: TAction;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton52: TdxBarButton;
    act_Cj_CjImport: TAction;
    dxBarButton37: TdxBarButton;
    act_Cj_PrintDfb: TAction;
    dxBarButton53: TdxBarButton;
    act_Cj_CjTotal: TAction;
    dxBarButton54: TdxBarButton;
    act_Cj_Upload: TAction;
    dxbrbtn1: TdxBarButton;
    act_Stu_BmData_Clear: TAction;
    dxBarButton55: TdxBarButton;
    RzBackground1: TRzBackground;
    img_Show: TImage;
    lbl_Ver: TLabel;
    lbl_Year: TLabel;
    act_cwgl_MailServerInfoSet: TAction;
    dxBarButton56: TdxBarButton;
    procedure act_Cj_CjBrowseExecute(Sender: TObject);
    procedure act_Cj_CjInputExecute(Sender: TObject);
    procedure act_Cj_InitKsCjbExecute(Sender: TObject);
    procedure act_sys_ExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure act_hlp_aboutExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure act_sys_CzyExecute(Sender: TObject);
    procedure act_sys_ChgCzyPwdExecute(Sender: TObject);
    procedure act_hlp_RegExecute(Sender: TObject);
    procedure act_StudentExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure act_Win_WizardExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_Win_WizardUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure act_sys_LoginLogExecute(Sender: TObject);
    procedure act_hlp_UpdateExecute(Sender: TObject);
    procedure act_sys_OnlineUpdateSetExecute(Sender: TObject);
    procedure auAutoUpgrader1DoOwnCloseAppMethod(Sender: TObject);
    procedure act_CzyQXExecute(Sender: TObject);
    procedure act_ZdMoneyExecute(Sender: TObject);
    procedure act_DdMoneyExecute(Sender: TObject);
    procedure act_CkMoneyExecute(Sender: TObject);
    procedure act_sys_IpSetExecute(Sender: TObject);
    procedure act_Interface_XjglExecute(Sender: TObject);
    procedure act_cwgl_NetPaySetExecute(Sender: TObject);
    procedure act_cwgl_SfInfoPublishExecute(Sender: TObject);
    procedure act_cwgl_SfCsSetExecute(Sender: TObject);
    procedure act_cwsf_POSExecute(Sender: TObject);
    procedure act_cwgl_AuditAndIntoExecute(Sender: TObject);
    procedure act_Interface_OtherExecute(Sender: TObject);
    procedure act_sys_CzyRightExecute(Sender: TObject);
    procedure tmr_CountTimer(Sender: TObject);
    procedure act_Win_HintMessageExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure act_Interface_KsxtSetExecute(Sender: TObject);
    procedure act_Stu_BmBrowseExecute(Sender: TObject);
    procedure act_Win_CloseAllExecute(Sender: TObject);
    procedure act_sys_LockScreenExecute(Sender: TObject);
    procedure act_ReportDesignExecute(Sender: TObject);
    procedure act_Cwsf_PrintSetExecute(Sender: TObject);
    procedure act_cwsf_UpdateReportExecute(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure act_sys_SysLogExecute(Sender: TObject);
    procedure act_cwgl_NetBankLoginExecute(Sender: TObject);
    procedure act_Data_MzExecute(Sender: TObject);
    procedure act_Data_ZzmmExecute(Sender: TObject);
    procedure act_Data_BkLbSetExecute(Sender: TObject);
    procedure act_Data_BkZySetExecute(Sender: TObject);
    procedure act_Data_SchoolSetExecute(Sender: TObject);
    procedure act_Data_JsjLbSetExecute(Sender: TObject);
    procedure act_Data_EnglishLbSetExecute(Sender: TObject);
    procedure act_Pk_RoomSetExecute(Sender: TObject);
    procedure act_Data_SfDmSetExecute(Sender: TObject);
    procedure act_Stu_BmInputExecute(Sender: TObject);
    procedure act_Stu_BmConfirmExecute(Sender: TObject);
    procedure act_cwgl_WebSiteExecute(Sender: TObject);
    procedure act_Pk_KsKcSetExecute(Sender: TObject);
    procedure act_Pk_InputExecute(Sender: TObject);
    procedure act_Pk_AutoCreateExecute(Sender: TObject);
    procedure act_Pk_KsPcSetExecute(Sender: TObject);
    procedure act_Pk_BrowseExecute(Sender: TObject);
    procedure act_PK_DeleteAllPKRecordExecute(Sender: TObject);
    procedure act_PK_KsxzSetExecute(Sender: TObject);
    procedure act_Cj_PrintDfbExecute(Sender: TObject);
    procedure act_Cj_CjTotalExecute(Sender: TObject);
    procedure act_Cj_CjImportExecute(Sender: TObject);
    procedure act_hlp_HelpExecute(Sender: TObject);
    procedure act_Cj_UploadExecute(Sender: TObject);
    procedure act_Stu_BmData_ClearExecute(Sender: TObject);
    procedure act_cwgl_MailServerInfoSetExecute(Sender: TObject);
  private
    { Private declarations }
    Wizard: TWizard;
    StatusDisplay: TStatusDisplay;
    procedure FillBackGround;
    procedure MdiChildFormShow(Sender:TObject);
    procedure SetWinPos(vWin:TForm);
    procedure UpdateStatus;
    procedure QueryEndSession(var Msg:TMessage);Message WM_QueryEndSession;
    procedure ShowMdiChildForm(const FormClass:TFormClass);//显示子窗口
    procedure InitMenuItem;//初始化菜单项目
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation
uses Net, udm, uCzyRightSet, uCzyEdit,uChangeCzyPwd,uKsInfoBrowse,uPrintBHSet,uSchoolSet,uRoomSet,
  uUserLoginLog, uOnlineUpdateSet, uIpSet, uNetBmTimeSet,uMzDmSet,uZzMmSet,uEnglishDjKsSet,uJsjDjKsSet,
  uWebMessagePublish,uLockScreen,uSysLog,uReportDesign,uBkZyLbSet,uBkZySet,uSfDmSet,uKsBmEdit,
  uKsBmConfirm,uKsKcSet,uZkzEdit,uAutoPkInput,uKcRoomEdit,uZkzInfoBrowse,uKsXzSet,uInitKsCjb,uCjTotal,
  uCjInput,uCjBrowse,uKsDfbPrint,uCjImport,uCjUpload,uMailServerInfoSet;

{$R *.dfm}

procedure TMain.act_Cj_CjBrowseExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCjBrowse);
end;

procedure TMain.act_Cj_CjImportExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCjImport);
end;

procedure TMain.act_Cj_CjInputExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCjInput);
end;

procedure TMain.act_Cj_CjTotalExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCjTotal);
end;

procedure TMain.act_Cj_InitKsCjbExecute(Sender: TObject);
begin
  ShowMdiChildForm(TInitKsCjb);
end;

procedure TMain.act_Cj_PrintDfbExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsDfbPrint);
end;

procedure TMain.act_Cj_UploadExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCjUpload);
end;

procedure TMain.act_hlp_aboutExecute(Sender: TObject);
var
  fn :string;
begin
  fn := ExtractFilePath(ParamStr(0))+'About.exe';
  if FileExists(fn) then
  begin
    RunAndWait(fn,SW_SHOW);
    UpdateStatus;
  end else
    MessageBox(Handle, '关于本程序文件：About.exe 未找到！　　', '系统提示',
      MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TMain.act_hlp_HelpExecute(Sender: TObject);
var
  fn:string;
begin
  fn := ExtractFilePath(ParamStr(0))+'Help.hlp';
  if FileExists(fn) then
    ShellExecute(Handle,'open',PChar(fn),nil,nil,SW_SHOWNORMAL)
  else
    MessageBox(Handle, PChar('帮助文件'+fn+'未找到，请检查后重试！　'), '系统提示',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
end;

procedure TMain.act_sys_ChgCzyPwdExecute(Sender: TObject);
begin
  ShowMdiChildForm(TChangeCzyPwd);
end;

procedure TMain.act_CkMoneyExecute(Sender: TObject);
begin
  Application.MessageBox('财务接口系统连接失败！请检查接口参数设置是否正确！　　'
    + #13#10 + '如果参数设置正确，请与财务管理部门联系！', '系统提示', MB_OK +
    MB_ICONSTOP);
end;

procedure TMain.act_cwgl_AuditAndIntoExecute(Sender: TObject);
begin
  //ShowMdiChildForm(TMoneyPayCheck);
end;

procedure TMain.act_cwgl_MailServerInfoSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TMailServerInfoSet);
end;

procedure TMain.act_cwgl_NetBankLoginExecute(Sender: TObject);
var
  sUrl:string;
begin
  if Application.MessageBox('真的要登陆银行B2C商户页面查询网银交易记录吗？　　',
    '系统提示', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDYES then
  begin
    sUrl := vobj_Admin.GetNetPayQueryUrl;
    if sUrl='' then
    begin
      Application.MessageBox('B2C商户查询网址为空，请在系统设置菜单下的　　' +
        #13#10 + '网银信息设置窗口中进行相关的设置！', '系统提示', MB_OK +
        MB_ICONINFORMATION + MB_TOPMOST);
      Exit;  
    end;
    ShellExecute(Handle,'open',PChar(sUrl),nil,nil,SW_SHOW);
  end;
end;

procedure TMain.act_cwgl_NetPaySetExecute(Sender: TObject);
begin
  //TNetPayTimeSet.Create(nil).Show;
end;

procedure TMain.act_cwgl_SfInfoPublishExecute(Sender: TObject);
begin
  ShowMdiChildForm(TWebMessagePublish);
end;

procedure TMain.act_cwgl_WebSiteExecute(Sender: TObject);
var
  sWebSrvUrl:string;
begin
  sWebSrvUrl := vobj_Admin.GetWebSrvUrl;
  if sWebSrvUrl='' then
    MessageBox(Handle, 'Web服务器网址信息读取失败！请配置网站参数！　', 
      '系统提示', MB_OK + MB_ICONSTOP + MB_TOPMOST)
  else
    ShellExecute(Handle,'open',PChar(sWebSrvUrl),nil,nil,SW_SHOW);
end;

procedure TMain.act_cwsf_POSExecute(Sender: TObject);
begin
  //ShowMdiChildForm(TPosPay);
end;

procedure TMain.act_Cwsf_PrintSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TPrintBHSet);
end;

procedure TMain.act_cwsf_UpdateReportExecute(Sender: TObject);
begin
  if Application.MessageBox('确定要更新本地报表模板文件吗？　　', '系统提示',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    dm.UpdateReportFile(True);
  end;
end;

procedure TMain.act_sys_CzyExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCzyEdit);//Modal;
end;

procedure TMain.act_CzyQXExecute(Sender: TObject);
begin
  TCzyRightSet.Create(nil).ShowModal;
end;

procedure TMain.act_sys_CzyRightExecute(Sender: TObject);
begin
  ShowMdiChildForm(TCzyRightSet);
end;

procedure TMain.act_Data_BkLbSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TBkZyLbSet);
end;

procedure TMain.act_Data_BkZySetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TBkZySet);
end;

procedure TMain.act_Data_EnglishLbSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TEnglishDjKsSet);
end;

procedure TMain.act_Data_JsjLbSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TJsjDjKsSet);
end;

procedure TMain.act_Data_MzExecute(Sender: TObject);
begin
  ShowMdiChildForm(TMzDmSet);
end;

procedure TMain.act_Data_SchoolSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TSchoolSet);
end;

procedure TMain.act_Data_SfDmSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TSfDmSet);
end;

procedure TMain.act_Data_ZzmmExecute(Sender: TObject);
begin
  ShowMdiChildForm(TZzMmSet);
end;

procedure TMain.act_DdMoneyExecute(Sender: TObject);
begin
  Application.MessageBox('财务接口系统连接失败！请检查接口参数设置是否正确！　　'
    + #13#10 + '如果参数设置正确，请与财务管理部门联系！', '系统提示', MB_OK +
    MB_ICONSTOP);
end;

procedure TMain.act_sys_ExitExecute(Sender: TObject);
begin
  //gbCanClose := True;
  Close;
end;

procedure TMain.act_Win_HintMessageExecute(Sender: TObject);
begin
  if act_Win_HintMessage.Checked then
  begin
    if Assigned(StatusDisplay) then
    begin
       StatusDisplay.Close;
       FreeAndNil(StatusDisplay);
    end;
    act_Win_HintMessage.Checked := False;
  end else
  begin
    if not Assigned(StatusDisplay) then
    begin
      StatusDisplay := TStatusDisplay.Create(Self);
      StatusDisplay.Left := Self.ClientWidth-StatusDisplay.Width-6;
      StatusDisplay.Top := 1;
    end;
    StatusDisplay.Show;
    act_Win_HintMessage.Checked := True;
  end;
end;

procedure TMain.act_Interface_KsxtSetExecute(Sender: TObject);
var
  sHint:string;
begin
  sHint := TAction(Sender).Caption;
  sHint := '对不起！接口参数未知！请与考试系统软件提供商联系！';
  MessageBox(Handle, PChar(sHint+'　　'), '系统提示', MB_OK + MB_ICONINFORMATION +
    MB_DEFBUTTON2 + MB_TOPMOST);
end;

procedure TMain.act_Interface_OtherExecute(Sender: TObject);
var
  sHint:string;
begin
  sHint := TAction(Sender).Caption;
  sHint := '对不起！其他业务扩展接口请与系统管理员联系！';
  MessageBox(Handle, PChar(sHint+'　　'), '系统提示', MB_OK + MB_ICONINFORMATION +
    MB_DEFBUTTON2 + MB_TOPMOST);
end;

procedure TMain.act_Interface_XjglExecute(Sender: TObject);
var
  sHint:string;
begin
  sHint := TAction(Sender).Caption;
  sHint := '接口参数未知！请与系统管理员或教务系统软件提供商联系！';
  MessageBox(Handle, PChar(sHint+'　'), '系统提示', MB_OK + MB_ICONINFORMATION +
    MB_DEFBUTTON2 + MB_TOPMOST);
  //ShowMdiChildForm(TIntf_Jwxt);
end;

procedure TMain.act_Pk_AutoCreateExecute(Sender: TObject);
begin
  ShowMdiChildForm(TAutoPkInput);
end;

procedure TMain.act_Pk_BrowseExecute(Sender: TObject);
begin
  ShowMdiChildForm(TZkzInfoBrowse);
end;

procedure TMain.act_Pk_InputExecute(Sender: TObject);
begin
  ShowMdiChildForm(TZkzEdit);
end;

procedure TMain.act_Pk_KsKcSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsKcSet);
end;

procedure TMain.act_Pk_KsPcSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKcRoomEdit);
end;

procedure TMain.act_PK_KsxzSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsxzSet);
end;

procedure TMain.act_Pk_RoomSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TRoomSet);
end;

procedure TMain.act_ReportDesignExecute(Sender: TObject);
begin
  ShowMdiChildForm(TReportDesign);
end;

procedure TMain.act_sys_IpSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TIpSet);
end;

procedure TMain.act_sys_OnlineUpdateSetExecute(Sender: TObject);
begin
  TOnlineUpdateSet.Create(nil).ShowModal;
end;

procedure TMain.act_hlp_RegExecute(Sender: TObject);
var
  fn :string;
begin
  fn := ExtractFilePath(ParamStr(0))+'SysReg.exe';
  if FileExists(fn) then
  begin
    RunAndWait(fn,SW_SHOW);
    UpdateStatus;
  end else
    MessageBox(Handle, '系统注册工具：SysReg.exe 未找到！　　', '系统提示',
      MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TMain.act_sys_SysLogExecute(Sender: TObject);
begin
  ShowMdiChildForm(TSysLog);
end;

procedure TMain.act_cwgl_SfCsSetExecute(Sender: TObject);
begin
  ShowMdiChildForm(TNetBmTimeSet);
end;

procedure TMain.act_sys_LockScreenExecute(Sender: TObject);
begin
  TLockScreen.Create(Self).ShowModal;
end;

procedure TMain.act_StudentExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsInfoBrowse);
end;

procedure TMain.act_Stu_BmBrowseExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsInfoBrowse);
end;

procedure TMain.act_Stu_BmConfirmExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsBmConfirm);
end;

procedure TMain.act_Stu_BmData_ClearExecute(Sender: TObject);
var
  sOk:string;
  iCount:Integer;
begin
  if MessageBox(Handle, '真的清空考生报名表中的所有的考生报名记录吗？　',
    '系统提示', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDNO then
  begin
    Exit;
  end;

  iCount := vobj_Admin.GetRecordCount('考生报名表');
  if iCount>0 then
  begin
    if MessageBox(Handle, PChar('严重警告！' + #13#10#13#10 +
      '　　数据库中已存在【'+IntToStr(iCount)+'】条考生报名记录！真的要删除它们吗？　'),
      '系统提示', MB_YESNO + MB_ICONSTOP + MB_DEFBUTTON2 +
      MB_TOPMOST) = IDNO then
    begin
      Exit;
    end;
  end;

  if not InputQuery('操作确认','请输入【OK】两个字符以确认删除：',sOK) then Exit;
  if UpperCase(sOk)<>'OK' then Exit;

  if dm.ExecSql('delete from 准考证表') and dm.ExecSql('delete from 考生报名表') then
    MessageBox(Handle, '操作完成！考生报名表中的所有记录已删除！　',
      '系统提示', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TMain.act_Stu_BmInputExecute(Sender: TObject);
begin
  ShowMdiChildForm(TKsBmEdit);
end;

procedure TMain.act_sys_LoginLogExecute(Sender: TObject);
begin
  ShowMdiChildForm(TUserLoginLog);
end;

procedure TMain.act_hlp_UpdateExecute(Sender: TObject);
begin
  if not vobj_Admin.RegIsOK then
  begin
    MessageBox(Handle, '未注册系统不能升级，升级前请先注册！　　',
      '不允许升级', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  try
    auAutoUpgrader1.AutoCheck := False;
    auAutoUpgrader1.InfoFileURL := dm.GetClientAutoUpdateUrl;
    auAutoUpgrader1.ShowMessages := auAutoUpgrader1.ShowMessages+[mNoUpdateAvailable];
    auAutoUpgrader1.CheckUpdate;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMain.act_PK_DeleteAllPKRecordExecute(Sender: TObject);
var
  sOk:string;
  iCount:Integer;
begin
  if MessageBox(Handle, '真的清空排考表中的所有的排考记录吗？　',
    '系统提示', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDNO then
  begin
    Exit;
  end;

  iCount := vobj_Admin.GetRecordCount('准考证表');
  if iCount>0 then
  begin
    if MessageBox(Handle, PChar('严重警告！' + #13#10#13#10 +
      '　　数据库中已存在【'+IntToStr(iCount)+'】条排考记录！真的要删除它们吗？　'),
      '系统提示', MB_YESNO + MB_ICONSTOP + MB_DEFBUTTON2 +
      MB_TOPMOST) = IDNO then
    begin
      Exit;
    end;
  end;

  if not InputQuery('操作确认','请输入【OK】两个字符以确认删除：',sOK) then Exit;
  if UpperCase(sOk)<>'OK' then Exit;

  if dm.ExecSql('delete from 准考证表') and dm.ExecSql('delete from 考场编排表') then
    MessageBox(Handle, '操作完成！排考表中的所有排考记录已删除！　',
      '系统提示', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TMain.act_Win_WizardExecute(Sender: TObject);
begin
{
  if act_Win_Wizard.Checked then
  begin
    if Assigned(Wizard) then
    begin
       Wizard.Close;
       //FreeAndNil(Wizard);
    end;
    act_Win_Wizard.Checked := False;
  end else
  begin
    //if Assigned(Wizard) then
    begin
      Wizard := TWizard.Create(Self);
    end;
    Wizard.Show;
    act_Win_Wizard.Checked := True;
  end;
  //Self.ActionManger1.UpdateAction(nil);
}
end;

procedure TMain.act_Win_WizardUpdate(Sender: TObject);
begin
  //act_Wizard.Checked := not act_Wizard.Checked;
end;

procedure TMain.act_ZdMoneyExecute(Sender: TObject);
begin
  Application.MessageBox('财务接口系统连接失败！请检查接口参数设置是否正确！　　'
    + #13#10 + '如果参数设置正确，请与财务管理部门联系！', '系统提示', MB_OK +
    MB_ICONSTOP);
end;

procedure TMain.auAutoUpgrader1DoOwnCloseAppMethod(Sender: TObject);
begin
  gbCanClose := True;
  Close;
end;

procedure TMain.FillBackGround;
var
  fn:string;
  w,h:Integer;
  Image1 :TImage;
begin
  fn := ExtractFilePath(ParamStr(0))+'Image\bg.jpg';
  if not FileExists(fn) then
    Exit;
  Image1 := TImage.Create(nil);
  try
    Image1.AutoSize := True;
    Image1.Picture.LoadFromFile(fn);
    h := 1;
    while h < Self.ClientHeight do
    begin
      w := 1;
      while w < Self.ClientWidth do
      begin
        Self.Canvas.Draw(w,h,Image1.Picture.Graphic);
        w := w+Image1.Width;
      end;
      h := h+Image1.Height;
    end;
  finally
    FreeAndNil(Image1);
  end;
end;

procedure TMain.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
  var Resize: Boolean);
begin
  if Screen.Width>=1024 then
  begin
    if NewWidth<1024 then
      NewWidth := 1024;
    if NewHeight<750 then
      NewHeight := 750;
  end;

  if NewWidth<800 then
    NewWidth := 800;
  if NewHeight<600 then
    NewHeight := 600;
  Resize := True;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crHourGlass;
  if not AppSrvIsOK then  //连接服务器失败
     Exit;
  try
     vobj_Admin.CzyLogOut(gb_Czy_ID);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not gbCanClose then
    if MessageBox(Handle, pchar('确定要退出'+Application.Title+'吗？　　'), '系统提示',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      gbCanClose := True;
    end;
  CanClose := gbCanClose;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  Self.Top := 1;
  Self.Left := 1;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height;

  Application.OnMessage:=TMessageHandler.AppMessage;  //ENTER --> TAB  
  gbCanClose := False;
  lbl_CzyName.Caption := gb_Czy_Name;
  UpdateStatus;//更新状态
  //vobj_Admin.GetCurSfSetInfo(gb_Cur_Xn,gb_Cur_Sfmc,gb_Cur_StartTime,gb_Cur_EndTime);
end;

procedure TMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift=[]) and (Key=VK_F5) then
    act_Win_HintMessage.OnExecute(Self);
end;

procedure TMain.FormPaint(Sender: TObject);
begin
  FillBackGround;
end;

procedure TMain.FormResize(Sender: TObject);
begin
  if Self.WindowState<>wsMaximized then
  begin
    Self.Top := 1;
    Self.Left := 1;
  end;
  img_Show.Left := Trunc((Self.Width-img_Show.Width)/2);
  img_Show.Top := Trunc((Self.Height-img_Show.Height)/2)-5;
  lbl_Ver.Left := img_Show.Left+502;
  lbl_Ver.Top := img_Show.Top+277;
  lbl_Year.Left := img_Show.Left+25;
  lbl_Year.Top := img_Show.Top+450;

  if Self.WindowState<>wsMaximized then
  begin
    Self.Top := 1;
    Self.Left := 1;
  end;
  if StatusDisplay<>nil then
  begin
    StatusDisplay.Left := Self.ClientWidth-StatusDisplay.Width-6;
    StatusDisplay.Top := 1;
  end;
end;

procedure TMain.FormShow(Sender: TObject);
begin
  Status_SrvInfo.Caption := DM.GetConnInfo;
  InitMenuItem;
  //if gb_Czy_Level='-1' then
 //   act_Win_Wizard.OnExecute(Self);
  act_Win_HintMessage.OnExecute(Self);
  {
  with TPrintBHSet.Create(nil) do
  begin
    Left := Trunc((Screen.Width-Width)/2);
    Top := Trunc((Screen.Height-Height)/2)-50;
    Show;
  end;
  }
  tmr1.Enabled := False;
end;

procedure TMain.InitMenuItem;
var
  i,iPos: Integer;
  sqlstr:string;
  sMenu:string;
  bEnabled,bVisible:Boolean;
  function IsEnabled:Boolean;
  begin
    Result := False;
    cds_Temp.First;
    while not cds_Temp.Eof do
    begin
      if (sMenu=cds_Temp.FieldByName('项目名称').AsString) //then
         or ((cds_Temp.FieldByName('MenuId').AsInteger<100) and   //删除【01.系统管理】中的【01.】后再来比较
            (sMenu=Copy(cds_Temp.FieldByName('项目名称').AsString,4,100))) then
      begin
        Result := cds_Temp.FieldByName('是否可用').AsBoolean ;// or (cds_Temp.FieldByName('Tag').AsString='-1');
        Break;
      end;
      cds_Temp.Next;
    end;
  end;
begin
  cds_Temp.Close;
  sqlstr := 'select * from view_操作员权限表 where 操作员编号='+quotedstr(gb_Czy_ID);
  cds_Temp.XMLData := DM.OpenData(sqlstr);
  with Main.ActionManger1 do
  begin
    for I := 0 to ActionCount - 1 do
    begin
      //str1 := Actions[i].Category;
      sMenu := TAction(Main.ActionManger1.Actions[i]).Caption;

      if gb_Czy_Level = '-1' then
      begin
        bEnabled := True;
        bVisible := True;
      end else
      begin
        if (sMenu='操作员管理(&C)') or (Pos('权限管理',sMenu)>0) or
           (sMenu='网银信息设置(&N)') or (sMenu='系统注册(&R)') then
          bEnabled := False
        else
          bEnabled := IsEnabled;
        bVisible := bEnabled;

      end;
      if (sMenu='网银信息设置(&N)') then // or (sMenu='系统注册(&R)') then
        bVisible := True;
      if (sMenu='退出系统(&X)') or (sMenu='密码修改(&P)') or (sMenu='锁屏离开(&K)') then
      begin
        bEnabled := True;
        bVisible := True;
      end;

      TAction(Main.ActionManger1.Actions[i]).Enabled := bEnabled;
      TAction(Main.ActionManger1.Actions[i]).Visible := bVisible;
    end;
  end;
  for i:=0 to Main.dxBarManager1.ItemCount-1 do
  begin
    if Main.dxBarManager1.Items[i] is TdxBarSubItem then  //is TdxBarItem then //
    begin
      sMenu := Main.dxBarManager1.Items[i].Caption;
      iPos := Pos('[&',sMenu);
      if iPos>0 then
        sMenu := Copy(sMenu,1,iPos-1);
      if (gb_Czy_Level = '-1') or (IsEnabled) then
      begin
        //main.dxBarManager1.Items[i].Enabled := IsEnabled;
        Main.dxBarManager1.Items[i].Visible := ivAlways;
      end
      else
      begin
        //main.dxBarManager1.Items[i].Enabled := IsEnabled;
        Main.dxBarManager1.Items[i].Visible := ivNever;
      end;
    end;
  end;
  cds_Temp.Close;
end;

procedure TMain.MdiChildFormShow(Sender:TObject);
var
  vWin: TForm;
begin
  if Sender is TForm then
  begin
    vWin := Sender as TForm;
    SetWinPos(vWin);
  end;
end;

procedure TMain.QueryEndSession(var Msg: TMessage);
begin
  gbCanClose := True;
  Msg.Result := 1; //关闭
end;

procedure TMain.SetWinPos(vWin: TForm);
  function FormIsExists(const sFormName:string):Boolean;
  var i:Integer;
  begin
    Result:=False;
    for i:=0 to Self.MDIChildCount-1 do
    begin
      if UpperCase(Self.MDIChildren[i].Name)=UpperCase(sFormName) then
      begin
        Result:=True;
        Break;
      end;
    end;
  end;
var
  ii:Integer;
begin
  ii := 0;
  if FormIsExists('Wizard') then
    inc(ii);
  if FormIsExists('StatusDisplay') then
    Inc(ii);
//++++++++++++++++++++++++++++++++++
//  vWin.Position := poMainFormCenter
//++++++++++++++++++++++++++++++++++

  ii := Self.MDIChildCount-ii;
  if ii=1 then
    vWin.Position := poMainFormCenter
{  else
  begin
    vWin.Top := Trunc((Self.ClientHeight-vWin.Height)/2)-ii*30-10;
    vWin.Left := Trunc((Self.ClientWidth-vWin.Width)/2)-ii*40-15;
  end;
  if vWin.Top<40 then
    vWin.Top := 30+ii*5;
  if vWin.Left<30 then
    vWin.Left := 35+ii*5;
}
end;

procedure TMain.ShowMdiChildForm(const FormClass:TFormClass);
var
  myForm: TForm;
  FormName: string;

  function ActionFlagYesNo: Boolean;
  var i:Integer;
  begin
    Result:=False;
    for i:=0 to Self.MDIChildCount-1 do
    begin
      if UpperCase(Self.MDIChildren[i].Name)=UpperCase(FormName) then
      begin
        myForm := Self.MDIChildren[i];
        Result:=True;
        Break;
      end;
    end;
  end;
begin
  myForm := nil;
  FormName := FormClass.ClassName;
  FormName := Copy(FormName,2,Length(FormName)-1);

  if ActionFlagYesNo then
  begin
    if myForm.WindowState=wsMinimized then
      myForm.WindowState := wsNormal;
    MyForm.BringToFront;
    myForm.SetFocus;
  end
  else
  begin
    myForm := FormClass.Create(Self);
    //myForm.OnCreate := MdiChildFormShow;
    //myForm.OnShow := MdiChildFormShow;//(myForm);
    //if not (myForm.Position in [poMainFormCenter,poScreenCenter,poDesktopCenter]) then
    //SetWinPos(myForm);
    myForm.Show;
  end;
  //当然如果你想知道某个字窗体是否为活动的还可以用MyChild.Active来判断。
end;

procedure TMain.tmr1Timer(Sender: TObject);
begin
  tmr1.Enabled := False;
  //dm.UpdateReportFile(True);
end;

procedure TMain.tmr_CountTimer(Sender: TObject);
begin
  if (not Self.Showing) or (Self.WindowState=wsMinimized) then
    Exit;

  Screen.Cursor := crHourGlass;
  try
    Status_SrvInfo.Caption := DM.GetConnInfo;
    try
      if StatusDisplay<>nil then
        StatusDisplay.DisplayStatus;
    except
      Exit;
    end;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TMain.UpdateStatus;
var
  IsOK:Boolean;
begin
  Caption := Application.Title+' Ver '+Get_Version;
  IsOK := vobj_Admin.RegIsOK;
  gb_dwmc := vobj_Admin.GetUserInfo;
  auAutoUpgrader1.AutoCheck := IsOK;
  auAutoUpgrader1.VersionNumber := Get_Version;
  auAutoUpgrader1.InfoFileURL := vobj_Admin.GetClientAutoUpdateUrl;
  if IsOK then
  begin
    Caption := Caption + ' [已注册版本]';
  end else
  begin
    Caption := Caption + ' [未注册版本]';
  end;
  lbl_Year.Caption := FormatDateTime('yyyy·南昌',now);
  lbl_Ver.Caption := 'Ver '+ Get_Version;
end;

procedure TMain.act_Win_CloseAllExecute(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Self.MDIChildCount - 1 do
  begin
      if (UpperCase(Self.MDIChildren[i].Name)<>UpperCase('Wizard')) and
         (UpperCase(Self.MDIChildren[i].Name)<>UpperCase('StatusDisplay')) then
      begin
        Self.MDIChildren[i].Close;
      end;
  end;

end;

end.

