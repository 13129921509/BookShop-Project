

/*class Thread1 implements Runnable{
	String name;
	public Thread1(String name) {
		// TODO 自动生成的构造函数存根
		this.name=name;
	}
	@Override
	public void run() {
		// TODO 自动生成的方法存根
		System.out.println(Thread.currentThread().getName()+"子线程开始运行");
		for(int i=0;i<30;i++){
			System.out.println("子线程"+name+"正在运行:"+i);
			if(i==15){
				Thread.yield();
			}
		}
		System.out.println(Thread.currentThread().getName()+"子线程结束运行");
	}
	
}*/

class Thread1 extends Thread{
	String name;
	public Thread1(String name) {
		// TODO 自动生成的构造函数存根
		this.name=name;
	}
	@Override
	public void run() {
		// TODO 自动生成的方法存根
		System.out.println(Thread.currentThread().getName()+"子线程开始运行");
		for(int i=0;i<30;i++){
			System.out.println("子线程"+name+"正在运行:"+i);
			try {
				sleep((int)Math.random()*10);
			} catch (InterruptedException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			if(i==15){
				Thread.yield();
			}
		}
		System.out.println(Thread.currentThread().getName()+"子线程结束运行");
	}
	

}
public class Main {
	public static void main(String[] args) {
		Thread1 t1 = new Thread1("A");
		t1.setPriority(Thread.MIN_PRIORITY);
		
		Thread1 t2 = new Thread1("B");
		t1.setPriority(Thread.MAX_PRIORITY);
		t1.start();
		t2.start();
	}
	
}
