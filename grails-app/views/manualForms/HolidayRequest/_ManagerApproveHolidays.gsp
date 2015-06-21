<!--
	Template for ManagerApproveHolidays node of HolidayRequest process.
	
  Variable parameter name should have format 'var_'${variableName}. For example:
     <input name="var_userName" value="User name"/>

  Event parameter name should have format  'event_'${eventID}. For example:
     <g:submitButton name="event_approve" value="Approve"/>
	 

	Template parameters:

  required:
		* nodeDetails 		        bean of com.jcatalog.grailsflow.bean.NodeDetails type
-->

    <h2><i>Holiday Request Overview: </i></h2>

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
            <td valign="top">Mail Text</td>
            <td><textarea readonly class="readonly" cols="60" rows="5">${nodeDetails.variables.message.value}</textarea></td>
          </tr>
          <tr>
            <td valign="top">Resolution</td>
            <td><textarea name="var_resolution" cols="60" rows="5">${nodeDetails.variables.resolution.value}</textarea></td>
          </tr>
        </table>

        <br/>

        <g:submitButton name="event_approve" value="Approve" class="btn btn-default"/>&nbsp;&nbsp;
        <g:submitButton name="event_reject" value="Reject" class="btn btn-default"/>
      </div>
    </div>