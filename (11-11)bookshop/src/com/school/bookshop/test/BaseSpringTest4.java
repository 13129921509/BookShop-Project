package com.school.bookshop.test;

import org.junit.runner.RunWith;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations={"classpath:com/school/bookshop/resource/applicationContext.xml"})
@RunWith(value = SpringJUnit4ClassRunner.class)
public class BaseSpringTest4 extends AbstractJUnit4SpringContextTests{
}
