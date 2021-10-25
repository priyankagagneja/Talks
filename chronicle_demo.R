library(chronicle)

demo_report <-
  add_text(text_title = "This is the output of a chronicle call",
           text = "Each element has been added through an `add_*` function.",
           title_level = 1) %>%
  add_table(table = head(iris),
            table_title = "A glimpse of the iris dataset",
            html_table_type = "kable",
            title_level = 1) %>%
  add_raincloud(dt = iris,
                value = "Sepal.Length",
                groups = "Species") %>%
  add_scatterplot(dt = iris,
                  x = "Petal.Width",
                  y = "Petal.Length",
                  groups = "Species")

render_report(report = demo_report,
              title = "A quick chronicle demo",
              output_format = c("pdf", "rmdformats"),
              filename = "quick_demo",
              keep_rmd = TRUE)
