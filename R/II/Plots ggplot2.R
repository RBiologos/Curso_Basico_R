## En este script est�n contenidas algunas funciones para la elaboraci�n
## de plots con el paquete ggplot2

## Instalaci�n 
install.packages("tidyverse")
# Alternativamente, simplemente instalamos ggplot2
install.packages("ggplot2")
# O la versi�n de desarrollo de GitHub:
install.packages("devtools")
devtools:: install_github("tidyverse/ggplot2")

# Plot b�sico
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point()

# Plot b�sico m�s tema
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point()+
  theme_bw()

## Plot modificado
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, 
                 col = Species, shape = Species)) +
  geom_point(size = 3) +
  
  # Modificaciones al tema
  scale_y_continuous("Longitud del p�talo", limits = c(0, 8), 
                     breaks = seq(0, 8, by = 2)) +
  scale_x_continuous("Longitud del s�palo", limits = c(4, 8), 
                     breaks = seq(3, 8, by = 1)) +
  theme(axis.title.y = element_text(size = 18), 
        axis.title.x = element_text(size = 18)) +
  theme(axis.text.y = element_text(size = 16), 
        axis.text.x = element_text(size = 16)) + 
  theme(panel.background = element_blank(), panel.border = element_blank(), 
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black", size = 1)) +
  theme(legend.key = element_blank(), 
        legend.text = element_text(size = 12, face = "italic"), 
        legend.title = element_text(size = 14, face = "italic"), 
        legend.position = c(0.9, 0.2)) +
  scale_color_grey(start = 0.8, end = 0.2) +
  labs(colour = "Iris", shape = "Iris")

