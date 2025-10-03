# Deployment Guide

## Quick Start

### Local Development

1. Install [Quarto](https://quarto.org/docs/get-started/) (version 1.4.554 or higher)

2. Clone the repository:
   ```bash
   git clone https://github.com/adrientaudiere/am_colrate.git
   cd am_colrate
   ```

3. Install the WebR extension:
   ```bash
   quarto add coatless/quarto-webr --no-prompt
   ```

4. Preview the application:
   ```bash
   quarto preview index.qmd
   ```
   This will open a browser with the live application.

5. Or render to static HTML:
   ```bash
   quarto render
   ```
   The output will be in the `_site/` directory.

## Deployment Options

### Option 1: GitHub Pages

1. Push your code to GitHub
2. Go to repository Settings → Pages
3. Set Source to "Deploy from a branch"
4. Select the branch and `/_site` folder
5. Click Save

Your app will be available at: `https://<username>.github.io/<repository>/`

### Option 2: Netlify

1. Connect your GitHub repository to [Netlify](https://netlify.com)
2. Set build command: `quarto add coatless/quarto-webr --no-prompt && quarto render`
3. Set publish directory: `_site`
4. Deploy!

### Option 3: Any Static Host

Simply upload the contents of the `_site/` folder to any static web hosting service:
- AWS S3 + CloudFront
- Vercel
- Cloudflare Pages
- Firebase Hosting
- etc.

## Customization

### Update Computation Formulas

Edit the R functions in `R/functions.R` to implement your specific colonization rate formulas:

```r
# Example: Modify the colonization rate calculation
compute_colonization_rate <- function(colonized_intersections, total_intersections) {
  if (total_intersections == 0) {
    return(0)
  }
  # Implement your custom formula here
  return((colonized_intersections / total_intersections) * 100)
}
```

The R functions are automatically loaded into the WebR environment and used by the JavaScript interface.

### Styling

Modify `styles.css` to customize colors, fonts, and layout to match your branding.

### Adding More Fields

To add additional input fields or computed metrics:

1. Add input field HTML in the Manual Input section of `index.qmd`
2. Update the `addManualData()` function to capture the new field
3. Update the CSV parser to handle the new column
4. Add new R functions in `R/functions.R` to compute the new metrics
5. Update the `compute_metrics()` R function to include the new calculations
6. The table will automatically include all fields in the results

## Browser Compatibility

The application uses WebR and modern JavaScript and should work in:
- Chrome/Edge (latest 2 versions)
- Firefox (latest 2 versions)
- Safari (latest 2 versions)

All computations are performed using R code executed in the browser via WebR - no server-side processing is required!
