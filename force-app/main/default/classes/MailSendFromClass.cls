public class MailSendFromClass {

    public string tomail{get;set;}
    public string ccmail{get;set;}
public void SendEmail(){
Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
    string[] to = new string[] {tomail};
    string[] cc = new string[] {ccmail};    
    message.setToAddresses(to);
    message.setSubject('Email Sending Thru Apex');
    message.setCcAddresses(cc);
    message.setPlainTextBody('Hi '+
                              'This is Test Mail Sending Through Apex Class.'+
                              'Please ignore as it is for testing purpose'+
                              'Thanks.');
    
Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage> {message};
Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
if (results[0].success) {
System.debug('The email was sent successfully.');
} else {
System.debug('The email failed to send: '
+ results[0].errors[0].message);
}
    }   
}