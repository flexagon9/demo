@isTest
private class OpportunityControllerTest {
    @testsetup
    private static void testData()
    {
        List<Opportunity> oppList = New List<Opportunity>();
        for(integer i=1;i<=100;i++)
        {
            Opportunity opp = New Opportunity();
            opp.Name = 'Test Opportunity '+i;
            opp.StageName = 'Qualification';
            opp.CloseDate = Date.today() - 30;
            oppList.add(opp);
        }
        
        Insert oppList;
    }
    
    @isTest
    private static void TestMethod1()
    {
        List<Opportunity> oppList = New List<Opportunity>();
        for(Opportunity opp:[SELECT ID, StageName FROM Opportunity LIMIT 1])
        {
            opp.StageName = 'Closed Won';
            oppList.add(opp);
        }
        
        Test.startTest();
        Database.update(oppList);
        Test.stopTest();
        
        //Date currentDate = Date.today();
        List<Opportunity> checkOpp = [SELECT ID FROM Opportunity WHERE CloseDate=:Date.today()];
        
        System.assertEquals(1, checkOpp.size());
    }
    
    @isTest
    private static void TestMethod2()
    {
        List<Opportunity> oppList = New List<Opportunity>();
        for(Opportunity opp:[SELECT ID, StageName FROM Opportunity])
        {
            opp.StageName = 'Closed Won';
            oppList.add(opp);
        }
        
        Test.startTest();
        Database.update(oppList);
        Test.stopTest();
        
        //Date currentDate = Date.today();
        List<Opportunity> checkOpp = [SELECT ID FROM Opportunity WHERE CloseDate=:Date.today()];
        
        System.assertEquals(100, checkOpp.size());
    }
    
}