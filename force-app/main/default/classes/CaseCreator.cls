/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 03-13-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class CaseCreator {
  public static void createCase() {
    Case newCase = new Case();
    newCase.Subject = 'Hi there';
    newCase.Status = 'New';
    String acctName = [
      SELECT Id, Name
      FROM Account
      WHERE Name = 'Kevin'
      LIMIT 1
    ]
    ?.Name;
    System.debug('This is the account name ::: ' + acctName);
    //Inserting cases attempt 5
    insert newCase;
  }
}
