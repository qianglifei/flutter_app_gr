class Api{
  //.static 表示成员在类本身上可用，而不是在类的实例上。这就是它的意思，并没有用于其他地方，static修饰成员
  //.const 修饰值，我们可以在创建集合的使用它，例如 const[1,2,3],以及构造对象（代替new），比如const Point（2，3）.这里，
  //const 意味着对象的整个状态可以在编译时完全确定，并且对象将被冻结并完全不可完。
  static const String IP = "app.gyrc.cn";
  static const String BASE_URL = "http://" + IP + "/grapp/";
  //首页轮播
  static const String FIRST_BANNER = BASE_URL + "rcfw/rczc/zcxctCx";
  //首页通知公告
  static const String MASS_ANNOUNCEMENT = BASE_URL + "tjsy/tjsy/zxhyCx";
  //重点服务企业列表
  static const String Key_SERVICE_ENTERPRIESE = BASE_URL + "qz/qzsy/zdqylbCx";
  //获取新闻父类导航数据接
  static const String GET_NEWS_PARENT_LIST = BASE_URL + "zx/xxzx/flxlbCx";
  //获取新闻子类导航数据接口
  static const String GET_NEWS_CHILD_LIST = BASE_URL + "zx/xxzx/zlxlbCx";
  //获取新闻列表数据
  static const String GET_NEWS_LIST = BASE_URL + "zx/xxzx/xxzxlbCx";
}