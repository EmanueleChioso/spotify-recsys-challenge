#!/bin/sh

echo "START PERSONALIZED_TOP_POP_ALBUM"
python top_pop_album.py $1
echo "DONE PERSONALIZED_TOP_POP_ALBUM"

echo "START PERSONALIZED_TOP_POP_TRACK"
python top_pop_track.py $1
echo "DONE PERSONALIZED_TOP_POP_TRACK"

echo "START TOP_POP"
python top_pop.py $1
echo "DONE TOP_POP"

echo "START CB IB CAT9"
python cb_ib_cat9.py $1
echo "DONE CB IB CAT9"

python cr_cb_al_ar_bm25.py $1 $2
echo "cr_CB_AL_AR"

python cr_cb_ar_bm25.py $1 $2
echo "cr_CB_AR"

python cr_cf_ar_bm25.py $1 $2
echo "cr_CF_AR"

python cr_cf_feats_cat10_bm25.py $1 $2
echo "cr_CF_FEATS_CAT10"

python cr_cluster_creative_bm25.py $1 $2
echo "cr_CLUSTER"


python cb_al.py $1 $2
echo "CB_AL"
python cb_ar.py $1 $2
echo "CB_AR"
python cb_al_ar.py $1 $2
echo "CB_AL_AR"
python cf_al.py $1 $2
echo "CF_AL"
python cf_ar.py $1 $2
echo "CF_AR"
python cf_al_ar.py $1 $2
echo "CF_AL_AR"
python cf_ub.py $1 $2
echo "CF_UB"
python cf_ib.py $1 $2
echo "CF_IB"
python cb_layer_cat8.py $1 $2
echo "LAYER_CAT8"
python cb_layer_cat10.py $1 $2
echo "LAYER_CAT10"
python nlp_fusion.py $1 $2
echo "NLP_FUSION"

