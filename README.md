### 使用方法

自己创建工程测试：

```
// 终端上执行
pod lib create "MyFirstProject" --template-url=https://github.com/linfengwenyou/CreateNewProject.git
```



以上配置完成后还是需要自己去从工程中把代码拉出来，构建文件夹。这个可以用脚本来实现。

```
#!/bin/bash
TEMP=$(cd `dirname $0`;pwd)
echo $TEMP
tmp='var/tmp'
cd /
cd $tmp

enterProjName()
{
	flag=0
	while [[ $flag != 1 ]]; do
		read -p "请输入工程名称：" ProjName
		len=${#ProjName}
		if [ $len -lt 3 ]; then
			echo "请输入长度大于3的工程名称："
			flag=0
		else
			flag=1
		fi
	done
}

createProject()
{
	project_path=$TEMP'/'$ProjName
	if [ ! -e project_path ]; then
		echo "正在创建工程>>>>>>>>"
		rm -rf $tmp'/'$ProjName'/'
		pod lib create $ProjName --template-url=https://github.com/linfengwenyou/CreateNewProject.git
		cd /
		cp -r -f $tmp'/'$ProjName'/Example/' $project_path
		rm -rf $tmp'/'$ProjName'/'
		cd $project_path
		echo "创建工程完毕。正在打开>>>>>>>"
		open $ProjName'.xcworkspace'
	else
		echo "当前工程已存在，请更换名称重新创建"
		enterProjName
		createProject
	fi
}

enterProjName
createProject
```



#### 坑

1. 使用第三方导入方式

```
#import <XXXX/XXXX.h>		// 之前这种导入方式可以，现在不行，需要使用下面的
#import "XXXX.h"
```

