#!/bin/bash


#echo "========== cd develop =========="
#cd /home/liangxl/work/AX12/develop

if [ "$1" == "r" ];then
	echo "========== svn revert include/toplevel.mk !!!] =========="
	svn revert include/toplevel.mk
elif [ "$1" == "d" ];then
	echo "========== del toplevel.mk[del cp new wireless driver!!!] =========="
	sed -i "s/echo \"\[wireless up to 6.1.2.121_CAE.2\]\"/echo \"\[no no no wireless up to 6.1.2.121_CAE.2\]\"/g" include/toplevel.mk
	sed -i "s/rm -rf \$(TOPDIR)\/intel_source/#rm -rf \$(TOPDIR)\/intel_source/g" include/toplevel.mk
	sed -i "s/cp \$(TOPDIR)\/6.1.2.121_CAE.2\/intel_source/#cp \$(TOPDIR)\/6.1.2.121_CAE.2\/intel_source/g" include/toplevel.mk
	sed -i "s/cp \$(TOPDIR)\/6.1.2.121_CAE.2\/overlay/#cp \$(TOPDIR)\/6.1.2.121_CAE.2\/overlay/g" include/toplevel.mk
	sed -i "s/cp \$(TOPDIR)\/6.1.2.121_CAE.2\/dl/#cp \$(TOPDIR)\/6.1.2.121_CAE.2\/dl/g" include/toplevel.mk
fi
