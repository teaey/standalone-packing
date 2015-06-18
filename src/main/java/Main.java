/**
 * Created by xiaofei.wxf on 2015/6/18.
 */
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello packing");
        while (true) {
            try {
                System.out.println("Hello packing");
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
