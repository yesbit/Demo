pragma solidity >=0.4.22 <0.6.0;

contract YesbitDemo {
    
    uint public staffcount;
    
     /// data structure to store individual employee information 
    struct Employee {
        string name;
        uint favoriteNumber;
    }

    event employeeInformation(string name,uint number); // Event

    
    /// maps an employee information to their information
    mapping(uint => Employee) public employees; 
    
    /// function to store the information through execution 
    function add(string memory name, uint number) public returns (bool) {
        employees[staffcount].name = name;
        employees[staffcount].favoriteNumber = number;
        staffcount++;
        emit employeeInformation(name, number);
        return true;
    }    
    
}