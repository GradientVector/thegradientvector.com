using System;
using System.IO;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Configuration.CommandLine;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace thegradientvector.com
{
  public class Startup
  {
    public void Configure(IApplicationBuilder app)
    {
      app.UseDefaultFiles();
      app.UseStaticFiles();
      app.UseStaticFiles(new StaticFileOptions()
            {
                FileProvider = new PhysicalFileProvider(
                    Directory.GetCurrentDirectory()),
                RequestPath = new PathString("")
            });

      string html = @"
      <!doctype HTML>
      <html>
      <head></head>
      <body>
        <h2>Hello from the otter slide!</h2>
        <img src='HelloFromTheOtterSlide.jpg' />
      </body>
      </html>
      ";
      app.Run(context =>
      {
        return context.Response.WriteAsync(html);
      });
    }
  }
}

