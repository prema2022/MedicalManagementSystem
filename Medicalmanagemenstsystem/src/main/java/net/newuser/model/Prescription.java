package net.newuser.model;

public class Prescription {
	
	    private String pname;        // Patient name
	    private String pid;          // Patient ID
	    private String date;         // Date of prescription
	    private String doctorname;   // Doctor's name
	    private Integer age;          // Patient's age
	    private String medicineDetails; // Details of medicines prescribed

	    // Getter and Setter for pname
	    public String getPname() {
	        return pname;
	    }

	    public void setPname(String pname) {
	        this.pname = pname;
	    }

	    // Getter and Setter for pid
	    public String getPid() {
	        return pid;
	    }

	    public void setPid(String pid) {
	        this.pid = pid;
	    }

	    // Getter and Setter for date
	    public String getDate() {
	        return date;
	    }

	    public void setDate(String date) {
	        this.date = date;
	    }

	    // Getter and Setter for doctorname
	    public String getDoctorname() {
	        return doctorname;
	    }

	    public void setDoctorname(String doctorname) {
	        this.doctorname = doctorname;
	    }

	    // Getter and Setter for age
	    public int getAge() {
	        return age;
	    }

	    public void setAge(int age) {
	        this.age = age;
	    }

	    // Getter and Setter for medicineDetails
	    public String getMedicineDetails() {
	        return medicineDetails;
	    }

	    public void setMedicineDetails(String medicineDetails) {
	        this.medicineDetails = medicineDetails;
	    }
	}

