public class ConTriggerHandler {
    public static void doBeforeInsert(List<Contact> newConList){
       
    }
    public static void doAfterInsert(List<Contact> newConList, Map<Id, Contact> newConMap){
        ConTriggerUtility.countContacts(newConList);
    }
    public static void doBeforeUpdate(List<Contact> newConList, Map<Id, Contact> newConMap, List<Contact> oldConList, Map<Id, Contact> oldConMap){
        
    }
    public static void doAfterUpdate(List<Contact> newConList, Map<Id, Contact> newConMap, List<Contact> oldConList, Map<Id, Contact> oldConMap){
        List<Contact> conList=new List<Contact>();
        conList.addAll(newConList);
        conList.addAll(oldConList);
        ConTriggerUtility.countContacts(conList);
    }
    public static void doBeforeDelete(List<Contact> oldConList, Map<Id, Contact> oldConMap){
        
    }
    public static void doAfterDelete(List<Contact> oldConList, Map<Id, Contact> oldConMap){
        ConTriggerUtility.countContacts(oldConList);
    }
    public static void doAfterUndelete(List<Contact> newConList, Map<Id, Contact> newConMap){
        ConTriggerUtility.countContacts(newConList);
    }
}