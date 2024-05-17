/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-17-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger  CreatingCase on Contact (after  insert) {

    //LIst to store the records
    list<Case> listcase = new list<Case>();

    //Iteration in all new contact by usinng trigger.new
    for(Contact con: trigger.new){

        //Creating a case
        Case cas = new Case ();

        //Adding the value to fields of a case
        cas.ContactId = con.Id;
        cas.Subject = 'Test';

        //adding the new case created to the list 'listcase'
        listcase.Add(cas);

    }

//Performing the insert od the list
insert listcase;
}