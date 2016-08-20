<%@page import="java.util.Date"%>
<%@page import="com.tsc9526.monalisa.orm.parser.Args"%>
<%@ page import="com.tsc9526.monalisa.orm.meta.MetaTable"%>
<%@ page import="test.com.tsc9526.monalisa.orm.mysql.MysqlDB,com.tsc9526.monalisa.orm.Query"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%Query q=new Query(); Args args=new Args();%> 
<!-- hello -->
<query namespace="test.com.tsc9526.monalisa.orm.sql.Q0001" db="<%=MysqlDB.class%>"> 
	<!-- 测试查询A --> 
	<q id="testFindAll_A" resultClass="DS0001"> 
		<%{	
			/*名称*/
			String name     =args.pop(); 
			String title    =args.pop();
			String create_by=args.pop("");
		
			Date fromTime=new Date();
			Date endTime =new Date();
			  
			name="N%";
		%>
		SELECT *  <%=name.length()>2?", a.id":", b.id"%> 
		FROM test_table_1 a left join test_table_2 b <%out.print("on a.id=b.id");%> 
		where <%="1=1"%>    
		<%if(name.length()>0)%>AND a.name like $name
		<%if(title!=null && title.length()>0)%>AND a.title like $title
		<%if(create_by!=null){%>OR a.create_by =$create_by<%}%>
		
		limit 3
		<%}%>
	</q>
	
	<!-- 测试查询<B> -->
	<q id="testFindAll_B" >
	<%{
		/*变量名称*/
		String name=args.pop("");
		/*变量标题*/
		String title=args.pop("");
		/*变量日期*/
		String create_by=args.pop("");
		
		q.add("SELECT * FROM test_table_1");
	%>
		WHERE 2=1
		
		<%if(name.length()>0)%>AND name = $name
		<%if(title!=null)%>AND title like $title
		<%if(create_by!=null){%>AND create_by =$create_by<%}%>
	
	<%}%>
	</q>	
</query>
<%!
	public String trim(String a){
		return a==null?"":a.trim();
	}
%>