<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <img src="mogu2.png"> <br>
                あなたの名前を教えてください。<br>
                <form action="/LoginServlet" method="post" >
                    名前:<input type="text" name="username"><br>
                    <input type="submit" value="登録">
                </form>
                <br>
                <br>
            </div>
        </div>
    </body>
</html>