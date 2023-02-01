from pathlib import Path

import numpy as np
import rasterio
from rio_cogeo.cogeo import cog_translate

tifs = sorted(list((Path("workspace") / "cog").glob("*.tif")))

maxs = np.asarray([2800, 2650, 2250, 4000])
maxs = maxs[:, None, None]


for tif in tifs:
    riods = rasterio.open(tif)
    meta = riods.meta
    img = riods.read()
    riods.close()

    img = img.clip(0, maxs).astype(np.float32) / maxs
    img = (img.clip(0.0, 1.0) * 255.0).astype(np.uint8)

    meta.update(dict(dtype=np.uint8))
    meta.update(dict(driver="COG"))

    new_path = str(tif).replace(".tif", "_8bits.tif")

    with rasterio.open(new_path, "w", **meta) as riods:
        riods.write(img)
