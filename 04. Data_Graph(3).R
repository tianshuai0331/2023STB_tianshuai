# table()함수/구분 1개의 인자를 가지고 도수분포표 작성
table(KOTRA2023 $진출대륙명)

# table()함수/2개의 인자를 가지고 교차표를 작성
table(KOTRA2023 $진출대륙명, KOTRA2023 $진출형태)

#  상대도수 계산
ECN <- table(KOTRA2023 $진출대륙명)
prop.table(ECN)

#막대그래프
barplot(table(KOTRA2023 $진출대륙명))
pie(table(KOTRA2023 $투자형태), col=pal1, main="해외진출기업의투자형태")

entry <- table(KOTRA2023 $진출대륙명, KOTRA2023 $진출형태)
barplot(entry, legend = TRUE)

#파이차트
pie(table(KOTRA2023 $진출대륙명))
pie(table(KOTRA2023 $투자형태))
colors <-c("red", "orange", "yellow", "green", "blue")
pie(table(KOTRA2023 $투자형태), col=colors, main="해외진출기업의투자형태")

install.packages("RColorBrewer")
library(RColorBrewer)

display.brewer.all()

pal1 <-brewer.pal(5, 'Set3')
pie(table(KOTRA2023 $투자형태), col=pal1, main="해외진출기업의투자형태")

bp <-barplot(table(KOTRA2023 $진출대륙명),col=pal1, xlab= "진출대륙명", ylab= "진출기업수", ylim=c(0,10000))
entry <-c(333,828,9154,104,716,444,374)
text(x=bp, y=entry, labels=entry, pos=3)

barplot(table(KOTRA2023 $진출대륙명),col=pal1, xlab= "진출대륙명", ylab= "진출기업수", xlim=c(0,10000), horiz=TRUE)

#과제 명령어
table(X2023_STB_survey $ Gender)
ECN <- table(X2023_STB_survey $ Gender)
prop.table(ECN)
table(X2023_STB_survey $ Gender, X2023_STB_survey $ Grade)
barplot(table(X2023_STB_survey $ Nationality))
barplot(table(X2023_STB_survey$`residential area`),xlim=c(0,40), horiz=TRUE)
entry <- table(X2023_STB_survey $Gender, X2023_STB_survey $Grade)
barplot(entry, legend = TRUE)
pie(table(X2023_STB_survey $Grade))
hist(X2023_STB_survey $ Age, main="Age distribution chart", col=terrain.colors(12))
boxplot(X2023_STB_survey$`Grade`, X2023_STB_survey$`Age`, main="Gender, age distribution map", col="red", names = c("Grade","Age"))
summary(X2023_STB_survey)
summary(X2023_STB_survey, na.rm=T)
summary(X2023_STB_survey$Grade,X2023_STB_survey$Age)
plot(x=X2023_STB_survey$`Grade`, y=X2023_STB_survey$`Age`, xlab="Grade", ylab="Age", main="Age and age distribution chart", pch=24, col="red", bg="yellow", cex=1.5)
