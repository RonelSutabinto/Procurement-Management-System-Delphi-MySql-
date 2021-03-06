program fpCanvas;

uses
  Forms,
  FlexAccountIntro in 'FlexAccountIntro.pas' {IntroForm},
  Data in 'Data.pas' {AcctData: TDataModule},
  FlexMenu in 'FlexMenu.pas' {FlexAccountMainMenuForm},
  MODTOOLS in 'MODTOOLS.PAS',
  PayeeList in 'PayeeList.pas' {PayeeListForm},
  datatransfer in 'datatransfer.pas' {DataTransferForm},
  InventoryReportsDownload in 'InventoryReportsDownload.pas' {InvReportsDown},
  FitlerUsers in 'FitlerUsers.pas' {FrmFilterUser};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Flexi Canvasser Requisition';
  Application.CreateForm(TIntroForm, IntroForm);
  Application.CreateForm(TAcctData, AcctData);
  Application.CreateForm(TDataTransferForm, DataTransferForm);
  Application.CreateForm(TInvReportsDown, InvReportsDown);
  Application.CreateForm(TFrmFilterUser, FrmFilterUser);
  Application.CreateForm(TFlexAccountMainMenuForm, FlexAccountMainMenuForm);
  Application.Run;
end.
