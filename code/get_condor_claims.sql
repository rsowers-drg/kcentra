/***************************************************************
  Program:       get_condor_claims.sql
  Author:        Ryan H. Sowers (rsowers@teamdrg.com)
 
  Creation Date: <2017-08-11 21:09:29>
  Time-stamp:    <2017-08-28 12:11:38>
  
  Get all condor claims for Kcentra patients
 ***************************************************************/

-->| ############################################################
-->| ** Get all Condor claims for all patients
-->| ############################################################

drop table if exists sandbox.tmp_kcentra_claim_record;

create table sandbox.tmp_kcentra_claim_record as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id,
     claims.patient_gender,
     claims.patient_age,
     claims.claim_number,
     claims.claim_type_code as claim_soc,
     coalesce(to_date(servrec.service_from), claims.statement_from, claims.received_date) as claim_date,
     coalesce(claims.attending_pr_npi, claims.referring_pr_npi) as provider_npi,
     claims.facility_npi as facility_npi,
     claims.billing_pr_npi as billing_npi,
     upper(trim(claims.admit_diagnosis)) as diagnosis_code_0,
     upper(trim(claims.primary_diagnosis)) as diagnosis_code_1,
     upper(trim(claims.diagnosis_code_2)) as diagnosis_code_2,
     upper(trim(claims.diagnosis_code_3)) as diagnosis_code_3,
     upper(trim(claims.diagnosis_code_4)) as diagnosis_code_4,
     upper(trim(claims.diagnosis_code_5)) as diagnosis_code_5,
     upper(trim(claims.diagnosis_code_6)) as diagnosis_code_6,
     upper(trim(claims.diagnosis_code_7)) as diagnosis_code_7,
     upper(trim(claims.diagnosis_code_8)) as diagnosis_code_8,
     upper(trim(servrec.procedure)) as procedure_1,
     upper(trim(claims.principal_procedure)) as procedure_2,
     upper(trim(claims.other_proc_code_2)) as procedure_3,
     upper(trim(claims.other_proc_code_3)) as procedure_4,
     upper(trim(claims.other_proc_code_4)) as procedure_5,
     upper(trim(claims.other_proc_code_5)) as procedure_6,
     upper(trim(claims.other_proc_code_6)) as procedure_7,
     upper(trim(claims.other_proc_code_7)) as procedure_8,
     upper(trim(claims.other_proc_code_8)) as procedure_9,
     upper(trim(claims.other_proc_code_9)) as procedure_10,
     upper(trim(claims.other_proc_code_10)) as procedure_11
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_full_patient_list as patlist on
     (concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) = patlist.patient_id)
left join rwd.condor_service_record as servrec on
     (claims.claim_number = servrec.claim_number);

drop table if exists sandbox.tmp_kcentra_condor_service_record;

create table sandbox.tmp_kcentra_condor_service_record as select
     patlist.patient_id,
     claims.patient_gender,
     claims.patient_age,
     claims.claim_number,
     claims.claim_type_code as claim_soc,
     coalesce(to_date(servrec.service_from), claims.statement_from, claims.received_date) as claim_date,
     coalesce(claims.attending_pr_npi, claims.referring_pr_npi) as provider_npi,
     claims.facility_npi as facility_npi,
     claims.billing_pr_npi as billing_npi,
     servrec.procedure
from rwd.condor_claim_record as claims 
inner join sandbox.kcentra_full_patient_list as patlist on 
(concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) = patlist.patient_id)
left join rwd.condor_service_record as servrec on
(claims.claim_number = servrec.claim_number);

-->| ############################################################
-->| ** Realign the claims to be a single diag_code column
-->| ############################################################

drop table if exists sandbox.kcentra_condor_diagnosis_claims;

create table sandbox.kcentra_condor_diagnosis_claims as select
     distinct
     patient_id,
     claim_number,
     claim_date,
     claim_soc,
     provider_npi,
     facility_npi,
     billing_npi,
     diag_code
from
(select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_0 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_1 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_2 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_3 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_4 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_5 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_6 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_7 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL
 union all
 select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      diagnosis_code_8 as diag_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and diag_code is not NULL);

-->| ############################################################
-->| ** Realign the claims to be a single proc_code column
-->| ############################################################

drop table if exists sandbox.kcentra_condor_procedure_claims;

create table sandbox.kcentra_condor_procedure_claims as select 
     distinct
     patient_id,
     claim_number,
     claim_date,
     claim_soc,
     provider_npi,
     facility_npi,
     billing_npi,
     proc_code
from
(select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_1 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_2 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_3 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_4 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_5 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_6 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_7 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_8 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_9 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_10 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select 
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure_11 as proc_code
 from sandbox.tmp_kcentra_claim_record
 where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL
 union all
select
      patient_id,
      claim_number,
      claim_date,
      claim_soc,
      provider_npi,
      facility_npi,
      billing_npi,
      procedure as proc_code
from sandbox.tmp_kcentra_condor_service_record
where patient_id is not NULL and claim_date is not NULL and proc_code is not NULL);

-->| ############################################################
-->| ** Realign the claims to be a single ndc_code column
-->| ############################################################

drop table if exists sandbox.kcentra_condor_rx_claims;

create table sandbox.kcentra_condor_rx_claims as select
     patlist.patient_id,
     pharmacy.emdeon_tdr_claimid_or_uow_agn as claim_number,
     to_date(pharmacy.date_of_service) as claim_date,
     '' as claim_soc,
     pharmacy.prescriber_id as provider_npi,
     '' as facility_npi,
     '' as billing_npi,
     pharmacy.product_or_service_id as ndc_code
from rwd.condor_pharmacy_record as pharmacy
inner join sandbox.kcentra_full_patient_list as patlist
on (concat(trim(pharmacy.patient_suffix), trim(pharmacy.patient_zip_or_postal_zone)) = patlist.patient_id);
