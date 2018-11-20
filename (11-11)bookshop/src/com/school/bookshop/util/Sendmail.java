package com.school.bookshop.util;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import sun.tools.tree.ThisExpression;


public class Sendmail {

    /**
     * @param args
     * @throws Exception 
     */
	private String toer;
	private String message2;
	public Sendmail(String toer,String message){
		this.toer = toer;
		this.message2 = message;
	}
	
	
	public void setConfig(){
        Properties prop = new Properties();
        prop.setProperty("mail.host", "smtp.qq.com");
        prop.setProperty("mail.transport.protocol", "smtp");
        prop.setProperty("mail.smtp.auth", "true");
        //ʹ��JavaMail�����ʼ���5������
        //1������session
        Session session = Session.getInstance(prop);
        //����Session��debugģʽ�������Ϳ��Բ鿴��������Email������״̬
        session.setDebug(true);
        //2��ͨ��session�õ�transport����
        Transport ts;
		try {
			ts = session.getTransport();
			//3��ʹ��������û��������������ʼ��������������ʼ�ʱ����������Ҫ�ύ������û����������smtp���������û��������붼ͨ����֤֮����ܹ����������ʼ����ռ��ˡ�
	        ts.connect("smtp.qq.com", "942445346@qq.com", "ctixydsvapdwbajf");
	        //4�������ʼ�
	        Message message = createSimpleMail(session);
	        //5�������ʼ�
	        ts.sendMessage(message, message.getAllRecipients());
	        ts.close();
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    }
	
    public MimeMessage createSimpleMail(Session session)
            throws Exception {
        //�����ʼ�����
        MimeMessage message = new MimeMessage(session);
        //ָ���ʼ��ķ�����
        message.setFrom(new InternetAddress("942445346@qq.com"));
        //ָ���ʼ����ռ��ˣ����ڷ����˺��ռ�����һ���ģ��Ǿ����Լ����Լ���
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toer));
        //�ʼ��ı���
        message.setSubject("��֤��");
        //�ʼ����ı�����
        message.setContent(message2, "text/html;charset=UTF-8");//"text/html;charset=UTF-8""text/plain;charset=utf-8"
        //���ش����õ��ʼ�����
        return message;
    }
    
    public static void main(String[] args) {
    	Sendmail sendmail = new Sendmail("1833634260@qq.com","cj�����");
    	sendmail.setConfig();
	}
}