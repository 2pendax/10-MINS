<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
        
         <link rel="stylesheet" href="css/semantic.css" media="screen" title="no title" charset="utf-8">

        <link rel="stylesheet" href="build/styles.css">
    </head>

    <body>
      <div class="ui inverted top fixed menu borderless blue menu">
            <div class="header item">
                <div class="ui image">
                    <img src="images/tenlogo.png" alt="">
                </div>
            </div>

            <div class="right menu">
                <div class="item">
                    <h5 class="ui inverted header">
                            <div class="ui mini circular image">
                               
                            </div>

                           

                        </h5>
                </div>
                
                  <div class="item">

                                    <div class="ui buttons">
  <a href="login.aspx"><button class="ui positive button">Log In</button></a>
  <div class="or"></div>
  <a href="register.aspx"><button class="ui  button">Sign Up</button></a>
  </div>

                </div>
             
              
            </div>
        </div>
    
        <div class="outer">
            <div class="inner">
                <div class="wrapper">
                    <div class="scene">
                        <div>- <span id="vader"></span></div>
                        <div>- <span id="luke"></span></div>
                    </div>

                    <pre id="nodebug"><code>
  theater.write(
    <span id="log"></span>
  );
                    </code></pre>

                </div>
            </div>
        </div>

        <script src="build/theater.js"></script>
        <script>
            (function () {
                "use strict";

                var $log    = document.querySelector("#log");
                var theater = new TheaterJS();

                theater
                    .describe("Vader", .8, "#vader")
                    .describe("Luke", .6, "#luke");

                theater
                    .on("*", function (eventName, originalEvent, sceneName, arg) {
                        var args  = Array.prototype.splice.apply(arguments, [3]),
                            log   = '{\n      name: "' + sceneName + '"';

                        if (args.length > 0) log += ",\n      args: " + JSON.stringify(args).split(",").join(", ");
                        log += "\n    }";

                        $log.innerHTML = log;
                    })
                    .on("say:start, erase:start", function (eventName) {
                        var self    = this,
                            current = self.current.voice;

                        self.utils.addClass(current, "saying");
                    })
                    .on("say:end, erase:end", function (eventName) {
                        var self    = this,
                            current = self.current.voice;

                        self.utils.removeClass(current, "saying");
                    });

                theater
                    .write("Vader:十分钟", 400, toggleClass)
                    .write("Luke:什么？", toggleClass)
                    .write("Vader:只有十分钟", toggleClass)
                    .write({ name: "call", args: [kill, true] })
                    .write("Luke:Nooo...", -3, "!!! ", 400, "No! ", 400)
                    .write("Luke:十分钟能做什么", 400)
                    .write("Luke:打开马桶盖？", toggleClass)
                    .write("Vader:脱下裤子？", 1600)
                    .write("Vader:十分钟竟然可以写篇文章", 1000, toggleClass)
                    .write("Luke:真是难以置信！", 400, "No!", toggleClass)

                    .write(function () { theater.play(true); });

                var body = document.getElementsByTagName("BODY")[0];

                function toggleClass (className) {
                    if (typeof className !== "string") className = "light";

                    if (theater.utils.hasClass(body, className)) theater.utils.removeClass(body, className);
                    else theater.utils.addClass(body, className);
                }

                function kill () {
                    var self    = this,
                        delay   = 300,
                        i       = 0,
                        timeout = setTimeout(function blink () {
                            toggleClass("blood");
                            if (++i < 6) timeout = setTimeout(blink, delay);
                            else self.next();
                        }, delay);

                    return self;
                }
            })();
        </script>
    </body>
</html>
