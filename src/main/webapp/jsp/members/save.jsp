<%@ page import="com.hello.servlet.domain.member.Member" %>
<%@ page import="com.hello.servlet.domain.member.MemberRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    System.out.println("save.jsp");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    MemberRepository memberRepository = MemberRepository.getInstance();
    memberRepository.save(member);
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>save</title>
</head>
<body>
<ul>

    <li>id=<%=member.getId()%>
    </li>
    <li>username=<%=member.getUsername()%>
    </li>
    <li>age=<%=member.getAge()%>
    </li>
</ul>

<a href="/index.html">메인</a>
</body>
</html>
