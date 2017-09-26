### 使用方法

自己创建工程测试：

```
// 终端上执行
pod lib create "MyFirstProject" --template-url=https://github.com/linfengwenyou/CreateNewProject.git
```



以上配置完成后还是需要自己去从工程中把代码拉出来，构建文件夹。这个可以用脚本来实现。



#### 坑

1. 使用第三方导入方式

```
#import <XXXX/XXXX.h>		// 之前这种导入方式可以，现在不行，需要使用下面的
#import "XXXX.h"
```

