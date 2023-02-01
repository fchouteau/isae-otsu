gdalwarp -tr 1.5 1.5 -of cog -te 373383.7 4824372.9 377349.8 4829654.8 \
  -r cubicspline \
  workspace/raw/IMG_PHR1A_PMS_201504131053028_ORT_4597971101_R2C2.TIF \
  workspace/cog/IMG_PHR1A_PMS_201504131053028_.tif

gdal_translate -of cog -srcwin 0 0 2560 3520  \
  workspace/cog/IMG_PHR1A_PMS_201504131053028_.tif \
  workspace/cog/IMG_PHR1A_PMS_201504131053028.tif

gdalwarp -tr 1.5 1.5 -of cog -te 373383.7 4824372.9 377349.8 4829654.8 \
  -r cubicspline \
  workspace/raw/IMG_PHR1A_PMS_201506041053076_ORT_4597970101_R2C2.TIF \
  workspace/cog/IMG_PHR1A_PMS_201506041053076_.tif

gdal_translate -of cog -srcwin 0 0 2560 3520  \
  workspace/cog/IMG_PHR1A_PMS_201506041053076_.tif \
  workspace/cog/IMG_PHR1A_PMS_201506041053076.tif

gdalwarp -tr 1.5 1.5 -of cog -te 373383.7 4824372.9 377349.8 4829654.8 \
  -r cubicspline \
  workspace/raw/IMG_PHR1A_PMS_201609071056565_ORT_4597964101_R2C2.TIF \
  workspace/cog/IMG_PHR1A_PMS_201609071056565_.tif

gdal_translate -of cog -srcwin 0 0 2560 3520  \
  workspace/cog/IMG_PHR1A_PMS_201609071056565_.tif \
  workspace/cog/IMG_PHR1A_PMS_201609071056565.tif

gdalwarp -tr 1.5 1.5 -of cog -te 373383.7 4824372.9 377349.8 4829654.8 \
  -r cubicspline \
  workspace/raw/IMG_PHR1A_PMS_201707041049221_ORT_4597915101_R2C2.TIF \
  workspace/cog/IMG_PHR1A_PMS_201707041049221_.tif

gdal_translate -of cog -srcwin 0 0 2560 3520  \
  workspace/cog/IMG_PHR1A_PMS_201707041049221_.tif \
  workspace/cog/IMG_PHR1A_PMS_201707041049221.tif

gdalwarp -tr 1.5 1.5 -of cog -te 373383.7 4824372.9 377349.8 4829654.8 \
  -r cubicspline \
  workspace/raw/IMG_PHR1A_PMS_201908041045469_ORT_4598073101_R2C2.TIF \
  workspace/cog/IMG_PHR1A_PMS_201908041045469_.tif

gdal_translate -of cog -srcwin 0 0 2560 3520  \
  workspace/cog/IMG_PHR1A_PMS_201908041045469_.tif \
  workspace/cog/IMG_PHR1A_PMS_201908041045469.tif

#gdalwarp -tr 1 1 -of cog \
#  -r cubicspline \
#  workspace/raw/IMG_PHR1A_PMS_201908041045469_ORT_4598073101_R2C2.TIF \
#  workspace/cog/IMG_PHR1A_PMS_201908041045469_HR.tif