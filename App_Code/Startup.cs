using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSite12.Startup))]
namespace WebSite12
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
