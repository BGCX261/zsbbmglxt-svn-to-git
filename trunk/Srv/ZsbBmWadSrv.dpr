program ZsbBmWadSrv;

{$APPTYPE GUI}

uses
  Forms,
  SockApp,
  uZsbBmWebModule in 'uZsbBmWebModule.pas' {ZsbBmWebModule: TWebModule},
  uWadSrvMain in 'uWadSrvMain.pas' {WadSrvMain},
  uZsbBmIntf in 'uZsbBmIntf.pas',
  uZsbBmSoapDM in 'uZsbBmSoapDM.pas' {ZsbBmSoapDM: TSoapDataModule},
  uZsbBmImpl in 'uZsbBmImpl.pas',
  Net in '..\public\Net.pas',
  PwdFunUnit in '..\public\PwdFunUnit.pas',
  uAdminImpl in 'uAdminImpl.pas',
  uAdminIntf in 'uAdminIntf.pas',
  EncdDecdEx in '..\public\EncdDecdEx.pas';

//这个工程文件是好的
  
{$R *.res}

begin
  Application.Initialize;
  Application.Title := '【专升本】报名系统服务器';
  Application.CreateForm(TZsbBmWebModule, ZsbBmWebModule);
  Application.CreateForm(TWadSrvMain, WadSrvMain);
  Application.Run;
end.
