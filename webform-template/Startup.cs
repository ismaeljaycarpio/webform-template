using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(webform_template.Startup))]
namespace webform_template
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
