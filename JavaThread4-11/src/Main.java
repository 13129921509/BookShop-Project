

/*class Thread1 implements Runnable{
	String name;
	public Thread1(String name) {
		// TODO �Զ����ɵĹ��캯�����
		this.name=name;
	}
	@Override
	public void run() {
		// TODO �Զ����ɵķ������
		System.out.println(Thread.currentThread().getName()+"���߳̿�ʼ����");
		for(int i=0;i<30;i++){
			System.out.println("���߳�"+name+"��������:"+i);
			if(i==15){
				Thread.yield();
			}
		}
		System.out.println(Thread.currentThread().getName()+"���߳̽�������");
	}
	
}*/

class Thread1 extends Thread{
	String name;
	public Thread1(String name) {
		// TODO �Զ����ɵĹ��캯�����
		this.name=name;
	}
	@Override
	public void run() {
		// TODO �Զ����ɵķ������
		System.out.println(Thread.currentThread().getName()+"���߳̿�ʼ����");
		for(int i=0;i<30;i++){
			System.out.println("���߳�"+name+"��������:"+i);
			try {
				sleep((int)Math.random()*10);
			} catch (InterruptedException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			if(i==15){
				Thread.yield();
			}
		}
		System.out.println(Thread.currentThread().getName()+"���߳̽�������");
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
