<%@page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>モグラ叩きシステム</title>
        <style>
            .ex1{
                background:#9acd32;
                position:relative;
                height:400px;
            }
            .ex2{
                background:#98fb98;
                position:absolute;
                top:50%;
                left: 50%;
                -ms-transform: translate(-50%,-50%);
                -webkit-transform: translate(-50%,-50%);
                transform: translate(-50%,-50%);
                width: 400px;
                height:200px;
                text-align: center;

            }
        </style>
    </head>
    <body>
        <div class="ex1">
            <div class="ex2"><font size="4em">
                <p><b>ようこそ<c:out value="${userId}"/>さん</b></p>
                <p>レベルを選んで下さい</p>
                <a href="/Mogura1">簡単</a><br>
                <a href="/Mogura2">普通</a><br>
                <a href="/Mogura3">難しい</a>
                </font>
            </div>
        </div>
    </body>
</html>
