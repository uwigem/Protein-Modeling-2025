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

## Usage
We've included some aliases/functions in /aliases.sh to make things easier. To be able to use these on your system, run the following commands:

On mac (in Protein-Modeling-2025):
```
echo "source $(pwd)/aliases.sh" >> ~/.zshrc
```
On windows git bash (in Protein-Modeling-2025):
```
echo "source $(pwd)/aliases.sh" >> ~/.bashrc
```

Keep in mind that this will let you use the aliases across your system. Below is a breakdown of the aliases:

#### `gupdate`

Definition:
```
git stash
git pull
git stash pop
```
Usage: Run ```gupdate``` **before *making* any new changes to the repo** or right **before *pushing* new changes**. In summary, this command stores away (stashes) your new changes, pulls new changes from the upstream repo, and then reimplements your changes. 

#### `gpush`
Definition:
```
git add .
git commit -m "$1"
git push 
```
Usage: Run ```gpush *insert commit message here*``` when making changes  

## Scripts



