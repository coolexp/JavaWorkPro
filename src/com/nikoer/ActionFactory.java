package com.nikoer;

public class ActionFactory {
	//����ģʽ������Ҫ��������   
    private ActionFactory(){   
    }   
    //��ʵ�����ʷ������õ�ActionFactory����   
    public static ActionFactory getActionFactory(){   
        if(af == null){   
            af = new ActionFactory();   
        }   
        return af;   
    }   
    /**  
     * ���ݾ����Action�����ִ���Action����  
     * @param ActionClassName �������Action��ȫ��  
     * @return��Action���Ͷ���  
     */  
    public Action getAction(String ActionClassName){   
        Action action = null;   
        try{   
            action = (Action) Class.forName(ActionClassName).newInstance();   
        }catch(Exception e){   
            e.printStackTrace();   
        }   
        return action;   
    }   
       
    private static ActionFactory af;   
}
