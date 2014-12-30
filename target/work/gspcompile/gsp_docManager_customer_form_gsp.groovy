import com.aatn.data.Customer
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_docManager_customer_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/customer/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: customerInstance, field: 'firstName', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("customer.firstName.label"),'default':("First Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("firstName"),'value':(customerInstance?.firstName)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerInstance, field: 'lastName', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("customer.lastName.label"),'default':("Last Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("lastName"),'value':(customerInstance?.lastName)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerInstance, field: 'address', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("customer.address.label"),'default':("Address")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("address"),'value':(customerInstance?.address)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerInstance, field: 'city', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("customer.city.label"),'default':("City")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("city"),'value':(customerInstance?.city)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerInstance, field: 'state', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("customer.state.label"),'default':("State")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("state"),'value':(customerInstance?.state)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customerInstance, field: 'zipCode', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("customer.zipCode.label"),'default':("Zip Code")],-1)
printHtmlPart(2)
invokeTag('textField','g',55,['name':("zipCode"),'value':(customerInstance?.zipCode)],-1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1419920235783L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
