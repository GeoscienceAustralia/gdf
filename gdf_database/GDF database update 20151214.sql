ALTER TABLE storage_type ADD COLUMN opendap_root character varying(256);
ALTER TABLE storage_type ADD COLUMN opendap_catalog character varying(256);


update storage_type
set opendap_root = 'http://dapds00.nci.org.au/thredds/dodsC/uc0/rs0_dev/gdf_trial/20150709/' || storage_type_tag,
opendap_catalog = 'http://dapds00.nci.org.au/thredds/catalog/uc0/rs0_dev/gdf_trial/20150709/' || storage_type_tag || '/catalog.html'