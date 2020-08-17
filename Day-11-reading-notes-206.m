## Reading notes day 11
### From the Duckett HTML book:
#### Chapter 16: “Images” (pp.406-427)
+ You can specify the dimensions of the images using **CSS**. This is very helpful when you use the *same* sized images on several pages of your site.
+ Images can be *aligned* both **horizontally** and vertically using **CSS**.
+ You can use a background image behind the box created by the **element** on a page.
+ Background images can appear *once* or be *repeated* across the background of the box.
+ You can create image rollover effects by **moving** the background position of an image.
+ To reduce the number of images your browser has to load, you can create image *sprites*.
#### Chapter 19: “Practical Information” (476-492)
+ *Search engine optimization* helps visitors find your sites when using search engines.
+ Analytics tools such as ** Google** analytics allow you to see how many people visit your site, how they found it and what they do when they get there.
+ To put your site on the web you will need to obtain a **domain name** and web hosting.
+ **FTP** programs allow you to transfer files from your local computer to your webserver.
+ Many companies provide platforms for blogging, email newsletters, e-commerce and other popular website tools. 



#### Bookmark/Skim
#### Chapter 9: pages 201-206 only. Flash is no longer supported by many browsers but is an important part of history.
+ **Adobe Flash** is a *multimedia software platform* used for production of animations, Internet, desktop and mobile applications, mobile games and embedded web browser video players. 


+ **Flash** displays *text, vector graphics and raster graphics* to provide animations, video games and applications. 


+ It allows **streaming of audio and video, and can capture mouse, keyboard, microphone and camera input**. 


+ Artists may produce Flash graphics and animations using Adobe Animate 


+ Software developers may produce applications and video games using Adobe Flash builder or another such program.
### Additional Resources

### AV Article
The **video** and **audio** elements allow us to embed video and audio into web pages. 
One **bi ** issue with the native browser controls is that they are **different in each browser** — not very good for cross-browser support! Another big issue is that the native controls in most browsers *aren't* very keyboard-accessible.
You can solve both these problems by *hiding* the native controls (by removing the controls attribute), and programming your own with HTML, CSS, and JavaScript. In the next section we'll look at the basic tools we have available to do this.
Part of the HTML5 spec, the HTMLMediaElement API provides features to allow you to control video and audio players programmatically — for example HTMLMediaElement.play(), HTMLMediaElement.pause(), etc. This interface is available to both **audio** and **video** elements, as the features you'll want to implement are nearly identical. Let's go through an example, adding features as we go.
