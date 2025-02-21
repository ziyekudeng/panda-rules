package org.wangfeng.panda.app.calculation.function;

import org.springframework.stereotype.Component;
import org.wangfeng.panda.app.common.exception.RuleRuntimeException;
import org.wangfeng.panda.app.util.NumberUtils;

/**
 * 字符串左截取函数
 * <p>
 * 说明：
 * 1、将字符串x从左边起截取y位，函数返回截取后的新字符串
 * <p>
 * 要求：
 * 1、x为字符串类型，y为大于等于0的整数；否则页面提示“输入信息类型不匹配”
 * <p>
 * 格式：
 * 1、substLeft(x,y)
 * <p>
 * 返回值类型支持：
 * 1、string
 */
@Component
public class SubstLeftFunction extends BaseFunction {

    private static final String SUBST_LEFT_ERROR_MESSAGE = "字符串左截取函数异常！";

    @Override
    public Object invoke(Object... objs) {

        //1、校验传入的参数个数是否有问题
        checkArgsCount(2, SUBST_LEFT_ERROR_MESSAGE, objs);

        //2、处理传入的参数
        String string = checkString(objs[0].toString(), SUBST_LEFT_ERROR_MESSAGE);
        if (!NumberUtils.isCalculationNumber(objs[1]) || !NumberUtils.NonNegativeInteger(Double.valueOf(objs[1].toString()))) {
            throw new RuleRuntimeException(SUBST_LEFT_ERROR_MESSAGE + IMPORT_UNITE_ERROR_MESSAGE);
        }

        //3、当字符串的长度小于需要截取的长度之后，直接返回原字符串
        if (string.length() < Integer.valueOf(objs[1].toString())) {
            return string;
        }

        //3、计算并返回
        return string.substring(0, Integer.valueOf(objs[1].toString()));
    }

    /**
     * 测试代码
     *
     * @param args
     */
    public static void main(String[] args) {

        Object o1 = "a";
        Object o2 = "2";

        System.out.println(1 == 1.00d);

        SubstLeftFunction substLeftFunction = new SubstLeftFunction();
        System.out.println(substLeftFunction.invoke(o1, o2));

    }

}
