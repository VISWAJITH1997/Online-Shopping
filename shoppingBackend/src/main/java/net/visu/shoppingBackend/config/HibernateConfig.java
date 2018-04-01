package net.visu.shoppingBackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages={"net.visu.shoppingBackend.dto"})
@EnableTransactionManagement
public class HibernateConfig {
	
	
	
	private final static String DATABASE_URL = "jdbc:h2:tcp://localhost/~/onlineshopping1";
	private final static String DATABASE_DRIVER = "org.h2.Driver";
	private final static String DATABASE_DIALECT = "org.hibernate.dialect.H2Dialect";
	private final static String DATABASE_USERNAME = "sa";
	private final static String DATABASE_PASSWORD = "";
	
	// dataSource bean will be available
	@Bean("dataSource")
	public DataSource getDataSource() {
		System.out.println("Initialize DataSource");			
		BasicDataSource dataSource = new BasicDataSource();
		
		dataSource.setDriverClassName(DATABASE_DRIVER);
		dataSource.setUrl(DATABASE_URL);
		dataSource.setUsername(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);
	
		return dataSource;
		
	}
	
	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource){
		
		System.out.println("Session factory");
		LocalSessionFactoryBuilder builder=new LocalSessionFactoryBuilder(dataSource);
		
		builder.addProperties(getHibernateProperties());
		builder.scanPackages("net.visu.shoppingBackend.dto");
		
		return builder.buildSessionFactory();
	}
	
	/// all the hibernate properties will be returned in this method
	private Properties getHibernateProperties() {

		System.out.println("Hibernate");
		Properties properties = new Properties();
		
		properties.put("hibernate.dialect", DATABASE_DIALECT);
		
		properties.put("hibernate.show_sql","true");
		properties.put("hibernate.format_sql","true");
		
		properties.put("hibernate.hbm2ddl.auto","update");
		
		return properties;
	};
	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		
		System.out.println("return transactioin manager instance");
		return transactionManager;
	}
}