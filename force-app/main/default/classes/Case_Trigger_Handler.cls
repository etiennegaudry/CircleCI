/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 03-13-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Case_Trigger_Handler extends TriggerHandler 
{
    public override void beforeInsert()
    {
        Case_Utility.updateCaseSubject(trigger.new);
        Case_Utility.createCase();//ok
    }    
}