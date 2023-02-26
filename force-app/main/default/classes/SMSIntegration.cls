public class SMSIntegration {
    
    public static void SMSIntegrationex(){
        
        Http httpsms = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        
        request.setEndpoint('https://www.fast2sms.com/dev/bulkV2');
        request.setMethod('POST');
        request.setHeader('authorization', '8gMqQKBNxrfU20au9AHTi7FEsR4wPhYp1CjSzykJt3GZOd6e5mdvCOSZFsw6yQ41hoN8WTBtPjiDAKYJ');
        //request.setHeader('variables_values', 'Sending SMS through integration');
        //request.setHeader('route', 'otp');
        //request.setHeader('numbers', '[8978377676,8978377676]');
       //request.setBody('{"message":"Hai This is swarna","route":"q","Numbers":"+918978377676","authorization", "8gMqQKBNxrfU20au9AHTi7FEsR4wPhYp1CjSzykJt3GZOd6e5mdvCOSZFsw6yQ41hoN8WTBtPjiDAKYJ"}');
       request.setBody('{"message":"Hai This is swarna","route":"q","Numbers":"[8978377676]"}'); 
        response = httpsms.send(request);
        system.debug('Response ori  -->  '+response.getStatus());
        
        
        if(response.getStatus() == 'OK'){
            system.debug('SUCCESS response '+response.getBody());
            system.debug('SUCCESS response '+response.getStatusCode());
        }
        else{
            system.debug('FAILURE response '+response.getBody());
            system.debug('FAILURE response '+response.getStatusCode());
        }
        
    }

}