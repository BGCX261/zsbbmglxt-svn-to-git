library ZsbBmWebSrv;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  uZsbBmWebModule in 'uZsbBmWebModule.pas' {ZsbBmWebModule: TWebModule},
  uZsbBmSoapDM in 'uZsbBmSoapDM.pas' {ZsbBmSoapDM: TSoapDataModule},
  Net in '..\public\Net.pas',
  PwdFunUnit in '..\public\PwdFunUnit.pas',
  uZsbBmIntf in 'uZsbBmIntf.pas',
  uZsbBmImpl in 'uZsbBmImpl.pas',
  uAdminIntf in 'uAdminIntf.pas',
  uAdminImpl in 'uAdminImpl.pas',
  EncdDecdEx in '..\public\EncdDecdEx.pas';

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(TZsbBmWebModule, ZsbBmWebModule);
  Application.Run;
end.
