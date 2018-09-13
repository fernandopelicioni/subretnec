unit Utraducao;

interface
uses
  Windows, consts;
Type
  TTraducao = Class
  private
    class procedure SetResourceString(xOldResourceString: PResStringRec;
                     xValueChanged: PChar);
   public
    class procedure ChangeValues;
  End;
Implementation


{M�todo utilizado para podermos fazer a convers�o em tempo de execu��o das mensagens do Delphi}

class procedure TTraducao.SetResourceString(xOldResourceString: PResStringRec;
xValueChanged: PChar);

var
  POldProtect: DWORD;

begin
VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^),
PAGE_EXECUTE_READWRITE, @POldProtect);
xOldResourceString^.Identifier := Integer(xValueChanged);
VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^), POldProtect,
@POldProtect);
end;

{M�todo utilizado para podemos efetuar a mudan�a das mensagens}

class procedure TTraducao.ChangeValues;
begin
  SetResourceString(@SMsgDlgYes, 'Sim');
  SetResourceString(@SMsgDlgWarning,'Aten��o');
  SetResourceString(@SMsgDlgError, 'Erro');
  SetResourceString(@SMsgDlgInformation,'Information');
  SetResourceString(@SMsgDlgConfirm , 'Confirm');
  SetResourceString(@SMsgDlgYes , '&Sim');
  SetResourceString(@SMsgDlgNo , '&N�o');
  SetResourceString(@SMsgDlgOK , 'OK');
  SetResourceString(@SMsgDlgCancel , 'Cancelar');
  SetResourceString(@SMsgDlgHelp , '&Ajuda');
  SetResourceString(@SMsgDlgHelpHelp , 'Ajuda');
  SetResourceString(@SMsgDlgAbort , '&Abortar');
  SetResourceString(@SMsgDlgRetry , '&Repetir');
  SetResourceString(@SMsgDlgIgnore , '&Ignorar');
  SetResourceString(@SMsgDlgAll , '&Tudo');
  SetResourceString(@SMsgDlgNoToAll , 'N&ao para Tudo');
  SetResourceString(@SMsgDlgYesToAll , 'Sim para &Tudo');
  SetResourceString(@SMsgDlgClose , '&Fechar');
end;

End.


