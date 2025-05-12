# Protein-Modeling-2025
Centralized repository for Washington iGEM 2025 Protein Modeling

## Initial Directory Setup

> At this point, you should already have RFdiffusion setup and working. If not, follow [these](https://github.com/RosettaCommons/RFdiffusion) instructions.

### Vague Directory Structure

```
.
└── iGEM/
    ├── RFdiffusion/
    │   ├── env
    │   ├── examples
    │   ├── scripts
    │   ├── setup.py
    │   ├── rfdiffusion
    │   └── 6iok
    └── Protein-Modeling-2025*/
        ├── aliases.sh
        └── Diffusion/
            ├── designs
            ├── inputs/
            │   ├── 6iok_ultra_remod.pdb
            │   └── 6iok_ultra_remod_with_strand.pdb
            ├── scripts/
            │   ├── organized_6iok_design_motifscaffolding_2.sh
            │   └── 6iok_design_ppi.sh
            └── logs
```

Setup the overall directory structure like above.
> If you already have RFdiffusion, don't worry about setting up that directory. Clone this repo in the same parent directory as your RFdiffusion repo.

### Instructions for cloning:
In your iGEM parent directory, run the following commands:
```
git clone https://github.com/uwigem/Protein-Modeling-2025.git
cd Protein-Modeling-2025
```
We've included some

