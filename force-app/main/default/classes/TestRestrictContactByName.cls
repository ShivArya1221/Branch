@isTest
public class TestRestrictContactByName {
	@isTest
    Static void CreateInvalidContact(){
        contact con=new contact(firstName='John', LastName='INVALIDNAME');
        Test.startTest();
        Database.SaveResult result=Database.insert(con,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
    }
}