<%@ page contentType="text/html" %>
<!--
   User have access to the next beans:
   1. processID
   2. nodeID
   3. user
   4. workflowManagementMail
   5. notificationNodeID
   6. events
   7. variables
-->
<html>

  <body>

    <h2 class="headline"><i>Holiday Request: </i></h2>
    
    <g:set var="basicProcess" value="${com.jcatalog.grailsflow.model.process.BasicProcess.get(processID)}"/>

    <table style="background-color: rgb(210,232,255);">
      <tr>
        <td valign="top">Requester Name</td>
        <td><input readonly size="25" value="${com.jcatalog.grailsflow.model.process.ProcessVariable.findWhere('process': basicProcess, 'name': 'requesterName')?.value}"/></td>
      </tr>
      <tr>
        <td valign="top">Request Text</td>
        <td><textarea readonly cols="60" rows="5">${com.jcatalog.grailsflow.model.process.ProcessVariable.findWhere('process': basicProcess, 'name': 'message')?.value}</textarea></td>
      </tr>
      <tr>
        <td valign="top">Manager resolution</td>
        <td>
          <g:if test="${com.jcatalog.grailsflow.model.process.ProcessVariable.findWhere('process': basicProcess, 'name': 'isApproved')?.value}">
            <div style="color: green">Approved</div>
          </g:if>
          <g:else>
            <div style="color: red">Rejected</div>
          </g:else>
          ${com.jcatalog.grailsflow.model.process.ProcessVariable.findWhere('process': basicProcess, 'name': 'resolution')?.value}
        </td>
      </tr>
      
    </table>

    <br/>
    
    <gf:customizingTemplate template='/emailTemplates/eventEmailTemplate' 
      model="[processID: processID,
             nodeID: notificationNodeID, 
             events: events,
             variables: variables]" />    
  </body>
</html>