package springwebflow.util;

import org.springframework.webflow.definition.StateDefinition;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.FlowExecutionListener;
import org.springframework.webflow.execution.FlowExecutionListenerAdapter;
import org.springframework.webflow.execution.RequestContext;

import javax.servlet.http.HttpServletRequest;

public class FlowExecutionLogger extends FlowExecutionListenerAdapter {

    @Override
    public void stateEntered(RequestContext context, StateDefinition previousState, StateDefinition newState) {
        logProgress(context);
    }

    private void logProgress(RequestContext context) {
        HttpServletRequest req = (HttpServletRequest) (context.getExternalContext().getNativeRequest());

        Event event = context.getCurrentEvent();
        StringBuilder sb = new StringBuilder()
                .append("flow key=" + context.getFlowExecutionContext().getKey())
                .append(pad(", state-id=" + context.getCurrentState().getId(), 30))
                .append(pad(event != null ? "event-id =" + event.getId() : "", 30))
                .append("    " + req.getSession().getId());
        System.out.println(sb.toString());
    }

    private String pad(String s, int length) {
        StringBuffer sb = new StringBuffer(s);
        while (sb.length() < length) {
            sb.append(' ');
        }
        return sb.toString();
    }

}
