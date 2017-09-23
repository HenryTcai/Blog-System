
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>博客管理系统</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="/js/layer.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand text-success" href="/admin/main">博客管理</a>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <!-- Example single danger button -->
                <div class="btn-group">
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        新建
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="javascript:void(0);" onclick="fullScreen('添加文章','/admin/article/add')">文章</a>
                        <a class="dropdown-item" href="#">评论</a>
                    </div>
                </div>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/admin/main">主页 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/admin/article_list">文章管理</a>

            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
        </form>
    </div>
</nav>
<div class="card mb-3">
    <div style="height: 180px;overflow: hidden">
        <img class="card-img-top" src="/img/82839-106.jpg" alt="Card image cap" style="height: 100%;width:100%;">
    </div>

    <div class="card-body">
        <h4 class="card-title">${admin.username}</h4>
        <p class="card-text"><small class="text-muted">上次登录时间:${loginLog.localTime}</small></p>
        <p class="card-text"><small class="text-muted">上次登录IP:${loginLog.ip}</small></p>
    </div>
</div>
<div >
    <table class="table table-hover">
        <p class="text-success" style="text-align: center"> 系统统计</p>
        <thead>
        <tr >
            <th>#</th>
            <th>文章数</th>
            <th>评论数</th>
            <th>登陆次数</th>
        </tr>
        </thead>
        <tbody>
        <tr class="table-success">
            <th scope="row">全部</th>
            <td>87</td>
            <td>85</td>
            <td>58</td>
        </tr>
        <tr class="table-danger">
            <th scope="row">今日</th>
            <td>4</td>
            <td>5</td>
            <td>8</td>
        </tr>
        <tr class="table-warning">
            <th scope="row">本周</th>
            <td >21</td>
            <td>13</td>
            <td>13</td>
        </tr>
        <tr class="table-info">
            <th scope="row">本月</th>
            <td>12</td>
            <td>53</td>
            <td>53</td>
        </tr>
        </tbody>
    </table>
</div>

<div style="width: 50%;position: relative;left: 25%">
    <table class="table table-sm" >
        <p class="text-success" style="text-align: center"> 系统信息</p>

        <tr>
            <th scope="row">服务器ip</th>
            <td>${hostIp}</td>
        </tr>
        <tr>
            <th scope="row">服务器时间</th>
            <td>${date}</td>
        </tr>

    </table>
</div>
<script>
    function fullScreen(title,url){
        var index = layer.open({
            type: 2,
            title: title,
            area: ['70%', '70%'],
            content: url,
            maxmin: true
        });
        layer.full(index);
    }
</script>
</body>
</html>