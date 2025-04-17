CREATE OR REPLACE DIRECTORY prod_data_dir AS '/data/oil_prod/';

GRANT READ, WRITE ON DIRECTORY prod_data_dir TO your_user;