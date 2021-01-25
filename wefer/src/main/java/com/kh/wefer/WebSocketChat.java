package com.kh.wefer;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@ServerEndpoint(value="/wecho.do")
public class WebSocketChat {
    
    private static final List<Session> sessionList=new ArrayList<Session>();;
    private static final Logger logger = LoggerFactory.getLogger(WebSocketChat.class);
    public WebSocketChat() {
        System.out.println("---소켓이 연결됐는지 확인---");
    }
    
    @OnOpen
    public void onOpen(Session session) {
        logger.info("Open session id:"+session.getId());
        try {
            final Basic basic=session.getBasicRemote();
            basic.sendText(null);
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
        sessionList.add(session);
    }
    
    /*
     * @param self
     * @param sender
     * @param message
     */
    private void sendAllSessionToMessage(Session self,  String message) {
    	
        try {
            for(Session session : WebSocketChat.sessionList) {
                if(!self.getId().equals(session.getId())) {
                    session.getBasicRemote().sendText(message);
                }
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    /*
     * @param message
     * @param session
     */
    @OnMessage
    public void onMessage(String message,Session session) {
    	System.out.println(message);
    	System.out.println("소켓컨트롤러 ");
    //	String sender = message.split(",")[1];
    	message = message.split(",")[0];
    	
        logger.info("Message From  "+message);
        try {
            final Basic basic=session.getBasicRemote();
            basic.sendText(message);
            
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
        sendAllSessionToMessage(session, message);
    }
    
    @OnError
    public void onError(Throwable e,Session session) {
        System.out.println("에러나서 채팅 종료됨");
    }
    
    @OnClose
    public void onClose(Session session) {
        logger.info("Session "+session.getId()+" has ended");
		/*
		 * try { Basic basic=session.getBasicRemote(); basic.sendText(message); }catch
		 * (Exception e) { System.out.println(e.getMessage()); }
		 */
        sessionList.remove(session);
    }
}
