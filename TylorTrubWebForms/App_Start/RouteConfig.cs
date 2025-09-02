using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace TylorTrubWebForms
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            // Route root URL to StudentRegistration.aspx
            routes.MapPageRoute(
                routeName: "Home",
                routeUrl: string.Empty,
                physicalFile: "~/StudentRegistration.aspx"
            );
        }
    }
}
