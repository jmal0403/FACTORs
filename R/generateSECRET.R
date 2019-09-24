#' generateSECRET function
#'
#' Generate functional probability density functions for eigenvectors
#' @param df.1 df2 data.frame with colnames as gene idenifier and one column with t-stastic  
#' @return data.frame 
#' @export 
#' @examples
#' generateSECRET()
generateSECRET<-function(df.1, df.2){

isec.genes=intersect(rownames(df.1), rownames(df.2))

set.1.excl<- setdiff(rownames(df.2), rownames(df.1))
set.2.excl<- setdiff(rownames(df.1), rownames(df.2))

x=length(isec.genes)
n=nrow(df.2)
M=nrow(df.1)
N=20000

df<-data.frame(df.1=df.1[isec.genes,])
rownames(df)<-isec.genes
df<-cbind(df, df.2=df.2[isec.genes,])
df.tmp.1<-data.frame(SYMBOL=set.1.excl, df.1=rep(0,n-x), df.2=rep(0,n-x))
df.tmp.2<-data.frame(SYMBOL=set.2.excl, df.1=rep(0,M-x), df.2=rep(0,M-x))
rownames(df.tmp.1)<-df.tmp.1$SYMBOL
df.tmp.1[,1]<-NULL
rownames(df.tmp.2)<- df.tmp.2$SYMBOL
df.tmp.2[,1]<-NULL
rbind(df, df.tmp.1,df.tmp.2)
}

