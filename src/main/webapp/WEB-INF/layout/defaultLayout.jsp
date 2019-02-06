<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
    <title><tiles:getAsString name="title"/></title>
</head>
<body class="no-skin">
<table style="width:100%;height:100%">
    <tr>
        <td colspan="2">
            <tiles:insertAttribute name="header" />
        </td>
    </tr>
    
    <tr>
        <td >
     
         <div class="main-container ace-save-state" id="main-container">
            <tiles:insertAttribute name="menu" />
            <td >
            <tiles:insertAttribute name="body" />
            </td>
              </div> 
            
        </td>

        <td style="height:100%;">
            
            
          
        </td>
       
    </tr>

    <tr>
        <td colspan="2">
            <tiles:insertAttribute name="footer" />
        </td>
    </tr>
</table>
</body>
</html>