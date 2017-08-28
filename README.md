#####################################################################
#
# Kcentra Project - 
#
# Comments: To create the data neede for Kcentra, run each of these
#           in the order below. Items 2-4 can be run in parallel.
#
#####################################################################

To run the code for this project, do the following:

1) get_raw_patient_list.sql - This creates the list of patients based
   on the codes in the sandbox.kcentra_reference_table.  This contains
   CPT, ICD, and NDC codes as business rules for pulling the patient 
   population.

2) get_condor_claims.sql - This creates the condor RX, PX, and DX claims
   based on the defined patient list.

3) get_albatross_claims.sql - This creates the albatross RX, PX, and DX
   claims based on the defined patient list.

4) get_vulture_claims.sql - This creates the vulture RX, PX, and claims
   based on the defined patient list.