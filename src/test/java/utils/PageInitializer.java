package utils;

import pages.AddEmployeePage;
import pages.DashBoardPage;
import pages.LoginPage;


public class PageInitilizer {

    public static LoginPage loginPage;
    public static AddEmployeePage addEmployeePage;
    public static DashBoardPage dashboardPage;


    public static void initializerPageObjects(){
        loginPage=new LoginPage();
        addEmployeePage=new AddEmployeePage();
        dashboardPage=new DashBoardPage();
    }
}
