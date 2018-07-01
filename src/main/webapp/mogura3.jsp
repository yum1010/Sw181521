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

                position: relative;
                height: 600px;

            }


            .ex2{

                position: absolute;
                top: 50%;
                left: 50%;
                -ms-transform: translate(-50%,-50%);
                -webkit-transform : translate(-50%,-50%);
                transform : translate(-50%,-50%);
                width: 400px;
                text-align: center;/*一応BOX内の文字も中央寄せ*/
            }

        </style>

    </head>
    <body>
        <div class="ex1">
            <div class="ex2">
                <h1>もぐらたたき＜難しい＞</h1>
                <script type="text/javascript">
                    var limitTime = 20000;
                    var score = 0;
                    var face = 0;
                    var count = 20;
                    //var sta;
                    img = new Array(4);
                    for (i = 0; i < 4; i++) {
                        img[i] = new Image();
                    }
                    img[0].src = "mogu0.gif";//土
                    img[1].src = "mogu1.gif";//出てる
                    img[2].src = "mogu2.gif";//MAX出てる
                    img[3].src = "mogu3.gif";//打たれた


                    function mogura(n) {

                        count = count - 0.25;
                        document.f1.t3.value = Math.floor(count);
                        //if(count==0) break;

                        if (count > 0) {

                            if ((face == 3) || (face == 4)) {//超出てるか撃たれてるか
                                document.images[n].src = img[0].src;//srcの画像をimg0に
                                face = 0;
                            }
                            if (face == 0) {//出てない
                                imageplace = parseInt(Math.random() * 100) % 14;
                                document.images[imageplace].src = img[2].src;//超出す
                                face = 1;
                                setTimeout("mogura(1)", 250);

                            } else if (face == 1) {
                                document.images[imageplace].src = img[1].src;//少し
                                face = 2;
                                setTimeout("mogura(2)", 250);
                            } else if (face == 2) {
                                document.images[imageplace].src = img[0].src;//超
                                face = 3;
                                
                                setTimeout("mogura(2)", 250);
                            } else {
                            	face=4;
                                setTimeout("mogura(3)", 250);
                            }

                        }
                        if (count <= 0) {
                            alert("あなたの得点は" + score + "点！");
                            document.getElementById("a").value = score;

                        }

                    }

                    function startGame(n) {
                        var start = new Date();
                        sta = start.getTime();
                        document.f1.t3.value = "Play";
                        mogura(0);
                    }
                    function hit(n) {

                        if ((document.images[n].src == img[2].src||document.images[n].src == img[1].src) && (event.button == 0)) {
                        	var audio = new Audio("/kick1.wav");
                        	audio.play();
                            score++;
                            document.images[n].src = img[3].src;
                            //face = 3;
                           // document.images[n].src = img[0].src;
                        }

                    }








                </script>

                <form name="f1"><table cellspacing="0"><tr>
                            <th colspan="5"><input type="text" name="t3" value="Ready?" size="16" readonly>
                            </th></tr><tr>
                            <td>&emsp;&emsp;&emsp;<img src="mogu0.gif" onMouseDown="hit(0)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(1)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(2)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(3)"></td>
                        </tr><tr>
                            <td>&emsp;&emsp;&emsp;<img src="mogu0.gif" onMouseDown="hit(4)"></td>
                            <td></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(5)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(6)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(7)"></td>
                        </tr><tr>
                            <td>&emsp;&emsp;&emsp;<img src="mogu0.gif" onMouseDown="hit(8)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(9)"></td>
                            <td></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(10)"></td>
                        </tr><tr>
                            <td>&emsp;&emsp;&emsp;</td>
                            <td><img src="mogu0.gif" onMouseDown="hit(11)"></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(12)"></td>
                            <td></td>
                            <td><img src="mogu0.gif" onMouseDown="hit(13)"></td>
                        </tr>

                    </table><br>
                    <form>

                        <input type="button" name="startBtn" value="スタート" onClick="disabled = true;
                        mogura(0)">
                    </form>

                    <a href="/Logout">ログアウトする</a>

            </div>
        </div>
    </body>
</html>