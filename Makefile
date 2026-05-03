install:
	Rscript -e "renv::restore()"

all: README.md

output/project_data.rds: code/01_load_data.R data/merged_clean.RDS
	Rscript code/01_load_data.R

output/summary_table.csv: code/02_make_table.R output/project_data.rds
	Rscript code/02_make_table.R

output/plot_hs.png output/plot_bachelors.png: code/03_make_plots.R output/project_data.rds
	Rscript code/03_make_plots.R

output/model_hs.txt output/model_bachelors.txt: code/04_run_models.R output/project_data.rds
	Rscript code/04_run_models.R

README.md: README.Rmd output/summary_table.csv output/plot_hs.png output/plot_bachelors.png output/model_hs.txt output/model_bachelors.txt
	Rscript -e "rmarkdown::render('README.Rmd')"

clean:
	rm -f output/project_data.rds output/summary_table.csv output/plot_hs.png output/plot_bachelors.png output/model_hs.txt output/model_bachelors.txt README.md