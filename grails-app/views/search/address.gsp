<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Search for addresses</title>
  <r:require modules="coreapp, searchapp"/>
  <r:layoutResources/>
  <r:script>
    function selectItem(value0, value1, value2, value3) {
      var item = {}
      item["ident"] = value0
      item["addressID"] = value1
      item["name1"] = value2
      item["city"] = value3
      window.opener.${params.callbackFunctionName}(item)
      self.close();
    }

    function clearSearchFields() {
      document.getElementById("addressID").value = "";
      document.getElementById("name1").value = "";
    }
  </r:script>
</head>
<body>
<gf:messageBundle bundle="grailsflow.common" var="common"/>
<g:form controller="search" action="search" name="SearchForm" method="GET">
    <input id="callbackFunctionName" name="callbackFunctionName" type="hidden" value="${params.callbackFunctionName}"/>
    <input name="domainClass" type="hidden" value="Address"/>
    <input name="viewPage" type="hidden" value="address"/>

    <fieldset>
    <legend> Search for Addresses</legend>
    <table cellspacing="0">
      <tbody>
        <tr>
          <td><label for="addressID"> Address ID </label></td>
          <td><label for="name1"> Name 1 </label></td>
        </tr>
        <tr>
          <td><input type="text" id="addressID" name="addressID" value="${params.addressID}" size="16" maxlength="50"></td>
          <td><input type="text" id="name1" name="name1" value="${params.name1}" size="16" maxlength="50"></td>
        </tr>
        <tr>
          <td colspan="3"><g:actionSubmit value="${common['grailsflow.command.search']}" class="button"/> <input type="button" class="button"
                                                                                     onclick="clearSearchFields()"
                                                                                     value="${common['command.clear']}"></td>
        </tr>
      </tbody>
    </table>
    <p>Please note: All search fields are case sensitive. Use wildcards like '*' and '?' for searching. The asterisk
      substitutes one or more
      characters, the question mark substiutes exactly one character. Example: &quot;car*&quot; will find &quot;cartonnage&quot;,&quot;
      caretaker&quot;,
      &quot;carriage&quot; and more; &quot;car?&quot; will find &quot;cart&quot;, &quot;carp&quot;, &quot;card&quot; and
      more.</p>

  </fieldset>
</g:form>
<span class="pagebanner"> ${items ? items.size : 0} items found, displaying all items . </span>
<span class="pagelinks"> <strong> 1 </strong> </span>
<table cellspacing="0" id="address" class="search">
  <thead>
    <tr>
      <th class="header">Address ID</th>
      <th class="header">Name 1</th>
    </tr>
  </thead>
  <tbody>
    <g:each in="${items}" var="item">
    <tr class="odd">
      <td><a href="javascript:selectItem('${item.id}', '${item.addressID}', '${item.name1}','${item.city}')">${item.addressID}</a></td>
      <td>${item.name1}</td>
    </tr>
    </g:each>
  </tbody>
</table>
<r:layoutResources/>
</body>
</html>
