library(dplyr)
library(ggplot2)


# file 1 ------------------------------------------------------------------

# load("file1")
data <- s635c12v3Lm1
data <- data %>% select(-V3) %>% rename(., ind = V1, bold = V2, cond = V3.recode)
tmp <- c(rep(1, 23), rep(2, 22), rep(3, 23), rep(4, 22), rep(5, 23), rep(6, 22))
data <- cbind(data, cond2 = tmp)
data %>% group_by(cond2) %>% summarise(cond = unique(cond), mean = mean(bold), sd = sd(bold)) %>% select(-cond2)

# ggplot(data, aes(factor(cond2), bold)) + geom_bar(stat = "identity")
# ggplot(data, aes(factor(cond2), bold)) + geom_dotplot(binaxis = "y", stackdir = "center")
# ggplot(data, aes(factor(cond2), bold)) + geom_violin(scale = "area")

ggplot(data, aes(factor(cond2), bold)) + geom_boxplot(outlier.colour = "red") + labs(x = "Condition", y = "Bold signal") + theme(panel.background = element_rect(fill='#fbf9ea')) + scale_x_discrete(labels=c("DBS", "Rest", "DBS", "Rest", "DBS", "Rest"))


# file 2 ------------------------------------------------------------------

# load("file2")
data <- s635c12v3Rm1
data <- data %>% select(-V3) %>% rename(., ind = V1, bold = V2, cond = V3.recode)
tmp <- c(rep(1, 23), rep(2, 22), rep(3, 23), rep(4, 22), rep(5, 23), rep(6, 22))
data <- cbind(data, cond2 = tmp)
data %>% group_by(cond2) %>% summarise(cond = unique(cond), mean = mean(bold), sd = sd(bold)) %>% select(-cond2)

# ggplot(data, aes(factor(cond2), bold)) + geom_bar(stat = "identity")
# ggplot(data, aes(factor(cond2), bold)) + geom_dotplot(binaxis = "y", stackdir = "center")
# ggplot(data, aes(factor(cond2), bold)) + geom_violin(scale = "area")

ggplot(data, aes(factor(cond2), bold)) + geom_boxplot(outlier.colour = "red") + labs(x = "Condition", y = "Bold signal") + theme(panel.background = element_rect(fill='#fbf9ea')) + scale_x_discrete(labels=c("DBS", "Rest", "DBS", "Rest", "DBS", "Rest"))


# file 3 ------------------------------------------------------------------

# load("file3")
data <- s635c12v3Lcbl
data <- data %>% rename(., ind = V1, bold = V2, cond = V3)
tmp <- c(rep(1, 23), rep(2, 22), rep(3, 23), rep(4, 22), rep(5, 23), rep(6, 22))
data <- cbind(data, cond2 = tmp)
data %>% group_by(cond2) %>% summarise(cond = unique(cond), mean = mean(bold), sd = sd(bold)) %>% select(-cond2)

# ggplot(data, aes(factor(cond2), bold)) + geom_bar(stat = "identity")
# ggplot(data, aes(factor(cond2), bold)) + geom_dotplot(binaxis = "y", stackdir = "center")
# ggplot(data, aes(factor(cond2), bold)) + geom_violin(scale = "area")

ggplot(data, aes(factor(cond2), bold)) + geom_boxplot(outlier.colour = "red") + labs(x = "Condition", y = "Bold signal") + theme(panel.background = element_rect(fill='#fbf9ea')) + scale_x_discrete(labels=c("DBS", "Rest", "DBS", "Rest", "DBS", "Rest"))


# file 4 ------------------------------------------------------------------

# load("file4")
data <- s635c12v3Rcbl
data <- data %>% rename(., ind = V1, bold = V2, cond = V3)
tmp <- c(rep(1, 23), rep(2, 22), rep(3, 23), rep(4, 22), rep(5, 23), rep(6, 22))
data <- cbind(data, cond2 = tmp)
data %>% group_by(cond2) %>% summarise(cond = unique(cond), mean = mean(bold), sd = sd(bold)) %>% select(-cond2)

# ggplot(data, aes(factor(cond2), bold)) + geom_bar(stat = "identity")
# ggplot(data, aes(factor(cond2), bold)) + geom_dotplot(binaxis = "y", stackdir = "center")
# ggplot(data, aes(factor(cond2), bold)) + geom_violin(scale = "area")

ggplot(data, aes(factor(cond2), bold)) + geom_boxplot(outlier.colour = "red") + labs(x = "Condition", y = "Bold signal") + theme(panel.background = element_rect(fill='#fbf9ea')) + scale_x_discrete(labels=c("DBS", "Rest", "DBS", "Rest", "DBS", "Rest"))