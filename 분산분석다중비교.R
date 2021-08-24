big<-read.csv("C:\\Users\\jisuj\\Desktop\\2021 빅콘테스트_데이터분석분야_퓨처스리그_ECO제주_데이터_210803\\월별데이터 정리 (2)\\month_card_spending_sort.csv")
big

big1<-read.csv("C:\\Users\\jisuj\\Desktop\\2021 빅콘테스트_데이터분석분야_퓨처스리그_ECO제주_데이터_210803\\월별데이터 정리 (2)\\month_card_spending.csv")
big1

#일원배치 분산분석
result <- aov(sum_use_amt ~ mct_cat_nm, data=big1)
summary(result)

#다중비교
TukeyHSD(result)