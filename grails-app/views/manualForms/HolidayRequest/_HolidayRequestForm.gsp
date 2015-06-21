<!--
  Template for HolidayRequestForm node of HolidayRequest process.
  
  Variable parameter name should have format 'var_'${variableName}. For example:
     <input name="var_userName" value="User name"/>

  Event parameter name should have format  'event_'${eventID}. For example:
     <g:submitButton name="event_approve" value="Approve"/>
   

  Template parameters:

  required:
    * nodeDetails             bean of com.jcatalog.grailsflow.bean.NodeDetails type
-->
    <h2><i>Please Create Your Holiday Request Letter: </i></h2>

    <div class="row">
      <div class="col-md-8">
        <table class="table" style="background-color: rgb(210,232,255);">
          <tr>
            <td>Person Name</td>
            <td><input name="var_requesterName" size="25" value="${nodeDetails.variables.requesterName?.value}"/></td>
          </tr>
          <tr>
            <td>E-Mail</td>
            <td><input name="var_requesterMail" size="35" value="${nodeDetails.variables.requesterMail?.value}" /></td>
          </tr>
          <tr>
            <td>Holiday Start</td>
            <td>
               <gf:bootstrapCalendar property="var_holidaysStart"
                       value="${nodeDetails.variables.holidaysStart ? nodeDetails.variables.holidaysStart.value : new Date()}" />
            </td>
          </tr>
          <tr>
            <td>Holiday End</td>
            <td>
              <gf:bootstrapCalendar property="var_holidaysEnd"
                  value="${nodeDetails.variables.holidaysEnd ? nodeDetails.variables.holidaysEnd.value : new Date()}"/>
          </tr>
          <tr>
            <td>Manager E-Mail</td>
            <td><input name="var_managerMail" size="35" value="${nodeDetails.variables.managerMail?.value}" /></td>
          </tr>
          <tr>
            <td>HR E-Mail</td>
            <td><input name="var_hrMail" size="35" value="${nodeDetails.variables.hrMail?.value}" /></td>
          </tr>
          <tr>
            <td>Message</td>
            <td><textarea name="var_message" cols="60" rows="5">${nodeDetails.variables.message?.value}</textarea></td>
          </tr>
        </table>

        <br/>

        <g:submitButton name="event_submit" value="Send Request" class="btn btn-primary"/>
      </div>
    </div>