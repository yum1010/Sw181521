<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>モグラたたき</title>
        <style>
            .ex1 {/*親要素*/
                background:#9acd32;

                position: relative;
                height: 400px;

            }


            .ex2{
                background: #98fb98;
                position: absolute;
                top: 50%;
                left: 50%;
                -ms-transform: translate(-50%,-50%);
                -webkit-transform : translate(-50%,-50%);
                transform : translate(-50%,-50%);
                width: 300px;
                text-align: center;/*一応BOX内の文字も中央寄せ*/
            }

        </style>
    </head>
    <body>
        <div class="ex1">
            <div class="ex2">
            <p><b>ようこそ<c:out value="${userName}"/>さん</b></p>
                モグラたたきのレベルを選んでね<br>
                <a href="/Mogura1">易しい</a><br>
                <a href="/Mogura2">普通</a><br>
                <a href="/Mogura3">難しい</a><br>

            </div>
        </div>
</html>