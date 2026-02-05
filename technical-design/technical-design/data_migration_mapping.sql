-- Data migration mapping for high-volume claims processing
-- DWP Managed Migration: 2.8m records
-- Business Analyst: Data transformation logic

CREATE TABLE migration.mapped_claims AS
SELECT 
    c.national_insurance_number,
    c.claimant_id,
    c.legacy_benefit_type,
    
    -- Business rule: Weekly to monthly conversion (x52/12)
    ROUND(c.weekly_amount * 52 / 12, 2) as monthly_equivalent,
    
    -- Risk categorisation for KPMG-style governance
    CASE 
        WHEN c.weekly_amount > 500 THEN 'HIGH_VALUE_REVIEW'
        WHEN c.legacy_benefit_type = 'ESA' THEN 'DISABILITY_PRIORITY'
        ELSE 'STANDARD'
    END as risk_category,
    
    -- Transitional protection flag
    CASE 
        WHEN c.weekly_amount * 52 / 12 > 368.74 THEN 'ELIGIBLE_FOR_TP'
        ELSE 'NO_TP_REQUIRED'
    END as tp_status
    
FROM legacy.claimants c
WHERE c.migration_status = 'NOTICE_ISSUED'
  AND c.legacy_benefit_type IN ('ESA', 'HB', 'IS', 'JSA');
