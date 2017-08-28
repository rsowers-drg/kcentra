/***************************************************************
  Program:       get_raw_patient_list.sql
  Author:        Ryan H. Sowers (rsowers@teamdrg.com)
 
  Creation Date: <2017-08-27 10:18:19>
  Time-stamp:    <2017-08-28 10:28:27>
  
  Pull all Kcentra-related patients
 ***************************************************************/

-->| ############################################################
-->| ** CONDOR: 
-->| ** Codes in sandbox.kcentra_reference_table
-->| ############################################################

create temp table sandbox.tmp_condor_pats_1 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.admit_diagnosis) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_2 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.primary_diagnosis) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_3 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_2) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_4 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_3) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_5 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_4) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_6 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_5) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_7 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_6) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_8 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_7) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_9 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosis_code_8) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_condor_pats_10 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.principal_procedure) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_11 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_2) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_12 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_3) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_13 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_4) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_14 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_5) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_15 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_6) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_16 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_7) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_17 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_8) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_18 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_9) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_19 as select
     concat(trim(claims.patient_suffix), trim(claims.member_adr_zip)) as patient_id 
from rwd.condor_claim_record as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.other_proc_code_10) = upper(codelist.code) and upper(code_type) ilike 'cpt%');

create temp table sandbox.tmp_condor_pats_20 as select
     concat(trim(patient_suffix), trim(patient_zip_or_postal_zone)) as patient_id
from rwd.pharmacy_record as pharmacy
   inner join sandbox.kcentra_reference_table as kcentraref
   on (left(trim(kcentraref.code),8) = left(trim(pharmacy.product_or_service_id), 8) and 
       kcentraref.code_type ilike '%NDC%')
where nullif(pharmacy.patient_suffix, '') is not null and 
      trim(pharmacy.patient_suffix) not like 'xxx - %';

create temp table sandbox.tmp_condor_pats_21 as select
    distinct concat(claims.patient_suffix, claims.member_adr_zip) as patient_id
from
(select distinct claim_number
 from rwd.condor_service_record as pharmacy
    inner join sandbox.kcentra_reference_table as kcentraref
    on (left(trim(kcentraref.code),8) = left(trim(pharmacy.ndc), 8) and 
        kcentraref.code_type ilike '%NDC%')) as claimlist
inner join rwd.condor_claim_record as claims on (claimlist.claim_number = claims.claim_number);

create temp table sandbox.tmp_condor_pats_22 as select
    distinct concat(claims.patient_suffix, claims.member_adr_zip) as patient_id
from
(select distinct claim_number
 from rwd.condor_service_record as service
    inner join sandbox.kcentra_reference_table as kcentraref
    on (upper(kcentraref.code) = upper(service.procedure) and 
        kcentraref.code_type ilike 'cpt%')) as claimlist
inner join rwd.condor_claim_record as claims on (claimlist.claim_number = claims.claim_number);

 
drop table if exists sandbox.kcentra_condor_patient_list;

create table sandbox.kcentra_condor_patient_list as select 
     distinct patlist.patient_id
from 
(select patient_id from sandbox.tmp_condor_pats_1  union all
 select patient_id from sandbox.tmp_condor_pats_2  union all
 select patient_id from sandbox.tmp_condor_pats_3  union all
 select patient_id from sandbox.tmp_condor_pats_4  union all
 select patient_id from sandbox.tmp_condor_pats_5  union all
 select patient_id from sandbox.tmp_condor_pats_6  union all
 select patient_id from sandbox.tmp_condor_pats_7  union all
 select patient_id from sandbox.tmp_condor_pats_8  union all
 select patient_id from sandbox.tmp_condor_pats_9  union all
 select patient_id from sandbox.tmp_condor_pats_10 union all
 select patient_id from sandbox.tmp_condor_pats_11 union all
 select patient_id from sandbox.tmp_condor_pats_12 union all
 select patient_id from sandbox.tmp_condor_pats_13 union all
 select patient_id from sandbox.tmp_condor_pats_14 union all
 select patient_id from sandbox.tmp_condor_pats_15 union all
 select patient_id from sandbox.tmp_condor_pats_16 union all
 select patient_id from sandbox.tmp_condor_pats_17 union all
 select patient_id from sandbox.tmp_condor_pats_18 union all
 select patient_id from sandbox.tmp_condor_pats_19 union all
 select patient_id from sandbox.tmp_condor_pats_20 union all
 select patient_id from sandbox.tmp_condor_pats_21 union all
 select patient_id from sandbox.tmp_condor_pats_22) as patlist;


-->| ############################################################
-->| ** ALBATROSS
-->| ** Codes in sandbox.kcentra_reference_table
-->| ############################################################

create temp table sandbox.tmp_albatross_pats_1 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_1) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_2 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_2) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_3 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_3) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_4 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_4) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_5 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_5) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_6 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_6) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_7 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_7) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_8 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id 
from rwd.albatross_claims_header as claims
inner join sandbox.kcentra_reference_table as codelist on
(upper(claims.diagnosiscode_8) = upper(codelist.code) and upper(code_type) ilike 'icd%');

create temp table sandbox.tmp_albatross_pats_9 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id
from 
(select entityid from 
rwd.albatross_claims_detail as detail
inner join sandbox.kcentra_reference_table as codelist on
(upper(detail.stdchglinehcpcsprocedurecode) = upper(codelist.code) and upper(code_type) ilike 'cpt%')) as entities
inner join rwd.albatross_claims_header as claims on 
(entities.entityid = claims.entityid);

