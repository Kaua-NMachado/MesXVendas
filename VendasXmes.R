setwd('C:/Users/kasil/OneDrive/Documents/Cursos_Análise_De_Dados/R/Ex02')

install.packages('readxl')
library(readxl)
library(ggplot2)

dados = read_excel('Vendas.xlsx')

ordemMes <- c("Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", 
                     "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro")

dados$Mês <- factor(dados$Mês, levels = ordemMes)

ggplot(dados, aes(x=Mês, y=VendasTotais)) +
  geom_point() +
  labs(x="Meses", y="Vendas TotaisR$", 
        title="Tendência de Crescimento Anual") +
  theme_bw()

ggsave(filename = "VendasXMes.png")
