#!/usr/bin/python3

import base64
import sys

#MX12的串口密码算法：
#拼接字符："mac地址9 10两位"+"镜像密码"+"mac地址最后两位"，进行base64加密，生成串口密码
#例如：镜像密码为： whC567_490，MAC地址为：502B73FA03A0——>拼接字符为："03whC567_490a0"——> base64加密后的字符串即为串口密码

def use_page(arg):
    print("Format Error,may be like This:\n\n \t\t# python3 %s mac ser_pwd" %arg)
    print("\n\n \t\t# python3 %s  502B73FA03A0 whC567_490\n" %arg)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        use_page(sys.argv[0])
        exit(-1)
    mac = sys.argv[1]
    mac=str.lower(mac)
    ser_pwd = sys.argv[2]

    print("In Mac : %s" %mac)
    print("In Server PWD : %s" %ser_pwd)
        
    org_str = mac[0] + mac[1] + ser_pwd + mac[2] + mac[3] 
    #print("Origin str:%s"%org_str)

    en_str = base64.b64encode(org_str.encode())
    print("Out Password : %s" %en_str.decode())
        
