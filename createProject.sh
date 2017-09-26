#!/bin/bash
# 找出当前所在路径
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