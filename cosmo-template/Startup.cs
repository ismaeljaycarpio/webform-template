using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(cosmo_template.Startup))]
namespace cosmo_template
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
