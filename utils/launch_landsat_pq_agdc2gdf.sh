#!/bin/bash
# launch_gdf2gdf.sh

# script is in utils directory under gdf root dir
gdf_root=$(dirname $(readlink -e $(dirname $0)))
echo gdf_root = ${gdf_root}

level='PQA'
xmin=139
xmax=141
ymin=-37
ymax=-35
temp_dir='/g/data1/r78/axi547/gdf/temp'
config="${gdf_root}/utils/agdc2gdf_landsat.conf"

for x in $(seq ${xmin} ${xmax})
do
#    for y in $(seq ${ymin} ${ymax})
#    do
        # 47 sensor-years total
        # 27 years of LS5
        storage_type='LS5TMPQ'
        satellite='LS5'
        sensors='TM'
        tmin=1987
        tmax=2013
        for t in $(seq ${tmin} ${tmax})
        do
            echo qsub -v gdf_root=${gdf_root},config=${config},storage_type=${storage_type},satellite=${satellite},sensors=${sensors},level=${level},xmin=${x},xmax=${x},ymin=${ymin},ymax=${ymax},tmin=${t},tmax=${t},temp_dir=${temp_dir} ${gdf_root}/utils/agdc2gdf_qsub.sh
            qsub -v gdf_root=${gdf_root},config=${config},storage_type=${storage_type},satellite=${satellite},sensors=${sensors},level=${level},xmin=${x},xmax=${x},ymin=${ymin},ymax=${ymax},tmin=${t},tmax=${t},temp_dir=${temp_dir} ${gdf_root}/utils/agdc2gdf_qsub.sh
        done

        # 17 years of LS5
        storage_type='LS7ETMPQ'
        satellite='LS7'
        sensors='ETM+'
        tmin=1999
        tmax=2015
        for t in $(seq ${tmin} ${tmax})
        do
            echo qsub -v gdf_root=${gdf_root},config=${config},storage_type=${storage_type},satellite=${satellite},sensors=${sensors},level=${level},xmin=${x},xmax=${x},ymin=${ymin},ymax=${ymax},tmin=${t},tmax=${t},temp_dir=${temp_dir} ${gdf_root}/utils/agdc2gdf_qsub.sh
            qsub -v gdf_root=${gdf_root},config=${config},storage_type=${storage_type},satellite=${satellite},sensors=${sensors},level=${level},xmin=${x},xmax=${x},ymin=${ymin},ymax=${ymax},tmin=${t},tmax=${t},temp_dir=${temp_dir} ${gdf_root}/utils/agdc2gdf_qsub.sh
        done

        # 3 years of LS5
        storage_type='LS8OLIPQ'
        satellite='LS8'
        sensors='OLI\,OLI_TIRS'
        tmin=2013
        tmax=2015
        for t in $(seq ${tmin} ${tmax})
        do
            echo qsub -v gdf_root=${gdf_root},config=${config},storage_type=${storage_type},satellite=${satellite},sensors=${sensors},level=${level},xmin=${x},xmax=${x},ymin=${ymin},ymax=${ymax},tmin=${t},tmax=${t},temp_dir=${temp_dir} ${gdf_root}/utils/agdc2gdf_qsub.sh
            qsub -v gdf_root=${gdf_root},config=${config},storage_type=${storage_type},satellite=${satellite},sensors=${sensors},level=${level},xmin=${x},xmax=${x},ymin=${ymin},ymax=${ymax},tmin=${t},tmax=${t},temp_dir=${temp_dir} ${gdf_root}/utils/agdc2gdf_qsub.sh
        done
#    done
done
