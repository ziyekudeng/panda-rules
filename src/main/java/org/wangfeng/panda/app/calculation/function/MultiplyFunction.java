package org.wangfeng.panda.app.calculation.function;

import org.springframework.stereotype.Component;
import org.wangfeng.panda.app.common.exception.RuleRuntimeException;
import org.wangfeng.panda.app.util.NumberUtils;

/**
 * 乘法函数
 * <p>
 * 说明：
 * 1、乘法计算，计算x与y的乘积
 * <p>
 * 要求：
 * 1、x，y均为数字，可以为浮点数、整数类型；否则页面提示“输入信息类型不匹配”
 * <p>
 * 格式：
 * 1、x*y
 * <p>
 * 返回值类型支持：
 * 1、integer
 * 2、double
 */
@Component
public class MultiplyFunction extends BaseFunction {

    private static final String MULTIPLY_ERROR_MESSAGE = "乘法函数异常！";

    @Override
    public Object invoke(Object... objs) {

        //1、校验传入的参数个数是否有问题
        checkArgsCount(2, MULTIPLY_ERROR_MESSAGE, objs);

        //2、校验传入参数的格式是否正确
//        if(!NumberUtils.isCalculationNumber(objs[0])||!NumberUtils.isCalculationNumber(objs[1])){
//            throw new RuleRuntimeException(MULTIPLY_ERROR_MESSAGE+IMPORT_UNITE_ERROR_MESSAGE);
//        }

        //3、计算并返回结果
        try {
            Object returnResult = NumberUtils.toNumber(objs[0]).multiply(NumberUtils.toNumber(objs[1]));
            return returnResult;
        } catch (Exception e) {
            throw new RuleRuntimeException(MULTIPLY_ERROR_MESSAGE + IMPORT_UNITE_ERROR_MESSAGE);
        }
    }

    /**
     * 测试代码
     *
     * @param args
     */
    public static void main(String[] args) {

        Object o1 = 12;
        Object o2 = 3.2;

        MultiplyFunction multiplyFunction = new MultiplyFunction();
        System.out.println(multiplyFunction.invoke(o1, o2));
    }

}
