# Multi-Population HFX Example

This example demonstrates the multi-population HFX submission format with three populations: European, Asian, and African.

## Structure

```
multi_population/
├── POPULATIONS.json              # Manifest listing all populations
├── metadata/
│   ├── european_metadata.json    # European population metadata
│   ├── asian_metadata.json       # Asian population metadata
│   └── african_metadata.json     # African population metadata
└── data/
    ├── european_frequencies.csv  # European HLA frequencies
    ├── asian_frequencies.csv     # Asian HLA frequencies
    └── african_frequencies.csv   # African HLA frequencies
```

## Usage

Build a multi-population HFX bundle:

```bash
cd hfx-tools
hfx-build example/multi_population -n global_hfx_study
# Output: example/multi_population/global_hfx_study.hfx
```

Inspect the resulting archive:

```bash
hfx-inspect example/multi_population/global_hfx_study.hfx
```

## Key Features

- **POPULATIONS.json** - Ties together metadata and frequency files for each population
- **Consistent naming** - Uses `<population-id>_metadata.json` and `<population-id>_frequencies.csv` pattern
- **Independent metadata** - Each population has its own metadata with population-specific details
- **Bundled frequencies** - All frequency files included in the single `.hfx` archive

## Notes

- The `frequencyLocation` in each metadata file points to its corresponding CSV file in `data/`
- All metadata and data files must be referenced in `POPULATIONS.json`
- This same folder structure works for single-population submissions (just one entry in `POPULATIONS.json`)
