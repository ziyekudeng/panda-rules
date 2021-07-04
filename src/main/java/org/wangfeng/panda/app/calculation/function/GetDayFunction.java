package org.wangfeng.panda.app.calculation.function;

import org.springframework.stereotype.Component;
import org.wangfeng.panda.app.common.exception.RuleRuntimeException;
import org.wangfeng.panda.app.util.DateUtils;

import java.util.Date;

/**
 * 返回日期中的日，当日期未精确到日时，函数返回1
 *
 * 要求：
 *  1、objs的长度必须有1个，必须是日期格式
 *
 * 返回值类型支持：
 *  1、integer
 */
@Component
public class GetDayFunction extends BaseFunction {

    private static final String GET_DAY_ERROR_MESSAGE = "获取日期中的日函数异常！";

    @Override
    public Object invoke(Object... objs) {

        //1、校验传入的参数个数是否有问题
        checkArgsCount(1,GET_DAY_ERROR_MESSAGE,objs);

        //2、校验格式是否正确
        if(objs[0] == null){
            throw new RuleRuntimeException(GET_DAY_ERROR_MESSAGE+IMPORT_UNITE_ERROR_MESSAGE);
        }

        //3 计算结果
        Date date ;
        try{
            date = new Date(objs[0].toString());
        }catch (Exception e){
            throw new RuleRuntimeException(GET_DAY_ERROR_MESSAGE+IMPORT_UNITE_ERROR_MESSAGE);
        }

        return DateUtils.getDay(date);
    }


    /**
     * 测试方法
     * @param args
     */
    public static void main(String[] args) {
        Object o1 = new Date("2018/09/11");

        GetDayFunction getDayFunction = new GetDayFunction();
        System.out.println(getDayFunction.invoke(o1));

    }




}
