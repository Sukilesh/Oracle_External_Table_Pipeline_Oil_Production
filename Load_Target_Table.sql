INSERT INTO well_production_fact (well_id, production_date, oil_volume, gas_volume, water_volume)
SELECT well_id, production_date, oil_volume, gas_volume, water_volume
FROM ext_well_production
WHERE oil_volume IS NOT NULL AND gas_volume IS NOT NULL;