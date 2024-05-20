// Create the account sObject 
//Account acct = new Account(Name='SFDC Accounty');
// insert acct;

//Creating instance
SchBatchCreateTaskunderOppWhichAreClosed scheduling = new SchBatchCreateTaskunderOppWhichAreClosed();
//Scheduling the apex
//Seconds Minutes Hours DayofMonth Month Dayofweek Year
String sch = '0 20 21 20 5 ? 2024';
String jobid = System.Schedule('scheduling apex class', sch, scheduling );
