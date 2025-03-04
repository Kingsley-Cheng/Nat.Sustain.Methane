# Realizing the Global Methane Pledge by 2030 via Key Pathways in Inter-country Production and Consumption Networks
## System Requirements
### Hardware Requirements
The code requires only a standard computer with enough RAM to support the in-memory operations.
### Software Requirements and Installation guide
#### OS Requirements
This code is developed by MacOS. The code has been tested on the following systems:
- MacOS:Sequoia(15.3)
- Windows 10
#### Python Version
This code is developed by Python 3.12.6. You could download this version by [https://www.python.org/downloads/](https://www.python.org/downloads/release/python-3126/)
#### Python Dependencies
This code mainly depends on the following pakages.
```
numpy
scipy
scikit-learn
pandas
seaborn
matplotlib
itertools
```
You could install these required packages by command:
```
pip install [package name] -i [mirrors]
```
#### R Version
R code is developed by R 4.4.2. You could could download this version by [https://cran.r-project.org/bin/windows/base/old/4.4.2/]
#### R Dependencies
This code mainly depends on the following pakages.
```
gtable
ggplot2
tidyr
tibble
ggimage
ggrepel
crayon
scatterpie
dplyr
```
You could install these required packages by command:
```
install.packages("[package name]")
```
#### Install from Github
Before you download codes from Github, you should make sure that git tool has been installed in your personal computer. The instructions for git tool could be seen by [https://github.com/progit].
Then, you could get raw code under MIT license by command:
```
git clone [https://github.com/Kingsley-Cheng/Nat.Sustain.Methane]
cd Nat.Sustain.Methane
```
### Code Introduction and Demo
#### IO_process.ipynb
The code is used to merge sectors and countries, correspond methane emission data with ICIO tables and split the methane emissions of household consumptions.
The methane emissions data we used are provided by EDGAR. You could download by [https://edgar.jrc.ec.europa.eu/dataset_ghg2024]. The inter-country input-output database we used are provided by OECD. You could download by [https://www.oecd.org/en/data/datasets/inter-country-input-output-tables.html]. After running this code you could get the folder `A`,`DE`,`X`, `Y` and `EICIO`.
#### Cal.ipynb
The code is used to calculate some input-output coefficients like direct input coefficients and direct emission coefficients, apply DFM methods to identify key emissions pathways and conduct other analysis in the manuscript. The salary data and proportion data we used in the code are provided by World Bank Open Data. You could download by [https://data.worldbank.org].
#### Plot.R
This code is used to plot maps like below.
