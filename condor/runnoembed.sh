#!/bin/bash

export baseDIR=/eic/u/mposik/Detector1/EPIC
export codeDIR=${baseDIR}/epic
export outDIR=/gpfs/mnt/gpfs02/eic/mposik/ePIC
#cd ${baseDIR}
#pwd
#./eic-shell
#cd ${codeDIR}
#pwd
#source install/setup.sh
#echo "running..."
echo $DETECTOR

echo ddsim --steeringFile steering.py --compactFile epic_tracking_only.xml -G -N 1000 --outputFile $outDIR/test.edm4hep.root
ddsim --steeringFile $codeDIR/mySteer.py --compactFile epic_tracking_only.xml -G -N 1000 --outputFile $outDIR/test.edm4hep.root
