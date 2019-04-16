package edu.csbsju.cs.Drivers;


import edu.csbsju.cs.Controllers.*;
import edu.csbsju.cs.Entity.*;
import edu.csbsju.cs.Interface.*;
import java.io.*;
import java.util.*;

import javax.naming.NameNotFoundException;

public class CMCDriver {
	
	public static void main(String[]args) throws NameNotFoundException {
		System.out.println("Beginning Test...");
		
		AdminInteraction ai = new AdminInteraction();
		StudentUserInteraction sui = new StudentUserInteraction();
		UniversityController uc = new UniversityController();
		LogOnController loc = new LogOnController();
		Users user = ai.getUser("juser");
		DataBaseController dbc = new DataBaseController();
		
		
		ArrayList<String> emp = new ArrayList<String>();
		emp.add("MATH");
		emp.add("COMPUTER-SCIENCE");
		University university = new University("ANATOL", "MINNESOTA", "SUBURBAN", "PRIVATE", 9000, 56.0, 530.0, 500.0, 35000.0, 15000.0, 3000, 81.0, 75.0, 3, 3, 3, emp);
		
		
		System.out.println("********** LOG ON **********\n");
		System.out.println("\n****LogOn with valid info****");
		loc.logOn("juser", "user");		
		System.out.println("LogOn Status: " + loc.isLoggedOn());
		
		System.out.println("\n****LogOn with invalid username****");
		loc.logOn("hijuser", "user");		
		System.out.println("LogOn Status: " + loc.isLoggedOn());
		
		System.out.println("\n****LogOn with invalid password****");
		loc.logOn("juser", "hiuser");		
		System.out.println("LogOn Status: " + loc.isLoggedOn());
		
		System.out.println("\n****LogOn with Deactivated Account****");
		loc.logOn("luser", "user");		
		System.out.println("LogOn Status: " + loc.isLoggedOn());
		
		
		System.out.println("\n\n\n********** SEARCH SCHOOLS **********\n");
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter School name");
		String school = sc.nextLine();
		System.out.println("Enter State");
		String state = sc.nextLine();
		System.out.println("Enter Location");
		String location = sc.nextLine();
		System.out.println("Enter Control");
		String control = sc.nextLine();
		System.out.println("Enter Number of Students");
		String numStudents = sc.nextLine();
		System.out.println("Enter Percentage of Females");
		String females = sc.nextLine();
		System.out.println("Enter SAT Verbal Score");
		String SATV = sc.nextLine();
		System.out.println("Enter SAT Math Score");
		String SATM = sc.nextLine();
		System.out.println("Enter Expenses");
		String expenses = sc.nextLine();
		System.out.println("Enter Financial Aid");
		String financial = sc.nextLine();
		System.out.println("Enter Number of Applicants");
		String numApp = sc.nextLine();
		System.out.println("Enter Percentage of Admitted Students");
		String admitted = sc.nextLine();
		System.out.println("Enter Enrolled Students");
		String enrolled = sc.nextLine();
		System.out.println("Enter Academic Scale between 1 and 5");
		String aScale = sc.nextLine();
		System.out.println("Enter Social Scale between 1 and 5");
		String sScale = sc.nextLine();
		System.out.println("Enter Quality of Life Scale between 1 and 5");
		String qOLScale = sc.nextLine();
		ArrayList<University> searchR = uc.searchAllSchools(school, state, location, control, numStudents, 
				females, SATV, SATM, expenses, financial, numApp, admitted, enrolled, aScale, sScale, qOLScale);
		for (int i = 0; i < searchR.size(); i++) {
			System.out.println(searchR.get(i).getName());
		}
		
		sc.close();
		
		
		System.out.println("\n\n\n********** VIEW SCHOOL **********\n");
		University uni =  sui.viewSchoolDetails("ABILENE CHRISTIAN UNIVERSITY");
		ArrayList<SavedSchools> save = sui.viewAllSavedUniversitys(user);
		
		System.out.println("\n\n********** VIEW SAVED SCHOOLS **********\n");
		System.out.println("**List of currently saved schools**");
		for(int i = 0; i< save.size(); i++)
		{
			System.out.println(save.get(i).getUniversity().print());
		}
		
		System.out.println("\n\n********** SAVE SCHOOL **********\n");
		System.out.println("**Original list of saved schools**\n");
		save = sui.viewAllSavedUniversitys(user);
		for(int i = 0; i< save.size(); i++)
		{
		System.out.println(save.get(i).getUniversity().print());
		}
		sui.saveUniversity(uni, user);
		System.out.println("\n**New list of saved schools after saving school**");
		ArrayList<SavedSchools>saveTo = sui.viewAllSavedUniversitys(user);
		for(int i = 0; i< saveTo.size(); i++)
		{
			System.out.println(saveTo.get(i).getUniversity().print() + "\n");
		}
		
		
		
		System.out.println("\n\n********** REMOVE SAVED SCHOOL **********\n");
		System.out.println("**List of currently saved schools**\n");
		saveTo = sui.viewAllSavedUniversitys(user);
		for(int i = 0; i< saveTo.size(); i++)
		{
		System.out.println(saveTo.get(i).print());
		}
		sui.removeSavedSchool(user, uni.getName());
		System.out.println("**New list of saved schools after removing saved school**");
		ArrayList<SavedSchools>save3 = sui.viewAllSavedUniversitys(user);
		for(int i = 0; i< save3.size(); i++)
		{
		System.out.println(save3.get(i).getUniversity().print());
		}
		
		
		System.out.println("\n\n********** VIEW RECOMMENDED SCHOOLS **********\n\n");
		sui.viewRecommendedUniversities(uni.getName());
		
		System.out.println("\n\n********** VIEW PROFILE **********\n");
		System.out.println("\n\n*** Creates Dummy User ***\n");
		ai.addUser("Imad", "Rahal", "irahal", "pass", 'Y', 'u');
		Users dummy = new Users("irahal", "pass");
		//ai.deleteUser(dummy);
		ArrayList<Users> allUsers = ai.getAllUsers();
		Users u = sui.getProfile(dummy);
		System.out.println(u.getFirstName());
		System.out.println(u.getLastName());
		System.out.println(u.getUsername());
		System.out.println(u.getPassword());
		System.out.println(u.getStatus());
		System.out.println(u.getType());
		for(Users i: allUsers)
		{
			System.out.println(i.getFirstName() + ", " + i.getLastName() + ", " + i.getUsername() + ", " + i.getPassword() + ", " + i.getStatus() + ", " +
					i.getType());
		}
		
		System.out.println("\n\n********** EDIT PROFILE **********\n");
		sui.editUser(dummy.getUsername(), "Hello", "World", "password");
		ArrayList<Users> allUsers2 = ai.getAllUsers();
		for(Users i: allUsers2)
		{
			System.out.println(i.getFirstName() + ", " + i.getLastName() + ", " + i.getUsername() + ", " + i.getPassword() + ", " + i.getStatus() + ", " +
					i.getType());
		}
		
		System.out.println("\n\n********** ADD USER**********\n");
		ai.addUser("Anton", "Andrews", "aandrews", "pass", 'Y', 'u');
		Users dummy1 = new Users("aandrews", "pass");
		//ai.deleteUser(dummy1);
		ArrayList<Users> allUsers3 = ai.getAllUsers();
		for(Users u1: allUsers3)
		{
			System.out.println(u1.getFirstName() + ", " + u1.getLastName() + ", " + u1.getUsername() + ", " + u1.getPassword() + ", " + u1.getStatus() + ", " +
					u1.getType());
			
		}
		
		System.out.println("\n\n********** EDIT USER **********\n");
		ai.editUser("I", "AmGroot",dummy1.getUsername(), "pword", 'Y', 'u');
		ArrayList<Users> allUsers4 = ai.getAllUsers();
		for(Users i: allUsers4)
		{
			System.out.println(i.getFirstName() + ", " + i.getLastName() + ", " + i.getUsername() + ", " + i.getPassword() + ", " + i.getStatus() + ", " +
					i.getType());
		}
		
		System.out.println("\n\n********** DEACTIVATE USER **********\n");
		ai.deactivateUser(dummy1);
		ArrayList<Users> allUsers6 = ai.getAllUsers();
		for(Users i: allUsers6)
		{
			System.out.println(i.getFirstName() + ", " + i.getLastName() + ", " + i.getUsername() + ", " + i.getPassword() + ", " + i.getStatus() + ", " +
					i.getType());
		}
		
		System.out.println("\n\n********** DELETE USER **********\n");
		ai.deleteUser(dummy1);
		ArrayList<Users> allUsers5 = ai.getAllUsers();
		for(Users i: allUsers5)
		{
			System.out.println(i.getFirstName() + ", " + i.getLastName() + ", " + i.getUsername() + ", " + i.getPassword() + ", " + i.getStatus() + ", " +
					i.getType());
		}
		
		System.out.println("\n\n********** ADD UNIVERSITY **********\n");
		
		
		
		

		/**Scanner sc = new Scanner(System.in);
		System.out.println("Enter Username: ");
		String uName = sc.nextLine();
		System.out.println("Enter Password: ");
		String password = sc.nextLine();
		String logIn = LogOnController.logOn(uName, password);
		System.out.println(logIn);
		if (logIn.equals("logged in as User")){
			System.out.println("Type 'search' to search for a school. Type 'view' to view saved schools");
			String option = sc.nextLine();
			if (option.equals("search")) {
				System.out.println("Enter School name");
				String school = sc.nextLine();
				System.out.println("Enter state");
				String state = sc.nextLine();
				System.out.println("Enter location");
				String location = sc.nextLine();
				System.out.println("Enter controll");
				String controll = sc.nextLine();
				System.out.println("Enter number of Students");
				String numStudents = sc.nextLine();
				System.out.println("Enter percentage of females");
				String females = sc.nextLine();
				System.out.println("Enter SAT Verbal Score");
				String SATV = sc.nextLine();
				System.out.println("Enter SAT Math Score");
				String SATM = sc.nextLine();
				System.out.println("Enter Exspenes");
				String expenses = sc.nextLine();
				System.out.println("Enter Finacial Aid");
				String financial = sc.nextLine();
				System.out.println("Enter Numenbr of Applications");
				String numApp = sc.nextLine();
				System.out.println("Enter percentage of Admitted Students");
				String admitted = sc.nextLine();
				System.out.println("Enter enrolled Students");
				String enrolled = sc.nextLine();
				System.out.println("Enter Academic Scale between 1 and 5");
				String aScale = sc.nextLine();
				System.out.println("Enter Social Scale between1 and 5");
				String sScale = sc.nextLine();
				System.out.println("Enter Quality of Life Scale between 1 and 5");
				String qOLScale = sc.nextLine();
				ArrayList <String> searchR = searchSchools.searchAllSchools(school, state, location, controll, numStudents, 
						females, SATV, SATM, expenses, financial, numApp, admitted, enrolled, aScale, sScale, qOLScale);
				for (int i = 0; i < searchR.size(); i++) {
					System.out.println(searchR.get(i));
				}
				System.out.println("Enter the Name of the School you would like to view");
				String UName = sc.nextLine();
				UName = UName.toUpperCase();
				ArrayList<University> allSchools = DataBaseController2.getAllSchoolDetails();
				for (int i = 0; i < allSchools.size(); i++) {
					if (UName.equals(allSchools.get(i).getName())) {
						System.out.println(allSchools.get(i).print());
					}
				}
				System.out.println("If you want to save School type 'save'");
				String save = sc.nextLine();
				if (save.equals("save")) {
					int result = DataBaseController2.saveSchool(uName, UName);
					if (result == 0) {
						System.out.println("School Saved!!");
					}
					else if (result == -1) {
						System.out.println("School Not Saved!!");
					}
				}
				System.out.println("If you want to view saved schools type 'saved'");
				String saved = sc.nextLine();
				ArrayList<Users> us = DataBaseController2.getAllUsers();
				Users u = null;
				for (int i = 0; i< us.size(); i++){
					if(us.get(i).getUsername().equals(uName)) {
						u = us.get(i);
			}
				}
				if (saved.equals("saved")) {
					ArrayList<SavedSchools> savedSchools = DataBaseController2.getSavedSchools(u);
					for (int i = 0; i < savedSchools.size(); i++) {
						System.out.println(savedSchools.get(i).print());
					}
				}
								
			}
			
		}
		*/
	}
	
}
