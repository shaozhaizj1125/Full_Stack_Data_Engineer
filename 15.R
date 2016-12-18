library(ggplot2)

set.seed(123)
diamonds <- diamonds[sample(nrow(diamonds), 1000),]
summary(diamonds)
str(diamonds)

head(diamonds)

ggplot(diamonds) + geom_point(aes(x = carat, y = price, color =color, shape = cut))

ggplot(diamonds) + geom_histogram(aes(x = price, fill = cut), position = "dodge")
ggplot(diamonds) + geom_histogram(aes(x = price, fill = cut), position = "fill")

ggplot(diamonds) + geom_bar(aes(x = clarity, fill = color))

ggplot(diamonds) + geom_density(aes(x = price))

ggplot(diamonds) + geom_density(aes(x = price, color = cut))

ggplot(diamonds) + geom_density(aes(x = price, fill = cut), alpha = .2)

ggplot(diamonds) + geom_boxplot(aes(x = cut, y = price))
ggplot(diamonds) + geom_boxplot(aes(x = cut, y = price, fill = color))

ggplot(diamonds) + geom_boxplot(aes(x = cut, y = price, fill = color))

ggplot(diamonds) + geom_boxplot(aes(x = cut, y = price, fill = color)) + labs(x = '����', y= '�۸�', title = 'һ�ź�ţ�Ƶ�ͼ')

ggplot(diamonds) + geom_boxplot(aes(x = cut, y = price, fill = color)) + labs(x = '����', y= '�۸�', title = 'һ�ź�ţ�Ƶ�ͼ') + theme(text = element_text(family = 'Microsoft YaHei UI'))