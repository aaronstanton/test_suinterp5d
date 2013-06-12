#!/bin/sh

suinterp5d in1=d_geom.su out1=d_pocs.su \
           gridfile=my_grid.txt \
           limfile=my_lim.txt \
           fmax=80 \
           dec=0.8 \
	   method=1 \
           iter=20 

suinterp5d in1=d_geom.su out1=d_mwni.su \
           gridfile=my_grid.txt \
           limfile=my_lim.txt \
           fmax=80 \
           dec=0.8 \
	   method=2 \
           iter=20 \
	   iter_external=3 

suinterp5d in1=d_geom.su out1=d_seqsvd.su \
           gridfile=my_grid.txt \
           limfile=my_lim.txt \
           fmax=80 \
           dec=0.8 \
	   method=3 \
           iter=20  

suinterp5d in1=d_geom.su out1=d_in.su \
           gridfile=my_grid.txt \
           limfile=my_lim.txt \
           fmax=80 \
           dec=0.8 \
	   method=1 \
           iter=0 

suwind < d_in.su skip=5000 count=200 | suximage wclip=-1 bclip=1 title='INPUT' &
suwind < d_pocs.su skip=5000 count=200 | suximage wclip=-1 bclip=1 title='POCS' &
suwind < d_mwni.su skip=5000 count=200 | suximage wclip=-1 bclip=1 title='MWNI' &
suwind < d_seqsvd.su skip=5000 count=200 | suximage wclip=-1 bclip=1 title='SEQSVD' &
suwind < d.su skip=5000 count=200 | suximage wclip=-1 bclip=1 title='TRUE' &



