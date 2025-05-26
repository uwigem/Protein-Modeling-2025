#!/bin/bash
# Here, we're designing binders to MexAB-OprM protein, without specifying the topology of the binder a prior
# We first provide the output path and input pdb of the target protein
# We then describe the protein we want with the contig input:
#   - residues 1-202 of the A chain of the target protein
#   - a chainbreak (as we don't want the binder fused to the target!)
#   - A 150-200 residue binder to be diffused (the exact length is sampled each iteration of diffusion)
# We tell diffusion to target three specific residues on the target, specifically residues 24, 60, 89, 126, 157, and 198 of the A chain
# We make 3 designs, and reduce the noise added during inference to 0, to improve the quality of the designs
if [ "$#" -ne 2 ]; then
  echo "Incorrect number of arguments. Expected 2, but got $#."
  exit 1
fi

user=$(git config user.name | tr -d ' ')
#cd ../../../RFdiffusion

../../../RFdiffusion/scripts/run_inference.py inference.output_prefix=../designs/$user/design_ppi/ultra_remod/six_hotspot/run_3/design inference.input_pdb=../inputs/$1 'contigmap.contigs=[A1-202/0 150-200]' 'ppi.hotspot_res=[A24,A60,A89,A126,A157,A198]' inference.num_designs=$2 denoiser.noise_scale_ca=0 denoiser.noise_scale_frame=0

mv outputs/* ../logs/
rmdir outputs
