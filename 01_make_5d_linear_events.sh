#!/bin/sh

suplane5d verbose=1 \
          nevent=5 \
          mxmin=0 mxmax=400 \
          mymin=0 mymax=400 \
          hxmin=0 hxmax=2000 \
          hymin=0 hymax=2000 \
          dmx=100 dmy=100 dhx=100 dhy=100 \
          amp=1,0.2,-0.7,0.8,0.8 \
          t0=0.3,0.5,0.25,0.46,0.9 \
          v_mx=-200,-300,100,350,-200 v_my=400,-100,100,350,-200 v_hx=800,-150,600,500,400 v_hy=-600,-500,-400,-300,-200 \
          curve_mx=1,1,1,1,1 curve_my=1,1,1,1,1 curve_hx=1,1,1,1,1 curve_hy=1,1,1,1,1 \
		  > d.su

suximage < d.su wclip=-1 bclip=1 &
