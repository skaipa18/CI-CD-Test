public class PriceFieldUpdate
{
    public static void DiscountApply(list<Parker_Inc__c> VarParkerRecordDate)
    {
        for(Parker_Inc__c VarP:VarParkerRecordDate)
        {
            if(VarP.Price__c > 100)
            {
               VarP.Price__c =  VarP.Price__c  - 20;
               
            }
       // system.debug('Object Value is '+o);    
        
        
        }
    }
}