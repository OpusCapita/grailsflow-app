<!--
	Template for HRNotification node of HolidayRequest process.
	
  Variable parameter name should have format 'var_'${variableName}. For example:
     <input name="var_userName" value="User name"/>

  Event parameter name should have format  'event_'${eventID}. For example:
     <g:submitButton name="event_approve" value="Approve"/>
	 

	Template parameters:

  required:
		* nodeDetails 		        bean of com.jcatalog.grailsflow.bean.NodeDetails type
-->

    <h2><i>Logging for Holiday Request: </i></h2>

    <div class="row">
      <div class="col-md-8">
        <table class="table" style="background-color: rgb(210,232,255);">
          <tr>
            <td valign="top">Requester Name</td>
            <td><input readonly class="readonly" size="25" value="${nodeDetails.variables.requesterName.value}"/></td>
          </tr>
          <tr>
            <td>Holiday Start</td>
            <td><g:formatDate date="${nodeDetails.variables.holidaysStart.value}" pattern="${gf.datePattern()}"/></td>
          </tr>
          <tr>
            <td>Holiday End</td>
            <td><g:formatDate date="${nodeDetails.variables.holidaysEnd.value}" pattern="${gf.datePattern()}"/></td>
          </tr>
          <tr>
            <td valign="top">Is Approved</td>
            <td><g:checkBox name="var_isApproved" value="${nodeDetails.variables.isApproved.value}" disabled="true"/></td>
          </tr>
          <tr>
            <td valign="top">Manager Resolution</td>
            <td><textarea name="var_resolution"  cols="60" rows="5" readonly class="readonly">${nodeDetails.variables.resolution.value}</textarea></td>
          </tr>
          <tr>
            <td valign="top">Enter Log</td>
            <td><textarea name="var_logMessage" cols="60" rows="5">${nodeDetails.variables.logMessage.value}</textarea></td>
          </tr>
        </table>

        <br/>

        <g:submitButton name="event_save" value="Save Log Info" class="btn btn-default"/>
      </div>
    </div>
