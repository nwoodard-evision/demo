package com.aatn.data

class Customer {
	String firstName
	String lastName
	String address
	String city
	String state
	String zipCode
    static constraints = {
		firstName (nullable:true)
		lastName (nullable:true)
		address (nullable:true)
		city (nullable:true)
		state (nullable:true)
		zipCode (nullable:true)
		
    }
	
	public String toXML()
	{
		def xml=""
		xml+="<Customer>\n"
		xml+="  <FirstName>${firstName}</FirstName>\n"
		xml+="  <LastName>${lastName}</LastName>\n"
		xml+="  <Address>${address}</Address>\n"
		xml+="  <City>${city}</City>\n"
		xml+="  <State>${state}</State>\n"
		xml+="</Customer>\n"
		return xml
	}
}
