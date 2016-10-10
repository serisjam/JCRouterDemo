# JCRouter

JCNavigationConroller是一个简单易用的路由跳转协议工具

支持StroyBoard xib code 方式创建ViewController

##使用
首先设置路由跳转的URL(一般都是在`application:didFinishLaunchingWithOptions:`)

```
    //注册Router
    [[JCRouter shareRouter] mapKey:@"pageOne/:info/:userName" toController:[PageOneViewController class]];
    [[JCRouter shareRouter] mapKey:@"pageTwo/:pageIndex" toController:[PageTwoViewController class]];
    [[JCRouter shareRouter] mapKey:@"pageThree" toController:[PageThreeViewController class]];
    [[JCRouter shareRouter] mapKey:@"presentPage" toController:[PresentViewController class]];

```

如果要跳转，提供二种跳转方式

```
[[JCRouter shareRouter] pushURL:@"pageOne/Man/Jam"];

[[JCRouter shareRouter] presentURL:@"presentPage" completion:nil];

```
如果要从stroyBoard 中创建ViewController
在注册的ViewController中，实现这样的类方法

```
//如果从stroybroad 创建 viewController， 那么JCRouter会执行这个类方法
+ (id)allocWithRouterParams:(NSDictionary *)params {
    PageOneViewController *instance = [[UIStoryboard storyboardWithName:@"DemoPageOne" bundle:nil] instantiateInitialViewController];
    NSLog(@"%@", params);
    return instance;
}

```
如果是code方式或者是xib中加载ViewController
在注册的ViewController中，实现这样的实例方法

```
//如果是代码 xib 创建ViewController 则JCRouter会调用此方法
- (id)initWithRouterParams:(NSDictionary *)params {
    if ((self = [self initWithNibName:@"DemoPageThree" bundle:nil])) {
        NSLog(@"%@", params);
    }
    return self;
}

```



##如何使用

你可以直接拷贝JCRouter目录到你的项目中

也可以通过CocoaPods

pod 'JCRouter'

来加入到pods管理的第三方库中

## 效果
![image](./JCRouterDemo.gif)

