CREATE OR ALTER VIEW dbo.dim_brokers AS 
	SELECT 
		CAST(broker_id AS VARCHAR(50)) broker_id, 
		broker_name,
		region,
		email
	FROM [LKH_RSTATE_DEV_001].[dbo].[dim_brokers];

CREATE OR ALTER VIEW dbo.dim_campaigns AS 
	SELECT 
		CAST([campaign_id] AS VARCHAR(50)) campaign_id,
		channel,
		campaign_name,
		start_date,
		end_date,
		budget_usd
	FROM [LKH_RSTATE_DEV_001].[dbo].[dim_campaigns];

CREATE OR ALTER VIEW dbo.dim_clients AS 
	SELECT
		CAST([client_id] AS VARCHAR(50)) client_id,
		first_name,
		last_name,
		email,
		region,
		nombre_completo
	FROM [LKH_RSTATE_DEV_001].[dbo].[dim_clients];

CREATE OR ALTER VIEW dbo.dim_projects AS 
	SELECT
		CAST([project_id] AS VARCHAR(50)) project_id,
		project_name,
		city,
		region,
		launch_year,
		status
	FROM [LKH_RSTATE_DEV_001].[dbo].[dim_projects];

CREATE OR ALTER VIEW dbo.dim_properties AS 
	SELECT 
		CAST([property_id] AS VARCHAR(50)) property_id,
		CAST([project_id] AS VARCHAR(50)) project_id,
		property_type,
		size_m2,
		bedrooms,
		bathrooms,
		listprice_usd,
		availability_status,
		precio_m2
	FROM [LKH_RSTATE_DEV_001].[dbo].[dim_properties];

CREATE OR ALTER VIEW dbo.fact_leads AS 
	SELECT 
		CAST([lead_id] AS VARCHAR(50)) lead_id,
		CAST([client_id] AS VARCHAR(50)) client_id,
		CAST([property_id] AS VARCHAR(50)) property_id,
		CAST([campaign_id] AS VARCHAR(50)) campaign_id,
		lead_date,
		lead_source
	FROM [LKH_RSTATE_DEV_001].[dbo].[fact_leads];

CREATE OR ALTER VIEW dbo.fact_sales AS 
SELECT 
		CAST([sale_id] AS VARCHAR(50)) sale_id,
		CAST([property_id] AS VARCHAR(50)) property_id,
		CAST([client_id] AS VARCHAR(50)) client_id,
		CAST([broker_id] AS VARCHAR(50)) broker_id,
		sale_date,
		saleprice_usd
FROM [LKH_RSTATE_DEV_001].[dbo].[fact_sales];

