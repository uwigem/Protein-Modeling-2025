#!/bin/bash
# Here, we're running one of the motif-scaffolding benchmark examples, in the presence of a target (the beta-barrel portion of OprM)
# Specifically, we're scaffolding the Mdm2-interacting peptide from p53
# We specify the output path and input pdb (OprM cropped to only include the beta-barrel)
# We specify the protein we want to build, with the contig input:
#   - the beta-barrel target (residues A1-202), with a chain break.
#   - 0 residues on the N-terminus
#   - residues 7-11 (inclusive) on the B chain of the input (the the scaffolded beta-strand)
#   - 40-60 residues (randomly sampled before the design starts, aka the exact length is sampled each iteration of diffusion)
# We also constrain the total length of the diffused chain to be within 45 and 65 residues
# We generate 4 designs
# As in the paper (at least for some of the designs we tested), we use the complex-finetuned model

if [ "$#" -ne 2 ]; then
  echo "Incorrect number of arguments. Expected 2, but got $#."
  exit 1
fi
user=$(cat ../../user)

python ../../../RFdiffusion/scripts/run_inference.py inference.output_prefix=../designs/$user/design_ppi/ultra_remod/single_strand_scaffold/run_3/scaffold_3_design inference.input_pdb=input_pdbs/$1 'contigmap.contigs=[A1-202/0 0/B7-11/40-60]' contigmap.length=45-65 inference.num_designs=$2 inference.ckpt_override_path=../../../RFdiffusion/models/Complex_base_ckpt.pt

mv outputs/* ../logs/
rmdir outputs
