/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
global  class SchBatchCreateTaskunderOppWhichAreClosed implements Schedulable{

    global void execute(System.SchedulableContext sc)
    {
        BatchCreateTaskunderOppWhichAreClosed  p = new BatchCreateTaskunderOppWhichAreClosed();
        Database.executeBatch(p);
    }
}
