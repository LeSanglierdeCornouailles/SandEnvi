/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
global class  BatchCreateTaskunderOppWhichAreClosed implements  Database.Batchable<SObject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        String query = 'SELECT id, contactId, Name FROM Opportunity WHERE isClosed = True';
        return Database.getQueryLocator(query);
    }

    global void execute (Database.BatchableContext bc, List<Opportunity>ListOpportunity)
    {

        List<Task> createTaskList = new List<Task>();
    

            for(Opportunity opp : ListOpportunity )
            {
                Task newTaskToBeCreated = new Task();
                newTaskToBeCreated.WhatId = opp.Id;
                newTaskToBeCreated.WhoId = opp.ContactId;
                newTaskToBeCreated.Subject = opp.Name;
                newTaskToBeCreated.Description = 'Contact the this opp';
                createTaskList.add(newTaskToBeCreated);
            }

        insert createTaskList ;
    }
    global  void finish(Database.BatchableContext bc)
    {
    }
}

