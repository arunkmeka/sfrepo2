trigger AccountTrigger on Account (before insert,before update,before delete,after undelete,
                                  after insert, after update, after delete) 
{
   if(Trigger.isBefore && Trigger.isInsert)
   {
       AccountTriggerHandler.CreateAccounts(Trigger.New);
   }
}