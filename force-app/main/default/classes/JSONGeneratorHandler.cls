public class JSONGeneratorHandler {
    
    public static void JSONGeneratorMethod(){
        
        system.JSONGenerator JSONGen = system.JSON.createGenerator(true);
        
        JSONGen.writeStartObject();
        //JSONGen.writeString('SampleJSONGenerator');
        JSONGen.writeStringField('Name', 'KVNSkumar');
        JSONGen.writeNumberField('DeptID', 1234);
        JSONGen.writeDateField('Date', Date.newInstance(2022, 03, 23));
        JSONGen.writeFieldName('Phone Numbers');
        JSONGen.writeStartArray();
        JSONGen.writeNumber(121);
        JSONGen.writeNumber(122);
        JSONGen.writeNumber(123);
        JSONGen.writeNumber(124);
        JSONGen.writeNumber(125);
        JSONGen.writeEndArray();
        JSONGen.writeEndObject(); 
        
        system.debug('JSON Generator  : '+JSONGen.getAsString());
        
        
    }
    public static void JSONBulkGeneratorMethod(){
        List<Account> AcctList = new List<Account>();
        AcctList = [SELECT id,name FROM Account Limit 10];
        
        system.JSONGenerator JSONGen = system.JSON.createGenerator(true);
        
        JSONGen.writeStartObject();
        JSONGen.writeFieldName('Account Records');
        
        JSONGen.writeStartArray();
        if(!AcctList.isEmpty()){
            for(Account a : AcctList){
                JSONGen.writeStartObject();
                JSONGen.writeIdField('Account Id', a.Id);
                JSONGen.writeStringField('Account Name', a.Name);
                JSONGen.writeEndObject();
            }
        }
        JSONGen.writeEndArray();
        
        JSONGen.writeEndObject(); 

        system.debug('JSON Generator  : '+JSONGen.getAsString());
    }
    public static void JSONParserMethod(){
        
        string jsonString ='{"Name":"JSON Topic4","Location__c":"Chennai"},{"Name":"JSON Topic5","Location__c":"Hyderabad"}';
        //Corporate_Seminar__c c = (Corporate_Seminar__c) JSON.deserialize(jsonString, Corporate_Seminar__c.class);
        //insert c;
        Corporate_Seminar__c cs = new Corporate_Seminar__c();
        system.JSONParser JSONPar = system.JSON.createParser(jsonString);
        while(JSONPar.nextToken() != null){
            if(JSONPar.getCurrentToken() == JSONtoken.FIELD_NAME && JSONPar.getCurrentName() == 'Name' ){
                JSONPar.nextToken();
                cs.Name = JSONPar.getText();
            }
            if(JSONPar.getCurrentToken() == JSONtoken.FIELD_NAME && JSONPar.getCurrentName() == 'Location__c' ){
                JSONPar.nextToken();
                cs.Location__c = JSONPar.getText();
            }
        }
               
        insert cs;
    }
    
    public static void JSONParserCustomClassMethod(){
        
        string jsonString ='{"name":"JSON Custom Class","depId":1001,"depDate":"2022-03-23","depType":"Digital"}';
        
        GeneralClassForDeserialization GCFD = (GeneralClassForDeserialization) JSON.deserialize(jsonString, GeneralClassForDeserialization.class);
        
        system.debug('Custom Class -->> '+GCFD);
    }

}