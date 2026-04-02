set.seed(12)

# Data frame
df <- data.frame(
  Company_ID = 1:110,
  Product_ID = sample(1001:2000, 110, replace = TRUE),
  Customer_Demand = abs(rnorm(110, mean = 200, sd = 50)),
  Sales_Won = abs(rnorm(110, mean = 150, sd = 40))    
)

head(df)

# Calculated Averages Using lapply
selected_cols <- df[, c("Customer_Demand", "Sales_Won")]
averages <- lapply(selected_cols, mean)
averages

# Companies with Demand Above Average
avg_demand <- averages$Customer_Demand
high_demand_df <- df[df$Customer_Demand > avg_demand, ]
head(high_demand_df)

# Companies with Sales Above Average
avg_sales <- averages$Sales_Won
high_sales_df <- df[df$Sales_Won > avg_sales, ]
head(high_sales_df)