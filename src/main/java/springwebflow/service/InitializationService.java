package springwebflow.service;

import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class InitializationService {

    @EventListener
    public void onApplicationEvent(ContextRefreshedEvent event) {
        System.out.println("context refreshed");
    }
}
