using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DataRawaylty.Startup))]
namespace DataRawaylty
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
