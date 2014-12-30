This is a demo of REST webservices from within a Grails application.

It is using the Jersey implementation of JAX-RS.

The actual folder that contains the service methods is:
grails-app\resources\docmanager\CustomerResource.groovy (readable syntax as Java)

You can execute the demo by going to the bin folder and running:

java -jar restDemo.jar

and pointing your browser to the location:

http://localhost:8080

You should be pointed to the Customer create page.  

1. Click Create Customer
2. Fill out form to add customer to in-memory database
3. Point your browser to 
    a: http://localhost:8080/api/customer/list -to see the XML rendering of the customers in the system
    b: http://localhost:8080/api/customer/query?q=<text>  to see the XML rendering of customers that match on first/last name
    
If there are any questions please let me know.

Thanks,

NW