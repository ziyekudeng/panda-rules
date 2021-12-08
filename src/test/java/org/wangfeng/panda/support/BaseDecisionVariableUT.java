package org.wangfeng.panda.support;

import org.springframework.beans.factory.annotation.Autowired;
import org.wangfeng.panda.app.dao.mapper.TCaDecisionVariableMapper;
import org.wangfeng.panda.app.service.DecisionVariableService;

/**
 * 决策变量基础测试类
 */
public class BaseDecisionVariableUT extends BaseUT {

    @Autowired
    protected DecisionVariableService decisionVariableService;

    @Autowired
    protected TCaDecisionVariableMapper tCaDecisionVariableMapper;

}
