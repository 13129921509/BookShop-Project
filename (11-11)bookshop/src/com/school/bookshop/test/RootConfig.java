package com.school.bookshop.test;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

public class RootConfig {
	/**
     * �����ʼ�������
     * @return
     */
    @Bean
    public MailSender mailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.163.com");//ָ����������Email���ʼ�������������
        mailSender.setPort(25);//Ĭ�϶˿ڣ���׼��SMTP�˿�
        mailSender.setUsername("test@163.com");//�û���
        mailSender.setPassword("test");//����
        return mailSender;
    }
}
