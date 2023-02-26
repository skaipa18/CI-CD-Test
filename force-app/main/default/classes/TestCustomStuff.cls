public class TestCustomStuff {
    
    public static string myname;
    public static integer number1;
    
    public static void gettingCustomData(){
        myname = 'KVNS';
        TestCS01__c cs = TestCS01__c.getOrgDefaults();
        system.debug('CS Org Defaults  '+cs);
        TestCS01__c cs1 = TestCS01__c.getInstance();
        system.debug('CS1 Org Defaults  '+cs1);
        map<string,TestCMT01__mdt> mdt = TestCMT01__mdt.getAll();
        system.debug('MDT  get All   '+mdt);
        TestCMT01__mdt mdt1 = TestCMT01__mdt.getInstance('Text02');
        system.debug('MDT1   get Instance  '+mdt1);
    }
    
    public static void restCallOut(){
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        Http http = new Http();
        request.setEndpoint('callout:TestNC');
        request.setMethod('GET');
        response = http.send(request);
        system.debug('Response  '+response);
        system.debug('Response Code  '+response.getStatusCode());
        system.debug('Response Body  '+response.getBody());
        //system.debug('Response Header  '+response.getHeader();
    }
    public static void sendingEmails(){
        
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        string[] emailAddress = new string[]{'k.swarnakumar@hotmail.com','kumar.kaipa@gmail.com'};
        email.toaddresses = emailAddress;
        email.setSubject('Hai Test Email !!!');
        email.setHtmlBody('HAI THIS IS TEST EMAIL');
               
        Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage>{email};
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
    }

}