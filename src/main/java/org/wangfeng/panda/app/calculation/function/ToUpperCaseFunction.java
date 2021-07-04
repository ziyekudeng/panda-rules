package org.wangfeng.panda.app.calculation.function;

import org.springframework.stereotype.Component;

/**
 * 字符串转换为大写字母函数
 *
 * 说明：
 *  1、将字符串x中的所有字母转换为大写，函数返回大小写转换完成的新字符串
 *
 * 要求：
 *  1、x为字符类型，否则页面提示“输入信息类型不匹配”
 *
 * 格式：
 *  1、toUpperCase(x)
 *
 * 返回值类型支持：
 *  1、string
 */
@Component
public class ToUpperCaseFunction extends BaseFunction{

    private static final String TO_UPPER_CASE_ERROR_MESSAGE = "字符串转换为大写字母函数异常！";

    @Override
    public Object invoke(Object... objs) {

        //1、校验传入的参数个数是否有问题
        checkArgsCount(1, TO_UPPER_CASE_ERROR_MESSAGE, objs);

        //2、处理传入的参数
        String string = checkString(objs[0].toString(),TO_UPPER_CASE_ERROR_MESSAGE);

        //3、计算并返回结果
        return new StringBuffer().append(string.toUpperCase()).toString();
    }


    /**
     * 测试代码
     * @param args
     */
    public static void main(String[] args) {

        Object o1 = "asdoYUGTUIGdsad%*&*123";


        ToUpperCaseFunction toUpperCaseFunction = new ToUpperCaseFunction();
        System.out.println(toUpperCaseFunction.invoke(o1));

    }


}
