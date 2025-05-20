#!/bin/bash
# Here, we're designing binders to MexAB-OprM protein, without specifying the topology of the binder a prior
# We first provide the output path and input pdb of the target protein
# We then describe the protein we want with the contig input:
#   - residues 1-202 of the A chain of the target protein
#   - a chainbreak (as we don't want the binder fused to the target!)
#   - A 150-200 residue binder to be diffused (the exact length is sampled each iteration of diffusion)
# We tell diffusion to target three specific residues on the target, specifically residues 24, 60, 89, 126, 157, and 198 of the A chain
# We make 3 designs, and reduce the noise added during inference to 0, to improve the quality of the designs
../scripts/run_inference.py inference.output_prefix=output_pdbs/design_ppi/ultra_remod/six_hotspot/run_3/design inference.input_pdb=input_pdbs/6iok_ultra_remod.pdb 'contigmap.contigs=[A1-202/0 150-200]' 'ppi.hotspot_res=[A22, A87, A155]' inference.num_designs=5 denoiser.noise_scale_ca=0 denoiser.noise_scale_frame=0
