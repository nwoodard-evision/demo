import com.aatn.data.Customer
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_docManager_customer_list_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/customer/_list.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
invokeTag('message','g',25,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(2)
invokeTag('sortableColumn','g',34,['property':("firstName"),'title':(message(code: 'customer.firstName.label', default: 'First Name'))],-1)
printHtmlPart(3)
invokeTag('sortableColumn','g',36,['property':("lastName"),'title':(message(code: 'customer.lastName.label', default: 'Last Name'))],-1)
printHtmlPart(3)
invokeTag('sortableColumn','g',38,['property':("address"),'title':(message(code: 'customer.address.label', default: 'Address'))],-1)
printHtmlPart(3)
invokeTag('sortableColumn','g',40,['property':("city"),'title':(message(code: 'customer.city.label', default: 'City'))],-1)
printHtmlPart(3)
invokeTag('sortableColumn','g',42,['property':("state"),'title':(message(code: 'customer.state.label', default: 'State'))],-1)
printHtmlPart(3)
invokeTag('sortableColumn','g',44,['property':("zipCode"),'title':(message(code: 'customer.zipCode.label', default: 'Zip Code'))],-1)
printHtmlPart(4)
loop:{
int i = 0
for( customerInstance in (customerInstanceList) ) {
printHtmlPart(5)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(6)
createTagBody(2, {->
expressionOut.print(fieldValue(bean: customerInstance, field: "firstName"))
})
invokeTag('link','g',52,['action':("show"),'id':(customerInstance.id)],2)
printHtmlPart(7)
expressionOut.print(fieldValue(bean: customerInstance, field: "lastName"))
printHtmlPart(7)
expressionOut.print(fieldValue(bean: customerInstance, field: "address"))
printHtmlPart(7)
expressionOut.print(fieldValue(bean: customerInstance, field: "city"))
printHtmlPart(7)
expressionOut.print(fieldValue(bean: customerInstance, field: "state"))
printHtmlPart(7)
expressionOut.print(fieldValue(bean: customerInstance, field: "zipCode"))
printHtmlPart(8)
i++
}
}
printHtmlPart(9)
invokeTag('paginate','g',69,['total':(customerInstanceCount ?: 0)],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1419920237793L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
