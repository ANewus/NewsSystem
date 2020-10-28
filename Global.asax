<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        //在应用程序启动时运行的代码
        Application.Lock();
        Application["counter"] = 0;
        Application["chats"] = null;
        Application["chatsnum"] = 0;
        Application["1"] = 0;
        Application["2"] = 0;
        Application["3"] = 0;
        Application["4"] = 0;
        Application["5"] = 0;
        Application["6"] = 0;
        Application["7"] = 0;
        Application["8"] = 0;
        Application["9"] = 0;
        Application["time"] = 0;
        Application.UnLock();
        
        
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //在应用程序关闭时运行的代码
        Application["chats"] = null;
        Application["chatnum"] = 0;
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        //在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e) 
    {
        //在新会话启动时运行的代码
        Application.Lock();
        Application["counter"] = (int)Application["counter"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e) 
    {
        //在会话结束时运行的代码。 
        // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
        // InProc 时，才会引发 Session_End 事件。如果会话模式 
        //设置为 StateServer 或 SQLServer，则不会引发该事件。
        Application.Lock();
        Application["counter"] = (int)Application["counter"] - 1;
        Application.UnLock();
    }
       
</script>
