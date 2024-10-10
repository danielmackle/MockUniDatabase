/**
* Daniel Mackle 40407187
*/
package DM40407187;
import java.sql.*;
import java.util.Scanner;
/**
* This program was made for my Databases Assignment 2024
*/
public class DM40407187 {
	/**
	 * The main entry point of the system
	 * Creates db connection then runs displayMenu
	 */
	public static void main(String[] args) {
		try {
			// Establish a connection
			String host = "jdbc:mysql://dmackle04.webhosting1.eeecs.qub.ac.uk:";
			String port = "3306/";
			String DB = "dmackle04";
			String username = "dmackle04";
			String password = "grNkqcZFGDPXjNZF";
			String urlDB = host + port + DB;
			Connection con = DriverManager.getConnection(urlDB, username, password); //create connection
			displayMenu(con); //pass connection into the rest of the program
			con.close(); //after program complete, close connection
		}
		catch(Exception ex){
			System.out.println("Sorry! An error has occurred. Please try again.");
		}
	}
	/**
	 * Displays the main menu and takes in the selection input
	 * Then runs either displayViewMenu or addRegistersMenu, passing the db connection through to them
	 */
	public static void displayMenu(Connection con) {
		System.out.println("Main Menu\n---------------\n1. Display the view InterviewInfo\n2. Add a row to Candidate\n3. Exit");
		Scanner s = new Scanner(System.in);
		try {
			int inputint = Integer.parseInt(s.nextLine()); //throw error if invalid
			switch(inputint) { //switch input
			case 1:
				displayView(con); //display the view
				break;
			case 2:
				addRegisters(con); //add a register
				break;
			case 3:
				System.out.println("Hope I was helpful! Exiting now.");
				System.exit(1);
				break;
			default:
				throw new Exception(); //throw exception if number not valid
			}
		}
		catch(Exception ex) {
			System.out.println("\n\nInput invalid. Please try again.\n\n");
			displayMenu(con);//back to start
		}
	}
	/**
	 * This method displays all rows and all columns of the the view InterviewInfo
	 * via a link with the sql database
	 * the output is printed to the output console
	 */
	public static void displayView(Connection con) {
		ResultSet rs = null;
		System.out.println("Displaying the view InterviewInfo:");
		Scanner s = new Scanner(System.in);
		try {
			Statement stmt = con.createStatement(); //open statement
			rs = stmt.executeQuery("SELECT * FROM InterviewInfo;"); //define run and save output of sql query
			while (rs.next()) //for each register in the output
				//print rows in register
				System.out.println("Candiadate Name:"+rs.getString(1) + "\tInteriew Room:" + rs.getString(2)+ "\tInterview Date:" + 
				rs.getDate(3)+ "\tInterview Time:" + rs.getTime(4)+ "\tBusiness Name:" + rs.getString(5)+ "\tRecruiter Name:" + rs.getString(6));
			stmt.close(); //close statement
		}
		catch(Exception ex) {
			System.out.println("\n\nDisplay of view has failed. Please try again.\n\n");
			displayMenu(con);//back to start
		}
	}
	/**
	 * This method asks for inputs of each field needed to insert a new row into the table Candidate
	 * via a link to the sql database
	 * the query is built and the database updated, then displayCandidateNames is run, passing the sql connection to it.
	 */
	public static void addRegisters(Connection con){
		ResultSet rs = null;
		Scanner s = new Scanner(System.in);
		try {
			Statement stmt = con.createStatement();
			System.out.print("\nEnter Natural Insurance Number:");
			String natInsNum = s.nextLine(); //take nat ins number
			System.out.print("\nEnter Title:");
			String title = s.nextLine();//take title
			System.out.print("\nEnter Forename:");
			String firstname = s.nextLine();//take fname
			System.out.print("\nEnter Surname:");
			String secondname = s.nextLine();//take sname
			System.out.print("\nEnter Gender:");
			String gender = s.nextLine();//take gender
			System.out.print("\nEnter Address Line 1:");
			String address1 = s.nextLine();//take add line 1
			System.out.print("\nEnter Address Line 2 (or leave null):");
			String address2 = s.nextLine();//take add line 2
			System.out.print("\nEnter Postcode:");
			String postcode = s.nextLine();//take postcode
			System.out.print("\nEnter Email:");
			String email = s.nextLine();//takeemail
			System.out.print("\nEnter Phone Number:");
			String phonenumber = s.nextLine();//take phone number
			System.out.print("\nDo you have the right to work? (y or n):");
			String strrighttowork = s.nextLine();//take string of right to work
			boolean righttowork = false; //right to work is initialised as false
			if(strrighttowork == "y") {righttowork=true;} //if the string is 'y', right to work is set to true
			System.out.print("\nAre you classed as a disabled person? (y or n):");//take string of disabled
			String strisdisabled = s.nextLine();
			boolean isdisabled = false;//disabled is initialised as false
			if(strisdisabled == "y") {isdisabled=true;} //if the string is 'y', disabled is set to true
			//query is built with takes variables
			String str = ("INSERT INTO Candidate VALUES ("+natInsNum+", "+firstname+", "+secondname+", "+title+", "+gender+","
					+ " "+address1+", "+address2+", "+postcode+", "+email+", "+phonenumber+", "+righttowork+", "+isdisabled+");");
			stmt.execute(str); //query is executed - no output to save
			System.out.println("\n\nRow successfully created! Here are all of the the currently saved candidates:");
			displayCandidateNames(con); //run method which displays all candidate full names
		}
		catch(Exception ex) {
			System.out.println("\n\nRow creation failed. Please try again.\n\n");
			displayMenu(con);//back to start
		}
	}
	/**
	 * This method displays all the full names of the candidates stored in the candidate table
	 * displays to the user whether or not the new register has been added successfully
	 */
	public static void displayCandidateNames(Connection con) {
		ResultSet rs = null;
		System.out.println("Displaying the view Candidate:");
		Scanner s = new Scanner(System.in);
		try {
			Statement stmt = con.createStatement(); //open statement
			//define run and save output of sql query
			rs = stmt.executeQuery("SELECT CONCAT(c.CandidateTitle, ' ',c.CandidateForename,' ',c.CandidateSurname) AS Candidate_Name FROM Candidate c;");
			while (rs.next())//for each register in the output
				//print rows in register
				System.out.println("Candiadate Name:"+rs.getString(1));
			stmt.close(); //close statement
		}
		catch(Exception ex) {
			System.out.println("\n\nCandidate name display has failed. Please try again.\n\n");
			displayMenu(con);//back to start
		}
	}
}

