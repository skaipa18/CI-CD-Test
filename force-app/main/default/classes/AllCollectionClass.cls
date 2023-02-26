public class AllCollectionClass {
    private static integer subresult;
    private static double divresult;
    
    public static void listdata(){
        list<integer> listvalues = New list<integer>();
        //Adding to the list 
        listvalues.add(10);
        listvalues.add(20);
        listvalues.add(30);
        listvalues.add(40);
        listvalues.add(50);
        system.debug('List Values Are = '+listvalues);
        //Getting the perticuler value from list
        integer index3 = listvalues.get(3);
        system.debug('List Index3 Value Is = '+index3);
        //Setting another value
        listvalues.set(0,15);
        listvalues.set(3,45);
        system.debug('After Set  List Values Are  = '+listvalues);
        //Size Of the list
        integer listsize = listvalues.size();
        system.debug('Size Of The List Is = '+listsize);
        //Each List value
        for(integer i :listvalues){
            system.debug('Each list Value Is : ='+i);
        }        
        //clear the list values
        listvalues.clear();
        system.debug('Afte clear List Values Are = '+listvalues);    
        //Is List Empty()
        boolean status = listvalues.IsEmpty();
        system.debug('List Value Are Empty ? = '+status);
    
    }
    //SET ,No Duplicates and no indexed
    public static void setdata(){
        set<string> setvalues = New set<string>();
        //Adding to the set
        setvalues.add('KVNS');
        setvalues.add('KSK');
        setvalues.add('SKAIPA');
        setvalues.add('SWE');
        setvalues.add('NIYYU');
        system.debug('Set Values Are = '+setvalues);
        //Whether vallue contains ?
        boolean status = setvalues.contains('SWE');
        system.debug('Whether status of   = '+status);
        //Size Of the set
        integer setsize = setvalues.size();
        system.debug('Size Of The List Is = '+setsize);
        //Each Value Of Set
        for(string s :setvalues){
            system.debug('Each Set Value Is : ='+s);
        }
        //clear the Set values
        setvalues.clear();
        system.debug('Afte clear List Values Are = '+setvalues);    
        //Is Set Empty()
        boolean status1 = setvalues.IsEmpty();
        system.debug('List Value Are Empty ? = '+status1);
    
    }    
    //Map(Key,Value)  
    public static void mapdata(){
        map<string,integer> mapdata = New map<string,integer>();
        mapdata.put('EmpNo',1000);
        mapdata.put('BatchNo',120);
        mapdata.put('ServiceNo',456);
        mapdata.put('ECNo',12);
        system.debug('Map Values Are  = '+mapdata);
        //Size Of Map
        integer mapsize = mapdata.size();
        system.debug('Map Size = '+mapsize);
        //Is MAP Empty()
        boolean status = mapdata.IsEmpty();
        system.debug('Map Data IsEmpty ? = '+status);
        //Get the perticuler Key Value 
        system.debug('Getting the Value of Perticuler Key Is = '+mapdata.get('ECNo'));
        //For : Each Key and Value Display
        set<string> AllKeys = mapdata.keyset();
        list<integer> AllValues = mapdata.Values();
        for(string s :AllKeys){
            system.debug('Each Key Is = '+s);
            system.debug('Each Value Of Key '+s+' is ='+mapdata.get(s));
        }
    }
    //Substarction ,non void
    public static integer substraction(integer A,integer B){
        subresult = A - B;
        return subresult;
    }
    //division  , non void
    public static double division(integer C,integer D){
        divresult = C/D;
        return divresult;
    }
    
    public static void AboutLearning(){
        system.debug('----------------------------------------------------------------------------------');
        system.debug('HI Shekar , I covered all functionalities of Collection and Class discussed so far');
        system.debug('First Function List,in that covered : Add,Set,Get,Clear,IsEmpty & ForEach');
        system.debug('Second Function set,in that covered : Add,Clear,Contains,IsEmpty & ForEach');
        system.debug('Third Function Map,in that covered : Put,Clear,Get,IsEmpty & ForEach(Key,Value)');
        system.debug('Fourth Function Substarction ,non Void Function');
        system.debug('Fifth Function Division ,non Void Function');
        system.debug('----------------------------------------------------------------------------------');
    }   

}