create temp table sandbox.tmp_albatross_pats_10 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id
from 
(select entityid from 
rwd.albatross_claims_detail as detail
inner join sandbox.kcentra_reference_table as codelist on
(upper(detail.dmechglinehcpcsprocedurecode) = upper(codelist.code) and upper(code_type) ilike 'cpt%')) as entities
inner join rwd.albatross_claims_header as claims on 
(entities.entityid = claims.entityid);

create temp table sandbox.tmp_albatross_pats_11 as select
     concat(trim(claims.patientsuffix), trim(claims.patientzipcode)) as patient_id
from 
(select entityid from 
rwd.albatross_claims_detail as detail
inner join sandbox.kcentra_reference_table as codelist on
(upper(detail.ndccode) = upper(codelist.code) and upper(code_type) ilike 'ndc%')) as entities
inner join rwd.albatross_claims_header as claims on 
(entities.entityid = claims.entityid);

drop table if exists sandbox.kcentra_albatross_patient_list;

create table sandbox.kcentra_albatross_patient_list as select 
     distinct patlist.patient_id
from 
(select patient_id from sandbox.tmp_albatross_pats_1  union all
 select patient_id from sandbox.tmp_albatross_pats_2  union all
 select patient_id from sandbox.tmp_albatross_pats_3  union all
 select patient_id from sandbox.tmp_albatross_pats_4  union all
 select patient_id from sandbox.tmp_albatross_pats_5  union all
 select patient_id from sandbox.tmp_albatross_pats_6  union all
 select patient_id from sandbox.tmp_albatross_pats_7  union all
 select patient_id from sandbox.tmp_albatross_pats_8  union all
 select patient_id from sandbox.tmp_albatross_pats_9  union all
 select patient_id from sandbox.tmp_albatross_pats_10 union all
 select patient_id from sandbox.tmp_albatross_pats_11) as patlist;

-->| ############################################################
-->| ** VULTURE
-->| ** Codes in sandbox.kcentra_reference_table
-->| ############################################################


create temp table sandbox.tmp_vulture_pats_1 as select
     distinct patlist.patient_id
from (select distinct claims.claim_id from rwd.vulture_diagnosis as claims
      inner join sandbox.kcentra_reference_table as codelist on
      (replace(upper(trim(diagnosis_code)),'.','') = codelist.code and upper(code_type) ilike 'icd%')) as claimlist
inner join (select concat(coalesce(key1, key2, key3), trim(zip3)) as patient_id, claim_id
            from rwd.vulture_patient) as patlist on
            (claimlist.claim_id = patlist.claim_id);

create temp table sandbox.tmp_vulture_pats_2 as select
     distinct patlist.patient_id
from (select distinct claims.claim_id from rwd.vulture_procedure_code as claims
      inner join sandbox.kcentra_reference_table as codelist on
      (replace(upper(trim(procedure_code)),'.','') = codelist.code and upper(code_type) ilike 'cpt%')) as claimlist
inner join (select concat(coalesce(key1, key2, key3), trim(zip3)) as patient_id, claim_id
            from rwd.vulture_patient) as patlist on
            (claimlist.claim_id = patlist.claim_id);

create temp table sandbox.tmp_vulture_pats_3 as select
     distinct patlist.patient_id
from (select distinct claims.claim_id from rwd.vulture_service_line as claims
      inner join sandbox.kcentra_reference_table as codelist on
      (replace(upper(trim(procedure_code)),'.','') = codelist.code and upper(code_type) ilike 'cpt%')) as claimlist
inner join (select concat(coalesce(key1, key2, key3), trim(zip3)) as patient_id, claim_id
            from rwd.vulture_patient) as patlist on
            (claimlist.claim_id = patlist.claim_id);

create temp table sandbox.tmp_vulture_pats_4 as select
     distinct patlist.patient_id
from (select distinct claims.claim_id from rwd.vulture_service_line as claims
      inner join sandbox.kcentra_reference_table as codelist on
      (replace(upper(trim(drug_code)),'.','') = codelist.code and upper(code_type) ilike 'ndc%')) as claimlist
inner join (select concat(coalesce(key1, key2, key3), trim(zip3)) as patient_id, claim_id
            from rwd.vulture_patient) as patlist on
            (claimlist.claim_id = patlist.claim_id);

drop table if exists sandbox.kcentra_vulture_patient_list;

create table sandbox.kcentra_vulture_patient_list as select
     distinct patient_id
from
(select patient_id from sandbox.tmp_vulture_pats_1 union all
 select patient_id from sandbox.tmp_vulture_pats_2 union all
 select patient_id from sandbox.tmp_vulture_pats_3 union all
 select patient_id from sandbox.tmp_vulture_pats_4) as patlist;

-->| ############################################################
-->| ** Create combined patient list
-->| ############################################################

drop table if exists sandbox.kcentra_full_patient_list;

create table sandbox.kcentra_full_patient_list as select
     distinct patlist.patient_id
from 
(select patient_id from sandbox.kcentra_condor_patient_list union all
 select patient_id from sandbox.kcentra_albatross_patient_list union all
 select patient_id from sandbox.kcentra_vulture_patient_list) as patlist;

