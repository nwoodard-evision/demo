package docmanager

import javax.ws.rs.GET
import javax.ws.rs.POST
import javax.ws.rs.Path
import javax.ws.rs.Produces
import javax.ws.rs.Consumes
import javax.ws.rs.FormParam
import javax.ws.rs.QueryParam
import javax.ws.rs.core.MediaType;
import com.aatn.data.Customer

/**
 * This class encapulates the REST webservices for the Customer 
 * @author AATN
 *
 */
@Path('/api')
class CustomerResource {
	 
	/**
	 * Lists all Customers
	 * @return
	 */
	@GET
	@Path('/customer/list')
	@Produces('text/xml')
    String getCustomers() {
		def xml=""
		Customer.findAll().each { it->
			xml+=it.toXML();
		}
		return xml
    }
	
	/**
	 * Queries customers by either first or last name
	 * @param q
	 * @return
	 */
	@GET
	@Path('/customer/query')
	@Produces('text/xml')
	String getCustomers( @QueryParam("q") String q) {
		def xml=""
		Customer.findAllByFirstNameOrLastName(q).each { it->
			xml+=it.toXML();
		}
		return xml
	}
	
	 
	/*
	 * Adds new Customer to database
	 */
	@POST
	@Path('/customer/add')
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	String addCustomer( @FormParam("firstname") String firstname,
						@FormParam("lastname") String lastname,
						@FormParam("address") String address,
						@FormParam("city") String city,
						@FormParam("state") String state,
						@FormParam("zipcode") String zipcode) {
		Customer c = new Customer()
		c.firstName = firstname
		c.lastName = lastname
		c.address = address
		c.state = state
		c.zipCode = zipcode
		c.save()
		return c.id
	}
	 
	

}