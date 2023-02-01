gsutil -m cp -r gs://fch-co3d-store/products/DS_PHR1A_201908041045469_FR1_PX_E001N43_0615_01728 .
gsutil -m cp -r gs://fch-co3d-store/products/DS_PHR1A_201707041049221_FR1_PX_E001N43_0615_01728 .
gsutil -m cp -r gs://fch-co3d-store/products/DS_PHR1A_201609071056565_FR1_PX_E001N43_0615_01728 .
gsutil -m cp -r gs://fch-co3d-store/products/DS_PHR1A_201506041053076_FR1_PX_E001N43_0615_01728 .
gsutil -m cp -r gs://fch-co3d-store/products/DS_PHR1A_201504131053028_FR1_PX_E001N43_0615_01728 .

gsutil ls gs://fch-co3d-store/products/DS_PHR1A_201707041049221_FR1_PX_E001N43_0615_01728 | grep *R2C2*