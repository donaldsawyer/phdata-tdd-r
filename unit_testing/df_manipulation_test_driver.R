
#install.packages("RUnit")
library(RUnit)

# Add all the source files for the functions that will be tested #
source("df_manipulations.R")

tests.directory <- "tests"

# test suite for dataframe manipulations #
test.suite.df.manipulations <- defineTestSuite("Dataframe Manipulations",
                                                           dirs = tests.directory,
                                                           testFileRegexp = "^tests_df_manipulation*.+\\R")

# define the collection of test suites #
df.manipulation.test.suites <- list(test.suite.df.manipulations)

# Execute the test suites #
test.results <- runTestSuite(df.manipulation.test.suites, verbose = 1)

printTextProtocol(test.results)
