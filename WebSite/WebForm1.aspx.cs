using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HttpJobDemo.WebSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ILog logger = LogManager.GetLogger(typeof(WebForm1));

        protected void Page_Load(object sender, EventArgs e)
        {
            logger.Info(string.Format("[{0}] WebForm1...", DateTime.Now.ToString("HH:mm:ss")));
            //业务逻辑处理
            System.Threading.Thread.Sleep(1000);
            Response.Write("执行完毕。");
            Response.End();
        }
    }
}