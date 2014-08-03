package dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;


/**
 * Created by dengry on 14-8-3.
 */
public class MyInvocationHandler implements InvocationHandler {
    private Object realObject;
    public MyInvocationHandler(Object realObject) {
        this.realObject = realObject;
    }
    @Override
    public Object invoke(Object proxyObject, Method method, Object[] args) throws Throwable {
        System.out.println("Before Invoke ! method : " + method);

        //我们可以在代理方法调用前后添加功能
        Object result = method.invoke(realObject, args);

        System.out.println("realObject : " + realObject + "\tresult : " + result + "\targs : " + args);
        System.out.println("After Invoke !");
        return result;
    }
}


