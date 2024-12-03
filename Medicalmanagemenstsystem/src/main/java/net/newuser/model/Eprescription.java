
package net.newuser.model;

public class Eprescription {
    private String pname;          // Patient Name
    private String pid;            // Patient ID
    private String date;           // Prescription Date
    private String doctorname;     // Doctor's Name
    private int age;               // Patient Age
    private String medicineDetails; // List of medicines (with details like duration, when to eat, time)

    // Getter and Setter methods

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMedicineDetails() {
        return medicineDetails;
    }

    public void setMedicineDetails(String medicineDetails) {
        this.medicineDetails = medicineDetails;
    }
}
