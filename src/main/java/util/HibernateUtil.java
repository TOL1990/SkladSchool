package util;

import java.io.File;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

/**
 * Created by Тарас on 30.01.2017.
 */
public class HibernateUtil {
//    private static final SessionFactory sessionFactory;
//    static {
//        try {
////            sessionFactory = new Configuration().configure().buildSessionFactory();
//            sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
//        } catch (Throwable ex) {
//            System.err.println("Initial SessionFactory creation failed." + ex);
//            throw new ExceptionInInitializerError(ex);
//        }
//    }
//
//    public static SessionFactory getSessionFactory() {
//        return sessionFactory;
//    }
private static SessionFactory sessionFactory = null;
static {
    Configuration cfg = new AnnotationConfiguration().configure();
    StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
            .applySettings(cfg.getProperties());
    sessionFactory = cfg.buildSessionFactory(builder.build());
}

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
//    }
    }
}
