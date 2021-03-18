# CLT--
完整代码，请联系qq：631253479
### 介绍
clt是一个基于SpringBoot框架设计的。

### **主要功能介绍**

有用户登录注册，景点列表，相册墙，购买景点，停车位，评论，酒店管理和一整套后台管理系统。使用到SMS短信注册验证，JMail进行找回密码邮箱验证，OSS阿里云图片存储服务器，RabbitMQ消息队列以及redis缓存等小技术。整个系统采用Restful风格。以json进行数据的传输。前端页面采用BootStrap以及Layui。

### 软件架构

1.数据库：MySql

2.前端：Layui，BootStrap，Echars等技术

3.后台：SpringBoot、SpringDataJpa等

4.架构模式：半前后分离架构模式

5.模板引擎：thymeleaf

6.项目管理：Maven


### 安装教程

该系统需要安装RabbitMQ    https://www.rabbitmq.com/
和Redis    https://redis.io/即可
在RabbitMQ中只需要增加sms消息队列即可（RabbitMQ用途目前只用在短信验证信息中）
此外需要申请与注册阿里的OSS图片服务和SMS短信服务
以及QQ邮箱的验证服务（用于找回密码的验证码）

### 使用说明

完成以上安装，导入数据库后，即可运行Application

##### **前台访问路径：**
http://localhost:8080/dist/view
##### **后台访问路径：**
http://localhost:8080/admin/

技术简介
1、后台主要框架：SpringBoot
2、前台模板引擎：Thymeleaf
3、前端用户页面：BootStrap、Html+Css、jquery、javascript、ajax、sweetalert等技术（模板网站中下载）
5、后端管理员页面：Layui、Bootstrap、Echars
6、数据库：mysql 5.7
7、缓存：redis
8、消息队列：rabbitMQ
9、架构模式：Restful架构模式
10、项目管理：Maven
11、JDK版本：1.8
12、额外功能：阿里云短信服务SMS、阿里云图片存储OSS、QQ邮箱验证服务
13、主要算法：Twitter雪花算法（ID生成策略）、Bcrypt（密码加密）、JPA排序

