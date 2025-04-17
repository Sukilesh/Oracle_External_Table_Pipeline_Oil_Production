BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
    job_name        => 'load_well_production_job',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN 
                          INSERT INTO well_production_fact 
                          SELECT well_id, production_date, oil_volume, gas_volume, water_volume 
                          FROM ext_well_production 
                          WHERE oil_volume IS NOT NULL;
                          COMMIT;
                        END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=DAILY;BYHOUR=3',
    enabled         => TRUE
  );
END;