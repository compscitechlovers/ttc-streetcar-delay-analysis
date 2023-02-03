# ttc-streetcar-delay-analysis

This repo contains the code and data for Toronto Streetcar Delays Varies by Different Causes, an analysis of TTC Streetcar Delay Data.

The data for this paper can be found from the [OpenDataToronto](https://open.toronto.ca/dataset/ttc-streetcar-delay-data/) portal. No download is required to reproduce the PDF; data is automatically downloaded when rendered.

The repo is organized as follows:

- `inputs/data/cleaned_ttc_streetcar.csv`: The cleaned CSV file
- `inputs/data/ttc_streetcar.csv`: The CSV file generated using the Quarto Document file
- `inputs/data/ttc-streetcar-delay-data-2022.xlsx`: The Excel file
- `outputs/paper/Paper.qmd`: The Quarto Document file
- `outputs/paper/Paper.pdf`: The PDF file generated using the Quarto Document file
- `scripts/00-download_data.R`: Script used in the Quarto Document file to download the data
- `scripts/00-simulation_data.R`: Script used in the Quarto Document file to clean the data