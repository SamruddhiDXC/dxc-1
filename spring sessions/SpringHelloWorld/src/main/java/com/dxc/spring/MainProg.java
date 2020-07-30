package com.dxc.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainProg {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("hello.xml");
		Hello h = (Hello)ctx.getBean("bean1");
		System.out.println(h.sayHello("Shankar"));
	}
}