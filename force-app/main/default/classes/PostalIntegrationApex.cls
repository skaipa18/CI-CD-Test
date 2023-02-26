public class PostalIntegrationApex {
    public string postalcode{get;set;}
    public string responseStringJSON{get;set;}              
    public List<PostalSupportClass> listPostalSupportClass{get;set;}
    string test;
                                    
    //constructor
    public void PostalIntegrationApex1(){
        test='KVNS';
        listPostalSupportClass = new List<PostalSupportClass>();
        //List<PostalSupportClass> listPostalSupportClass = new List<PostalSupportClass>();
        //PostalSupportClass psc = new PostalSupportClass();
        string endPointURL = 'https://api.postalpincode.in/pincode/'+postalcode; 
        Http postalHttp = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPointURL);
        request.setMethod('GET');
        request.setTimeout(20000);
        
        HttpResponse response = postalHttp.send(request);
           system.debug('Status code string: '+response.getStatus());
           system.debug('Status code : '+response.getStatusCode());
        if(response.getStatus() == 'OK'){
            system.debug('Posatl Details : '+response.getBody());
            responseStringJSON = response.getBody();
            //jsonString = response.getBody();
            system.JSONParser JSONDataParser = system.JSON.createParser(response.getBody());
            //PostalSupportClass
            while(JSONDataParser.nextToken() != null){
                
                if(JSONDataParser.getCurrentToken() == JSONtoken.FIELD_NAME  && 
                  JSONDataParser.getCurrentName() == 'Message'){
                    JSONDataParser.nextToken();
                      system.debug('Message Value  '+JSONDataParser.getText());
                }
                if(JSONDataParser.getCurrentToken() == JSONtoken.FIELD_NAME  && 
                  JSONDataParser.getCurrentName() == 'Status'){
                    JSONDataParser.nextToken();
                      system.debug('Status Value  '+JSONDataParser.getText());
                }
                if(JSONDataParser.getCurrentToken() == JSONtoken.FIELD_NAME  && 
                  JSONDataParser.getCurrentName() == 'PostOffice'){
                    JSONDataParser.nextToken();
                      if(JSONDataParser.getCurrentToken() == JSONtoken.START_ARRAY){
                      JSONDataParser.nextToken();
                      while(JSONDataParser.getCurrentToken() == JSONtoken.START_OBJECT){
                          PostalSupportClass psc = (PostalSupportClass) JSONDataParser.readValueAs(PostalSupportClass.class);
                          listPostalSupportClass.add(psc);
                          
                          system.debug('Each Postal Branch  '+psc);
                          JSONDataParser.nextToken();
                              }
                      }     
                }
            }
            
            
        }
        else{
            system.debug('Failed Posatl Details : ');
        }
        
        system.debug('Postal Branches  '+listPostalSupportClass);
    }
    
}