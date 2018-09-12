public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acntslist)
    {
        for(Account a: acntslist)
        {
            a.ShippingState = a.BillingState;
        }
        
    }

}