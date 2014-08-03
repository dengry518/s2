package dynamicproxy;

/**
 * 真实对象：定义目标操作
 * Created by dengry on 14-8-3.
 */
public class RealSubject implements Subject {
    @Override
    public void doSomething() {
        System.out.println("RealSubject.doSomething");
    }
}
