public class MyContactListsClass{

public static list<contact> ContactList{Get;Set;}

public MyContactListsClass(){
ContactList = null;
}
public static void ShowData(){

ContactList = [select name,email from contact where email<> null limit 10];
}

}