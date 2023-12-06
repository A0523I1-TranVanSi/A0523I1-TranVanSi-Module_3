public class Customer {
    private String name ;
    private String dateOfBirth ;
    private String address;
    private String pathPicture;

    public Customer(String name, String dateOfBirth, String address, String pathPicture) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.pathPicture = pathPicture;
    } public Customer(String name, String dateOfBirth, String address) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.address = address;

    }

    public String getPathPicture() {
        return pathPicture;
    }

    public void setPathPicture(String pathPicture) {
        this.pathPicture = pathPicture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
