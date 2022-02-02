# COG & Local Tile Server

make cog

docker pull osgeo/gdal:latest

docker run --rm -it -v /home/fchouteau/classes/isae-otsu/workspace/data/annecy:/data/ osgeo/gdal

gdaladdo -r average /data/cog/IMG_PHR1B_PMS_201810091045005_ORT_4597975101_R2C2.tif 2 4 8 16 32

gdal_translate -of COG \
    -co NUM_THREADS=ALL_CPUS \
    -co BIGTIFF=IF_SAFER \
    -co COMPRESS=ZSTD \
    -co PREDICTOR=YES \
    --config GDAL_TIFF_OVR_BLOCKSIZE 512 \
    /data/ortho/IMG_PHR1B_PMS_201810091045005_ORT_4597975101_R2C2.TIF \
    /data/cog/IMG_PHR1B_PMS_201810091045005_ORT_4597975101_R2C2.tif

visualise

docker pull ghcr.io/banesullivan/localtileserver:latest

docker run --rm -p 8000:8000 -v /home/fchouteau/classes/isae-otsu/workspace/data/annecy/cog/:/data/ ghcr.io/banesullivan/localtileserver:latest

# Demo stac & xarray
