<%@ page import="java.util.*" %>
<html>

<body>

<!-- Step 1: Create HTML form -->
<form action="todo-modified.jsp">
	Add new item: <input type="text" name="theItem">
	<br>
	<input type="submit" value="Submit">
</form>
<br>

<!-- Step 2: Add new item to "To Do" list -->
<h2>To Do List Items:</h2>
<%	
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	String theItem = request.getParameter("theItem");
	
	boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
	if (isItemNotEmpty && isItemNotDuplicate) {    		
		items.add(theItem.trim());    		
	}
%>

<!-- Step 3: Display all "To Do" item from session -->
<hr>
<b>To List Items:</b> <br>

<ol>
<%
	for(String temp : items){
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>

</body>

</html>