TRUNCATE TABLE bronze.crm_cust_info; -- Reset table to empty state

BULK INSERT bronze.crm_cust_info
FROM 'E:\3 LEARN\SQL ULTIMATE\sql-data-warehouse-project\datasets\source_crm\cust_info.csv' -- file path
WITH (
	FIRSTROW = 2, -- skip first row because it's a header
	FIELDTERMINATOR = ',', -- specify the data's delimiter
	TABLOCK -- for performance, load the entire table during load process
);

-- Check data quality
SELECT * FROM bronze.crm_cust_info; -- check if theres any shifting values
SELECT COUNT(*) FROM bronze.crm_cust_info; -- check row counts

----------------------

TRUNCATE TABLE bronze.crm_prd_info;

BULK INSERT bronze.crm_prd_info
FROM 'E:\3 LEARN\SQL ULTIMATE\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

SELECT * FROM bronze.crm_prd_info;
SELECT COUNT(*) FROM bronze.crm_prd_info;

----------------------

TRUNCATE TABLE bronze.crm_sales_details;

BULK INSERT bronze.crm_sales_details
FROM 'E:\3 LEARN\SQL ULTIMATE\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

SELECT * FROM bronze.crm_sales_details;
SELECT COUNT(*) FROM bronze.crm_sales_details;

----------------------

TRUNCATE TABLE bronze.erp_cust_az12;

BULK INSERT bronze.erp_cust_az12
FROM 'E:\3 LEARN\SQL ULTIMATE\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

SELECT * FROM bronze.erp_cust_az12;
SELECT COUNT(*) FROM bronze.erp_cust_az12;

----------------------

TRUNCATE TABLE bronze.erp_loc_a101;

BULK INSERT bronze.erp_loc_a101
FROM 'E:\3 LEARN\SQL ULTIMATE\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

SELECT * FROM bronze.erp_loc_a101;
SELECT COUNT(*) FROM bronze.erp_loc_a101;

----------------------

TRUNCATE TABLE bronze.erp_px_cat_g1v2;

BULK INSERT bronze.erp_px_cat_g1v2
FROM 'E:\3 LEARN\SQL ULTIMATE\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
