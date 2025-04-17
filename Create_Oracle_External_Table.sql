CREATE TABLE ext_well_production (
  well_id           VARCHAR2(20),
  production_date   DATE,
  oil_volume        NUMBER,
  gas_volume        NUMBER,
  water_volume      NUMBER
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY prod_data_dir
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    SKIP 1
    FIELDS TERMINATED BY ',' 
    MISSING FIELD VALUES ARE NULL
    (
      well_id, 
      production_date DATE "YYYY-MM-DD", 
      oil_volume, 
      gas_volume, 
      water_volume
    )
  )
  LOCATION ('well_production_2025-04-15.csv')
);