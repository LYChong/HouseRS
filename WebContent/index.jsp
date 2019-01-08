<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/housesale.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="box">
    <div class="head">
        <span class="s1"><b>安客居 </b></span>
        <span class=s2>|</span>
        <span class="s3">位置</span>
        <span class="s4"><a href="#">滁州</a><i class="glyphicon glyphicon-triangle-bottom"></i></span>
        <div class="head-right2">
            <span><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;&nbsp;<a href="sign_in.jsp">登录</a></span>
            <span>&nbsp;&nbsp;<a href="sign_up1.jsp">注册</a></span>
        </div>
        <div class="head-right">
            <form class="form-inline" action="QuerydirectionServlet">
              <div class="form-group">

                   <div class="input-group">
 <!--搜索框接口-->
                       <input type="text" class="form-control" id="exampleInputAmount" name="address" placeholder="输入地址">
                   </div>
  </div>
  <button type="submit" class="btn btn-success">搜索</button>
</form></div>
    </div>
    <div class="body1">
 <!--导航接口-->
        <ul>
            <li><a href="index.jsp">区域找房</a></li>
            <li><a href="#">小区</a></li>
            <li><a href="lease.jsp">我要出租</a></li>
            <li><a href="sale.jsp">我要出售</a></li>
            <li><a class="de" href="PanduanServlet">个人主页</a></li>
            
        </ul>
    </div>
    <div class="body2">
        <span class="s5"><a href="">滁州房产网</a>><a href="">滁州租房</a></span>
    </div>
    <div class="body3">
        <ul class="u1">
            <li style="height: 100px;">
                <table class="t1">
                    <tr>
                        <td style="color:#666666;"><b>位置:</b></td>
                        <td style="color: #ff6f0f;"><b>区域</b></td>
                        <td colspan="8" style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地铁</td>
                    </tr>
                    <tr style="border-top: 1px solid rgba(200,155,154,0.8);border-bottom:1px solid rgba(200,155,154,0.8); ">
                        <td></td>
                        <td style="color: #ff6f0f;"><b>全部</b></td>
                        <td>天长市</td>
                        <td>明光市</td>
                        <td>来安县</td>
                        <td>全椒县</td>
                        <td>定远县</td>
                        <td>凤阳县</td>
                        <td><select name="test4">
                              <option selected="selected">--请选择--</option>
                              <option>天长市</option>
                              <option>明光市</option>
                              <option>来安县</option>
                              <option>全椒县</option>
                              <option>定远县</option>
                              <option>凤阳县</option>
                            </select></td>
                        <td><button class="bt1">查询</button></td>
                    </tr>
                </table>
            </li>
            <li>
                <table class="t2">
                    <tr style="border-bottom: 1px solid rgba(0,0,0,0.3)">
                        <td style="color: #666666;"><b>租金：</b></td>
                        <td style="color: #ff6f0f;"><b>全部</b></td>
                        <td>500元以下</td>
                        <td>500-1000</td>
                        <td>1000-2000</td>
                        <td>2000-2500</td>
                        <td>2500-3000</td>
                        <td>3000-3500</td>
                        <td><select name="test4">
                              <option selected="selected">--请选择--</option>
                              <option>500元以下</option>
                              <option>500-1000</option>
                              <option>1000-2000</option>
                              <option>2000-2500</option>
                              <option>2500-3000</option>
                              <option>3000-5000</option>
                            </select></td>
                            <td><button>查询</button></td>
                    </tr>
                </table>
            </li>
            <li>
                <table class="t3">
                    <tr style="border-bottom: 1px solid rgba(0,0,0,0.3)">
                        <td style="color: #666666;">&nbsp;&nbsp;<b>房型：</b></td>
                        <td style="color:#ff6f0f;">&nbsp;&nbsp;&nbsp;&nbsp;<b>全部</b></td>
                        <td><a href="">一室</a></td>
                        <td><a href="">二室</a></td>
                        <td><a href="">三室</a></td>
                        <td><select name="test4">
                              <option selected="selected">户型</option>
                              <option>一室</option>
                              <option>二室</option>
                              <option>三室</option>
                              <option>四室</option>
                            </select></td>
                            <td><button>查询</button></td>
                    </tr>
                </table>
            </li>
            <li>
                <table class="t4">
                    <tr style="border-bottom: 1px solid rgba(0,0,0,0.3)">
                        <td style="color: #666666;"><b>类型:</b></td>
                        <td style="color: #ff6f0f;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>全部</b></td>
                        <td>整租</td>
                        <td>合租</td>
                    </tr>
                </table>
            </li>
            <li>
                <table class="t5">
                    <tr>
                        <td style="color: #666666;"><b>更多筛选:</b></td>
                        <td><select name="test4">
                              <option selected="selected">房屋类型</option>
                              <option>普通住宅</option>
                              <option>公寓</option>
                              <option>平房</option>
                              <option>别墅</option>
                            </select>
                        </td>
                        <td>
                            <select name="test5">
                                <option selected="selected">朝向</option>
                                <option>朝南</option>
                                <option>朝北</option>
                                <option>朝西</option>
                                <option>朝东</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </li>
        </ul>
    </div>
   
    <div class="body4">
     
      <button type="submit" class="btn btn-success btn-lg btn-block">点击查询</button>
    
    </div>
    </form>
    <div class="foot">
    
    
    <div class="int1">
    <div class="left"></div>
    <div class="right">
        <ul>
            <li><span class="s5"><h3><b>安徽省，六安市，晋安区，庵凤路小区</b></h3></span></li>
            <li class="l1">
                <span>面积：120平方&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>租金：5000/月&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>朝南&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>楼层：3层&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>简装&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>电话：17375354961&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>联系人：刘先生&nbsp;&nbsp;|&nbsp;&nbsp;</span>
            </li>
            <li class="l2">
                <button class="btn btn-success btn-lg" style="width: 100px;">下架</button>
            </li>
        </ul>
    </div>
</div>


   <div class="int1">
    <div class="left"></div>
    <div class="right">
        <ul>
            <li><span class="s5"><h3><b>安徽省，滁州市，晋安区，山水人家</b></h3></span></li>
            <li class="l1">
                <span>面积：120平方&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>租金：5000/月&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>朝南&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>楼层：3层&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>简装&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>电话：17375350439&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>联系人：杜先生&nbsp;&nbsp;|&nbsp;&nbsp;</span>
            </li>
            <li class="l2">
                <button class="btn btn-success btn-lg" style="width: 100px;">下架</button>
            </li>
        </ul>
    </div>
</div>


    </div>
</div>
<div class="d1">
    <ul>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-user"></span> 客服
        </button></li>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-wrench"></span> 帮助
        </button></li>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-zoom-in"></span> 调研
        </button></li>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-th-large"></span> 后台
        </button></li>
    </ul>
</div>
<div class="d2">在线客服</div>
<div class="d3">查看帮助</div>
<div class="d4">市场调研</div>
<div class="d5">后台统计</div>
</body>
</html>