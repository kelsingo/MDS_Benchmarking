This repo contains code from: https://github.com/scsnl/Cai_HCP_WM_MDSI_Controllability_2021

# Cai_HCP_WM_MDSI_Controllability_2021

MATLAB implementation for benchmarking **white-matter controllability** and **MDSI-based analysis** using Human Connectome Project (HCP) data.

---

## Requirements

- MATLAB (recent versions recommended)
- Statistics and Machine Learning Toolbox
- SPM (Statistical Parametric Mapping)

After installing SPM, add it to your MATLAB path:

```matlab
addpath('path/to/spm')
```

You may need to reset MATLAB after installing SPM. 

---

## Usage

1. Open MATLAB.
2. Navigate to the MDSI folder:

```matlab
cd MDSI/mds_vb
```

3. Run the main function:

```matlab
MDS_main(subj_id)
```

`subj_id` refers to the index of the subject in the dataset.

Example:

```matlab
MDS_main(1)
```

This runs the analysis for the **first subject**.

---

## Notes

- Ensure all required toolboxes are installed and available in the MATLAB path.
- The dataset should follow the expected input format used in the scripts.

---
