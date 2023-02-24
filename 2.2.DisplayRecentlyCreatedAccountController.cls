public class DisplayRecentlyCreatedAccountController {
	@AuraEnabled
    public static List<Account> callAccountRecords(){
        return [Select Id, Name, AccountNumber, AnnualRevenue, EMAIL__c, Phone, CreatedDate from Account ORDER BY CreatedDate DESC LIMIT 10];
    }
}