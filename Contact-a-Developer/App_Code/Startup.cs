using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Contact_a_Developer.Startup))]
namespace Contact_a_Developer
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
