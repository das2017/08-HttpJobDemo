# HttpJobDemo
任务调度Job

## 第8章的Demo下载和更多资料
### Demo下载：
+ WinJobDemo下载地址：https://github.com/das2017/QuartzDemo
+ HttpJobDemo下载地址：https://github.com/das2017/HttpJobDemo
+ Quartz.NET官网：http://www.quartz-scheduler.net/
+ Quartz.NET开源网址：https://github.com/quartznet/quartznet

### 更多资料：
+ Dapper.NET：https://github.com/StackExchange/Dapper
+ EmitMapper：http://emitmapper.codeplex.com/
+ AutoMapper：https://github.com/AutoMapper/AutoMapper
+ Autofac文档：http://docs.autofac.org/en/latest/
+ Autofac：https://github.com/autofac/Autofac
+ NuGetPackageExplorer：https://github.com/NuGetPackageExplorer/

## 新书上市：
+ 京东链接：https://item.jd.com/12477683.html
+ 当当链接：http://product.dangdang.com/1436599215.html	
+ 天猫店铺：https://detail.tmall.com/item.htm?spm=a1z10.3-b.w4011-16861154605.39.46be1b8bGWSsmz&id=585204361262&rn=12e44ccc5bb398b74fdd72e49e2af64e&abbucket=9

## 内容简介
本书结合作者近几年的工作经验，总结了一套可直接落地、基于开源、成本低、可快速搭建的中小研发团队架构实践方法。本书共5篇22章，开篇是本书的导读；架构篇是设计思想的提升，包括企业总体架构、应用架构设计、统一应用分层等；框架篇主讲中间件和工具的使用，包括消息队列、缓存、Job、集中式日志、应用监控和微服务等；公共应用篇是技术与业务的结合，包括单点登录和企业支付网关；进阶篇是从架构到管理，包括技改案例、技术与业务的匹配与融合等。从架构、框架、公共应用，到案例实战和技术管理，本书将大公司的工程理念压缩应用到中小研发团队，使小团队也能构建大网站。

## 全书目录
<pre>
第1篇　开篇
1　可参考的才是有价值的（含案例和代码）
1.1　框架篇—工欲善其事，必先利其器
1.2　架构篇—思想提升
1.3　公共应用篇—业务与技术的结合
1.4　进阶篇—从架构到管理
1.5　案例参考和Demo下载
第2篇　架构篇
2　企业总体架构
2.1　企业商务模型
2.2　架构现状
2.3　领域模型
2.4　架构规划
2.5　架构实施
2.6　案例参考
3　应用架构设计
3.1　初识架构设计
3.2　应用架构设计案例
3.3　更多知识探讨
3.4　互联网公司的架构设计要怎么落地
3.5　你给技术打个分
3.6　案例参考
4　统一应用分层
4.1　为什么要统一应用分层
4.2　统一应用逻辑架构
4.3　分层规范实践
4.4　互动问答
4.5　Demo下载
5　生产环境诊断工具WinDbg
5.1　诊断工具简介
5.2　获取异常进程的Dump文件
5.3　WinDbg的使用方法
5.4　一个真实案例
5.5　Demo下载
第3篇　框架篇
6　RabbitMQ快速入门及应用
6.1　为什么要用消息队列RabbitMQ
6.2　RabbitMQ简介
6.3　RabbitMQ的工作原理
6.4　RabbitMQ的基本用法
6.5　Demo下载
7　Redis快速入门及应用
7.1　Redis简介
7.2　Redis的数据结构
7.3　Redis的重要特性
7.4　使用方法
7.5　Redis Key命名规范与常见问题
7.6　Demo下载
8　任务调度Job
8.1　Job简介
8.2　WinJob
8.3　HttpJob
8.4　Cron表达式
8.5　Demo下载
9　应用监控系统Metrics
9.1　Metrics简介
9.2　埋点Metrics.NET的方法
9.3　Grafana配置
9.3.1　设置仪表盘（Dashboard）
9.3.2　设置面板（Panel）
9.3.3  设置模板Templating
9.3.4　设置Time Range
9.3.5　告警设置
9.4　其他说明
9.5　Metrics的使用价值
9.6　Demo下载
10　集中式日志ELK
10.1　集中式日志
10.2　配置方法
10.3　使用方法
10.4　Demo下载
11　微服务架构MSA
11.1　MSA简介
11.2　MSA框架的使用
11.3　微服务治理
11.4　微服务网关API Gateway
11.5　Demo下载
12　搜索服务Solr
12.1　Solr简介
12.2　Solr的工作原理
12.3　Solr的特性
12.4　Demo下载
13　分布式协调器ZooKeeper
13.1　ZooKeeper是什么
13.2　ZooKeeper的工作原理简介
13.3　ZooKeeper的典型应用场景
13.4　Demo下载
14　小工具合集
14.1　ORM工具
14.2　对象映射工具
14.3　IoC工具
14.4　DLL包管理工具
14.5　Demo下载
15　一键发布和测试之持续集成工具Jenkins
15.1　Jenkins简介
15.2　Jenkins插件与相关工具
15.3　Jenkins关键配置
15.4　Jenkins的使用价值
第4篇　公共应用篇
16　单点登录
16.1　单点登录简介
16.2　SSO技术实现
16.3　JWT规范
17　企业支付网关
17.1　企业支付网关介绍
17.2　统一支付服务
17.3　统一支付通知
17.4　Demo下载
第5篇　进阶篇
18　技改之路：从单体应用到微服务
18.1　系统背景
18.2　前期工作
18.3　技改实施
18.4　总结
18.5　互动问答
19　机票垂直搜索引擎之性能优化
19.1　行业背景与垂直搜索
19.2　主要问题与解决方案
19.3　静态数据与任务打底
19.4　缓存策略与数据一致
19.5　实时查询与三段超时
19.6　政策匹配与算法优化
19.7　小结
20　上云纪要
20.1　为什么要上云
20.2　内部虚拟化和外部云化
20.3　云选型
20.4　上云八条
20.5　成功上云
20.6　上云总结
21　技术与业务的匹配与融合
21.1　技术人员与业务人员的抱怨
21.2　问题出在哪里
21.3　理解源于彼此的了解
21.4　如何去匹配与融合
21.5　什么在驱动公司的发展
22　研发团队文化是怎么“长”出来的
22.1　神秘的文化
22.2　遇到的问题
22.3　解决之道
22.4　总结与提升
22.5　“长”出来的团队文化
后记
架构师进阶之路
谈谈互联网公司的技术架构和管理
短评
</pre>

