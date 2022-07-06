package ltd.newbee.mall.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
@Component
@WebListener
public class ExpireListener implements HttpSessionListener {
    private static final Logger logger = LoggerFactory.getLogger(HttpSessionListener.class);
    public int count=0;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        logger.info("用户上线了");
        count++;
        se.getSession().getServletContext().setAttribute("count",count);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        logger.info("用户下线了");
        count--;
        se.getSession().getServletContext().setAttribute("count",count);
    }
}
