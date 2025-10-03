# AM Colonization Rate Calculator

A web application built with Quarto and WebR for computing colonization rates of arbuscular mycorrhizal (AM) fungi interactions in a robust and reproducible way.

## Features

- **Dual Input Methods**: 
  - Manual data entry through an intuitive form
  - CSV file upload for batch processing
  
- **Interactive Results**:
  - Real-time display of computed metrics in a formatted table
  - Downloadable results as CSV file

- **Computed Metrics** (placeholder formulas):
  - Colonization Rate
  - Arbuscule Frequency
  - Vesicle Frequency

## Getting Started

### Prerequisites

- [Quarto](https://quarto.org/docs/get-started/) (version 1.4 or higher)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/adrientaudiere/am_colrate.git
   cd am_colrate
   ```

2. Preview the application:
   ```bash
   quarto preview index.qmd
   ```

3. Or render to HTML:
   ```bash
   quarto render
   ```

The application will be available in the `_site` folder or accessible via the preview server.

## Usage

### Manual Input

1. Navigate to the "Manual Input" tab
2. Fill in the following fields:
   - Sample ID
   - Total Intersections
   - Colonized Intersections
   - Arbuscules Count
   - Vesicles Count
3. Click "Add Sample" to add the data
4. Repeat for additional samples
5. View results in the Results section below

### CSV Upload

1. Navigate to the "CSV Upload" tab
2. Prepare your CSV file with the following columns:
   - `sample_id`: Sample identifier
   - `total_intersections`: Total number of intersections observed
   - `colonized_intersections`: Number of colonized intersections
   - `arbuscules`: Number of arbuscules observed
   - `vesicles`: Number of vesicles observed
3. Click "Select CSV File" and choose your file
4. Click "Process CSV" to load and compute metrics

An example CSV file (`example_data.csv`) is included in the repository.

### Downloading Results

Once data is loaded and metrics are computed, click the "Download Results as CSV" button to save the results to your computer.

## Project Structure

```
am_colrate/
├── index.qmd           # Main Quarto document with WebR integration
├── styles.css          # Custom CSS styling
├── _quarto.yml         # Quarto configuration
├── example_data.csv    # Example data file
├── README.md           # This file
└── LICENSE             # GPL-3.0 License
```

## Development Notes

- The current implementation focuses on UI design and data flow
- Computation formulas are placeholders and need to be implemented based on specific research methodology
- The application uses WebR for R computations in the browser (no server required)
- Built with Quarto's interactive document features

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
