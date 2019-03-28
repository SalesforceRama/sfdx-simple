/**
 * @File Name          : DemoControllerTests.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 28-3-2019 14:28:11
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    28-3-2019 14:12:32   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/

@isTest
private class DemoControllerTests {
    @isTest static void testConstructor() {
    	Contact contact = new Contact(LastName='Smith');
    	insert contact;

    	Test.setCurrentPage(Page.DemoPage);   	
    	ApexPages.currentPage().getParameters().put('lastName', 'Smith');

    	DemoController demo = new DemoController(new ApexPages.StandardController(contact));
    	System.assertEquals(contact.Id, ApexPages.currentPage().getParameters().get('id'));
    }

    @isTest static void testGetAppVersion() {
        DemoController demo = new DemoController();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
}
