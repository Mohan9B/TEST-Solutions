public class ConTriggerUtility {
	Public Static Void countContacts(List<Contact> conList) {
        Set<Id> accIdSet=new Set<Id>();
        for(Contact con: conList) {
            if(con.AccountId!=Null) {
                accIdSet.add(con.AccountId);
            }
        }
        if(!accIdSet.isEmpty()) {
            List<Account> accList=[Select Id, Number_of_Contacts__c, (Select Id from Contacts) from Account where Id In: accIdSet];
            List<Account> toUpdateAccList=new List<Account>();
            for(Account acc: accList) {
                Integer numberofContacts=acc.Contacts.size();
                acc.Number_of_Contacts__c=numberofContacts;
                toUpdateAccList.add(acc);
            }
            if(!toUpdateAccList.isEmpty()) {
                update toUpdateAccList;
            }
        }
    }
}