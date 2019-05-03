/**
 * packages
 */

package edu.csbsju.cs.Controllers;
import java.util.ArrayList;

import javax.naming.NameNotFoundException;

import edu.csbsju.cs.Entity.*;


/**
 * This class is the Admin Functionality controller that allows an admin to access the database.
 * @StackUnderflow
 * @author DeAndre Bethell, Nathan Drees, Anton Andrews, Ryan Graham, Noah Lefebvre
 * @version March 2019
 */
public class AdminFunctionalityController {

	private DataBaseController dbc;
	/**
	 * Constructor 
	 */
	public AdminFunctionalityController() {
		this.dbc  = new DataBaseController();
	}

	/*
	* Allows the admin to add a user to the database
	*@param String firstname, lastName, userName, password, type
	*@return the new user in the database; x
	*/
	public void addUser(Users newUser)
	{
		int i = dbc.addUser(newUser);
		if(i == -1)
		{
			System.out.print("Similar username is already there");
			//throw new IllegalArgumentException("Similar username is already there");
		}
	}
	/*
	* Allows the admin to delete a user from the database
	*@param User users
	*@return the user that was deleted from the database; x
	*/
	public void deleteUser(Users user)
	{
	dbc.deleteUser(user);
	}
	/*
	* Allows the admin to edit a user in the database
	*@param Users user
	*@return the updated user in the database; x
	*/

public void editUser(String uName, String fName, String lName, String pWord, char type, char status) {

if(!(type == 'u' || type == 'a'))
	  throw new IllegalArgumentException("The type entered is invalid");
else if(!(status == 'Y' || status == 'N'))
	  throw new IllegalArgumentException("The status entered is invalid");

	Users u = getUser(uName);
	if(u == null) 
		  throw new IllegalArgumentException("The username entered was not found");
	
	
		u.setFirstName(fName);
		u.setLastName(lName);
		u.setPassword(pWord);
		u.setStatus(status);
		u.setType(type);
		dbc.editUser(u);

	}

	
	/*
	* Allows the admin to get all the users in the database
	*@param 
	*@return all the users in the database
	*/
	public ArrayList<Users> getAllUsers()
	{
		ArrayList<Users> stuList = dbc.getAllUsers();
		return stuList;
		
	}
	/*
	* Allows the admin to get the users in the database
	*@param String userName 
	*@return a user in the database
	*/
	public Users getUser(String userName)
	{
		Users user = dbc.getUser(userName);
		return user;
	}
	/*
	* Allows the admin to delete an university from the database
	*@param University uni
	*@return the  university deleted from the database; x
	*/
	public void deleteSchool(University uni)
	{
		dbc.deleteSchool(uni);
	
	}
	/*
	* Allows the admin to edit an university in the database
	*@param University uni0, uni1
	*@return the  university edited in the database; x
	*/
	public void editSchool(String old, String state, String location, String control, int numStudents, 
			 double females, double SATV, double SATM, double expenses, double financialAid, 
			 int numApplicants, double admitted, double enrolled, int academicScale, int socialScale, 
			 int qOLScale, ArrayList<String> emp) throws NameNotFoundException
	{
		ArrayList<University> univ = dbc.getAllSchoolDetails();
		for (University x : univ)
		{
			if(x.getName().equals(old))
			{
				x.setState(state);
				x.setLocation(location);
				x.setControl(control);
				x.setNumStudents(numStudents);
				x.setFemales(females);
				x.setSATV(SATV);
				x.setSATM(SATM);
				x.setExpenses(expenses);
				x.setFinancialAid(financialAid);
				x.setNumApplicants(numApplicants);
				x.setAdmitted(admitted);
				x.setEnrolled(enrolled);
				x.setAcademicScale(academicScale);
				x.setSocialScale(socialScale);
				x.setqOLScale(qOLScale);
		//University uni = new University(name, state, location, control, numStudents, females, SATV, SATM, expenses, financialAid, numApplicants, admitted, enrolled, academicScale, socialScale, qOLScale, emp);
	
		 dbc.editSchool(x);
			}
	}
	}
	/*
	* Allows the admin to deactivate a university in the database
	*@param Users user
	*@return the  university deactivated in the database; x
	*/
	public void deactivateUser(String uName)
	{
		boolean found = false;
		Users user = getUser(uName);
		if(user == null) 
			  throw new IllegalArgumentException("The username entered was not found");
		if(user.getStatus() == 'Y') {
			//System.out.print(user.getStatus());
			user.setStatus('N');
			//System.out.print(user.getStatus());
			dbc.editUser(user);
			found = true;
		}
		
		if(found == false)
		{
			//System.out.println("User's status was not found");
			throw new IllegalArgumentException("User's already deactived");
		}
	}
	
	
public University viewSchoolDetails(String universityName) throws NameNotFoundException {
		
		return dbc.viewSchoolDetails(universityName);
		

	}

public ArrayList<University> getAllSchoolDetails() 
{
	return dbc.getAllSchoolDetails();
}
	/*
	* Allows the admin to print user information in the database
	*@param Users user 
	*@return a user in the database
	*/
	
}
