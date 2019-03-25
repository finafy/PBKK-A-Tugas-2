<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
    <title>Form Informasi Lagu</title>
    <style> 
	input[type=text], select {
	  width: 100%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;
	}
	
	input[type=submit] {
	  width: 100%;
	  background-color: #4CAF50;
	  color: white;
	  padding: 14px 20px;
	  margin: 8px 0;
	  border: none;
	  border-radius: 4px;
	  cursor: pointer;
	}
	
	input[type=submit]:hover {
	  background-color: #45a049;
	}
	
	div {
	  border-radius: 5px;
	  background-color: #f2f2f2;
	  padding: 20px;
	}
	</style>
    </head>
    <body>
        <h3>Welcome, Silahkan Memasukkan Detail Lagu</h3>
        <div>
	        <form:form method="POST"
	          action="helloAction" modelAttribute="lagu">
	             <table>
	                <tr>
	                    <td><form:label path="judulLagu">Judul Lagu</form:label></td>
	                    <td><form:input path="judulLagu"/></td>
	                </tr>
	                <tr>
	                    <td><form:label path="genre">Genre</form:label></td>
	                    <td><form:input path="genre"/></td>
	                </tr>
	                <tr>
	                    <td><form:label path="tahun">
	                      Tahun Lagu</form:label></td>
	                    <td><form:input path="tahun"/></td>
	                </tr>
	                <tr>
	                    <td><form:label path="pencipta">
	                      Pencipta Lagu</form:label></td>
	                    <td><form:input path="pencipta"/></td>
	                </tr>
	                <tr>
	                    <td><input type="submit" value="Submit"/></td>
	                </tr>
	            </table>
	        </form:form>
        </div>
    </body>
</html>