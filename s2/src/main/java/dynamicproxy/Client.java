package dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/**
 * Created by dengry on 14-8-3.
 */
public class Client {
    public static void  main(String[] args) {
        //创建目标对象，也就是被代理对象
        RealSubject realSubject = new RealSubject();

        //将目标对象交给InvocationHandler
        InvocationHandler handler = new MyInvocationHandler(realSubject);


        //返回代理对象
        Subject subject = (Subject) Proxy.newProxyInstance(realSubject.getClass().getClassLoader(),
                realSubject.getClass().getInterfaces(),
                handler);

        //叫代理对象去doSomething()，其实在代理对象中的doSomething()中还是会
        //用handler来调用invoke(proxy, method, args) 参数proxy为调用者subject(this)，
        //method为doSomething()，参数为方法要传入的参数，这里没有
        subject.doSomething();
    }
}

