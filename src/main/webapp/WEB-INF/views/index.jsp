


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->

<form action="addnote" method="post">
		<table>
			
			<tr>
				<td>NoteTitle</td>
				<td><input type="text" name="noteTitle" /> <br></td>
			</tr>
			<tr>
				<td>NoteContent</td>
				<td><input type="text" name="noteContent" /> <br></td>
			</tr>
			<tr>
				<td>NoteStatus</td>
				<td><input type="text" name="noteStatus" /> <br></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add Note"></td>
			</tr>
		</table>

</form>

<table border="2">
		<tr>
			<th>Student Id</th>
			<th>Student Name</th>
			<th>Grade</th>
		</tr>
		<c:forEach var="note" items="${notelist}">

			<tr>
				<td>${note.noteId}</td>
				<td>${note.noteTitle}</td>
				<td>${note.noteContent}</td>
				<td>${note.noteStatus}</td>
				<td>${note.CreatedAt}</td>
				<td><a href="delete/${note.noteId}"><button>Delete</button></a></td>
			
			</tr>
		</c:forEach>

	</table>





</body>
</html>