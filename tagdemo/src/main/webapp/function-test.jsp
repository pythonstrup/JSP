<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<body>

<c:set var="data" value="bigbell"></c:set>
Length of the string <b>${data}</b>: ${fn:length(data)}
<br><br>

UpperCase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
<br><br>

Does the string <b>${data}</b> start with <b>big</b>?: ${fn:startsWith(data, "big")}
<br><br>

</body>

</html>