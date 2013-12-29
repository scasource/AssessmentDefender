program Assessment_Defender;

uses
  Forms,
  Message_Box in 'Message_Box.pas' {MessageBox_FRM},
  Assess_Defend in 'Assess_Defend.pas' {AssessmentDefend_FRM},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  DataModule_PAS in 'DataModule_PAS.pas' {DataModule2: TDataModule},
  DataModule_RPS in 'DataModule_RPS.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAssessmentDefend_FRM, AssessmentDefend_FRM);
  Application.CreateForm(TMessageBox_FRM, MessageBox_FRM);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TDataModule3, DataModule3);
  MessageBox_FRM := TMessageBox_FRM.Create(Application);

  Application.Run;
end.
