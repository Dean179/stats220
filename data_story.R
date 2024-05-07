library(tidyverse)
library(magick)
#picture 1
On_AAA <- image_blank(width = 1200, height = 400, color = "#FFFF00")%>%
  image_annotate(text = "Visualize video data from YouTube channels \n @SpongeBobOfficial and @TEDEd",
                 color = "#000000",
                 size = 50,
                 font = "Impact",
                 gravity = "center")

#picture 2 bar
frame2 <- image_read("plot4.png") %>%
  image_scale("1200x400") %>%
  image_annotate(text = "This chart shows the number of videos of the group \n of Less view is bigger than the Many view",
                 size = 25,
                 font = "Impact",
                 location = "+600+100")


#picture 3 line
frame3 <- image_read("plot2.png") %>%
  image_scale("1200x400") %>%
  image_annotate(text = "This chart shows that most videos \n were posted in February and July",
                 size = 30,
                 font = "Impact",
                 location = "+350+200")

#picture 4 box
frame4 <- image_read("plot3.png") %>%
  image_scale("1200x400") %>%
  image_annotate(text = "This chart shows the IQR of the group \n of Many view is bigger than the Less view",
                 size = 20,
                 font = "Impact",
                 location = "+850+50")

#picture 5
On_BBB <- image_blank(width = 1200, height = 400, color = "#FFFF00")%>%
  image_annotate(text = "Overall, I learned that \n Most videos have less than the median number of views.\n
                 The group of many view have a higher median \n than the group of less view. \n
                 February and July are the two months with the largest \n number of videos released.",
                 color = "#000000",
                 size = 30,
                 font = "Impact",
                 gravity = "center")
#GIF
GIF_M <- c(On_AAA, frame2, frame3, frame4, On_BBB)

#Animation
animation <- image_animate(GIF_M, delay = 1000)

image_write(animation, "data_story.gif")

