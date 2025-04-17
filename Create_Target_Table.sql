CREATE TABLE well_production_fact (
  well_id         VARCHAR2(20),
  production_date DATE,
  oil_volume      NUMBER,
  gas_volume      NUMBER,
  water_volume    NUMBER,
  load_date       DATE DEFAULT SYSDATE
);