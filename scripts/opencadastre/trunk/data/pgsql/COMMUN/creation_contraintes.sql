﻿-- CREATION DES CONTRAINTES D'INTEGRITEES : DEBUT;
-- création clé primaire;
ALTER TABLE [PREFIXE]parcelle ADD CONSTRAINT parcelle_pk PRIMARY KEY  (parcelle);
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_pk PRIMARY KEY  (suf);
ALTER TABLE [PREFIXE]sufexoneration ADD CONSTRAINT sufexoneration_pk PRIMARY KEY  (sufexoneration );
ALTER TABLE [PREFIXE]suftaxation ADD CONSTRAINT suftaxation_pk PRIMARY KEY  (suftaxation );
ALTER TABLE [PREFIXE]local00 ADD CONSTRAINT local00_pk PRIMARY KEY  (local00);
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_pk PRIMARY KEY  (local10);
ALTER TABLE [PREFIXE]pev ADD CONSTRAINT pev_pk PRIMARY KEY  (pev);
ALTER TABLE [PREFIXE]pevexoneration ADD CONSTRAINT pevexoneration_pk PRIMARY KEY  (pevexoneration);
ALTER TABLE [PREFIXE]pevtaxation ADD CONSTRAINT pevtaxation_pk PRIMARY KEY  (pevtaxation);
ALTER TABLE [PREFIXE]pevprincipale ADD CONSTRAINT pevprincipale_pk PRIMARY KEY  (pevprincipale);
ALTER TABLE [PREFIXE]pevprofessionnelle ADD CONSTRAINT pevprofessionnelle_pk PRIMARY KEY  (pevprofessionnelle);
ALTER TABLE [PREFIXE]pevdependances ADD CONSTRAINT pevdependances_pk PRIMARY KEY  (pevdependances);
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_pk PRIMARY KEY  (proprietaire);
DELETE FROM [PREFIXE]comptecommunal WHERE comptecommunal IS NULL;
ALTER TABLE [PREFIXE]comptecommunal ADD CONSTRAINT comptecommunal_pk PRIMARY KEY  (comptecommunal);
ALTER TABLE [PREFIXE]pdl ADD CONSTRAINT pdl_pk PRIMARY KEY  (pdl);
ALTER TABLE [PREFIXE]parcellecomposante ADD CONSTRAINT parcellecomposante_pk PRIMARY KEY  (parcellecomposante);
ALTER TABLE [PREFIXE]lots ADD CONSTRAINT lots_pk PRIMARY KEY  (lots);
ALTER TABLE [PREFIXE]lotslocaux ADD CONSTRAINT loclocaux_pk PRIMARY KEY  (lotslocaux);
ALTER TABLE [PREFIXE]commune ADD CONSTRAINT commune_pk PRIMARY KEY  (commune);
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_pk PRIMARY KEY  (voie);
ALTER TABLE [PREFIXE]geo_commune ADD CONSTRAINT geo_commune_pk PRIMARY KEY (geo_commune );
ALTER TABLE [PREFIXE]geo_section ADD CONSTRAINT geo_section_pk PRIMARY KEY (geo_section );
ALTER TABLE [PREFIXE]geo_subdsect ADD CONSTRAINT geo_subdsect_pk PRIMARY KEY (geo_subdsect );
ALTER TABLE [PREFIXE]geo_parcelle ADD CONSTRAINT geo_parcelle_pk PRIMARY KEY (geo_parcelle );
ALTER TABLE [PREFIXE]geo_subdfisc ADD CONSTRAINT geo_subdfisc_pk PRIMARY KEY (geo_subdfisc );
ALTER TABLE [PREFIXE]geo_subdfisc_parcelle ADD CONSTRAINT geo_subdfisc_parcelle_pk PRIMARY KEY (geo_subdfisc_parcelle );
ALTER TABLE [PREFIXE]geo_voiep ADD CONSTRAINT geo_voiep_pk PRIMARY KEY (geo_voiep );
ALTER TABLE [PREFIXE]geo_numvoie ADD CONSTRAINT geo_numvoie_pk PRIMARY KEY (geo_numvoie );
ALTER TABLE [PREFIXE]geo_numvoie_parcelle ADD CONSTRAINT geo_numvoie_parcelle_pk PRIMARY KEY (geo_numvoie_parcelle );
ALTER TABLE [PREFIXE]geo_lieudit ADD CONSTRAINT geo_lieudit_pk PRIMARY KEY (geo_lieudit );
ALTER TABLE [PREFIXE]geo_batiment ADD CONSTRAINT geo_batiment_pk PRIMARY KEY (geo_batiment );
ALTER TABLE [PREFIXE]geo_batiment_parcelle ADD CONSTRAINT geo_batiment_parcelle_pk PRIMARY KEY (geo_batiment_parcelle );
ALTER TABLE [PREFIXE]geo_zoncommuni ADD CONSTRAINT geo_zoncommuni_pk PRIMARY KEY (geo_zoncommuni );
ALTER TABLE [PREFIXE]geo_tronfluv ADD CONSTRAINT geo_tronfluv_pk PRIMARY KEY (geo_tronfluv );
ALTER TABLE [PREFIXE]geo_ptcanv ADD CONSTRAINT geo_ptcanv_pk PRIMARY KEY (geo_ptcanv );
ALTER TABLE [PREFIXE]geo_borne ADD CONSTRAINT geo_borne_pk PRIMARY KEY (geo_borne);
ALTER TABLE [PREFIXE]geo_borne_parcelle ADD CONSTRAINT geo_borne_parcelle_pk PRIMARY KEY (geo_borne_parcelle );
ALTER TABLE [PREFIXE]geo_croix ADD CONSTRAINT geo_croix_pk PRIMARY KEY (geo_croix );
ALTER TABLE [PREFIXE]geo_croix_parcelle ADD CONSTRAINT geo_croix_parcelle_pk PRIMARY KEY (geo_croix_parcelle );
ALTER TABLE [PREFIXE]geo_symblim ADD CONSTRAINT geo_symblim_pk PRIMARY KEY (geo_symblim );
ALTER TABLE [PREFIXE]geo_symblim_parcelle ADD CONSTRAINT geo_symblim_parcelle_pk PRIMARY KEY (geo_symblim_parcelle );
ALTER TABLE [PREFIXE]geo_tpoint ADD CONSTRAINT geo_tpoint_pk PRIMARY KEY (geo_tpoint );
ALTER TABLE [PREFIXE]geo_tpoint_commune ADD CONSTRAINT geo_tpoint_commune_pk PRIMARY KEY (geo_tpoint_commune );
ALTER TABLE [PREFIXE]geo_tline ADD CONSTRAINT geo_tline_pk PRIMARY KEY (geo_tline );
ALTER TABLE [PREFIXE]geo_tline_commune ADD CONSTRAINT geo_tline_commune_pk PRIMARY KEY (geo_tline_commune );
ALTER TABLE [PREFIXE]geo_tsurf ADD CONSTRAINT geo_tsurf_pk PRIMARY KEY (geo_tsurf );
ALTER TABLE [PREFIXE]geo_tsurf_commune ADD CONSTRAINT geo_tsurf_commune_pk PRIMARY KEY (geo_tsurf_commune );
-- création clé étrangère;
ALTER TABLE [PREFIXE]commune ADD CONSTRAINT commune_geo_commune_fk FOREIGN KEY (geo_commune) REFERENCES [PREFIXE]geo_commune (geo_commune) ON DELETE SET NULL;
ALTER TABLE [PREFIXE]parcelle ADD CONSTRAINT parcelle_comptecommunal_fk FOREIGN KEY (comptecommunal) REFERENCES [PREFIXE]comptecommunal (comptecommunal) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcelle ADD CONSTRAINT parcelle_pdl_fk FOREIGN KEY (pdl) REFERENCES [PREFIXE]pdl (pdl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcelle ADD CONSTRAINT parcelle_voie_fk FOREIGN KEY ( voie) REFERENCES [PREFIXE]voie ( voie) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcelle ADD CONSTRAINT parcelle_gpdl_fk FOREIGN KEY (gpdl) REFERENCES [PREFIXE]gpdl (gpdl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcelle ADD CONSTRAINT parcelle_geo_parcelle_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE]geo_parcelle (geo_parcelle) ON DELETE SET NULL;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_comptecommunal_fk FOREIGN KEY (comptecommunal) REFERENCES [PREFIXE]comptecommunal (comptecommunal) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_pdl_fk FOREIGN KEY (pdl) REFERENCES [PREFIXE]pdl (pdl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_gnexps_fk FOREIGN KEY (gnexps) REFERENCES [PREFIXE]gnexps (gnexps) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_cgrnum_fk FOREIGN KEY (cgrnum) REFERENCES [PREFIXE]cgrnum (cgrnum) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_dsgrpf_fk FOREIGN KEY (dsgrpf) REFERENCES [PREFIXE]dsgrpf (dsgrpf) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suf ADD CONSTRAINT suf_cnatsp_fk FOREIGN KEY (cnatsp) REFERENCES [PREFIXE]cnatsp (cnatsp) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]sufexoneration ADD CONSTRAINT sufexoneration_suf_fk FOREIGN KEY (suf) REFERENCES [PREFIXE]suf (suf) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]sufexoneration ADD CONSTRAINT sufexoneration_ccolloc_fk FOREIGN KEY (ccolloc) REFERENCES [PREFIXE]ccolloc (ccolloc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]sufexoneration ADD CONSTRAINT sufexoneration_gnexts_fk FOREIGN KEY (gnexts) REFERENCES [PREFIXE]gnexts (gnexts) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]suftaxation ADD CONSTRAINT suftaxation_suf_fk FOREIGN KEY (suf ) REFERENCES [PREFIXE]suf (suf) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local00 ADD CONSTRAINT local00_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local00 ADD CONSTRAINT local00_voie_fk FOREIGN KEY ( voie) REFERENCES [PREFIXE]voie ( voie) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_local00_fk FOREIGN KEY (local00) REFERENCES [PREFIXE]local00 (local00) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_comptecommunal_fk FOREIGN KEY (comptecommunal) REFERENCES [PREFIXE]comptecommunal (comptecommunal) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_voie_fk FOREIGN KEY (voie) REFERENCES [PREFIXE]voie (voie) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_ccoeva_fk FOREIGN KEY (ccoeva) REFERENCES [PREFIXE]ccoeva (ccoeva) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_dteloc_fk FOREIGN KEY (dteloc) REFERENCES [PREFIXE]dteloc (dteloc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_ccoplc_fk FOREIGN KEY (ccoplc) REFERENCES [PREFIXE]ccoplc (ccoplc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_cconlc_fk FOREIGN KEY (cconlc) REFERENCES [PREFIXE]cconlc (cconlc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_top48a_fk FOREIGN KEY (top48a) REFERENCES [PREFIXE]top48a (top48a) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_dnatlc_fk FOREIGN KEY (dnatlc) REFERENCES [PREFIXE]dnatlc (dnatlc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]local10 ADD CONSTRAINT local10_hlmsem_fk FOREIGN KEY (hlmsem) REFERENCES [PREFIXE]hlmsem (hlmsem) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pev ADD CONSTRAINT pev_local10_fk FOREIGN KEY (local10) REFERENCES [PREFIXE]local10 (local10) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pev ADD CONSTRAINT pev_ccoaff_fk FOREIGN KEY (ccoaff) REFERENCES [PREFIXE]ccoaff (ccoaff) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pev ADD CONSTRAINT pev_gnexpl_fk FOREIGN KEY (gnexpl) REFERENCES [PREFIXE]gnexpl (gnexpl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevexoneration ADD CONSTRAINT pevexoneration_pev_fk FOREIGN KEY (pev) REFERENCES [PREFIXE]pev (pev) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevexoneration ADD CONSTRAINT pevexoneration_ccolloc_fk FOREIGN KEY (ccolloc) REFERENCES [PREFIXE]ccolloc (ccolloc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevexoneration ADD CONSTRAINT pevexoneration_gnextl_fk FOREIGN KEY (gnextl) REFERENCES [PREFIXE]gnextl (gnextl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevtaxation ADD CONSTRAINT pevtaxation_pev_fk FOREIGN KEY (pev) REFERENCES [PREFIXE]pev (pev) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevprincipale ADD CONSTRAINT pevprincipale_pev_fk FOREIGN KEY (pev) REFERENCES [PREFIXE]pev (pev) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevprincipale ADD CONSTRAINT pevprincipale_dep1_cconad_fk FOREIGN KEY (dep1_cconad) REFERENCES [PREFIXE]cconad (cconad) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevprincipale ADD CONSTRAINT pevprincipale_dep2_cconad_fk FOREIGN KEY (dep2_cconad) REFERENCES [PREFIXE]cconad (cconad) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevprincipale ADD CONSTRAINT pevprincipale_dep3_cconad_fk FOREIGN KEY (dep3_cconad) REFERENCES [PREFIXE]cconad (cconad) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevprincipale ADD CONSTRAINT pevprincipale_dep4_cconad_fk FOREIGN KEY (dep4_cconad) REFERENCES [PREFIXE]cconad (cconad) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevprofessionnelle ADD CONSTRAINT pevprofessionnelle_pev_fk FOREIGN KEY (pev) REFERENCES [PREFIXE]pev (pev) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevdependances ADD CONSTRAINT pevdependances_pev_fk FOREIGN KEY (pev) REFERENCES [PREFIXE]pev (pev) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pevdependances ADD CONSTRAINT pevdependances_cconad_fk FOREIGN KEY (cconad) REFERENCES [PREFIXE]cconad (cconad) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pdl ADD CONSTRAINT pdl_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pdl ADD CONSTRAINT pdl_comptecommunal_fk FOREIGN KEY (comptecommunal) REFERENCES [PREFIXE]comptecommunal (comptecommunal) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]pdl ADD CONSTRAINT pdl_ctpdl_fk FOREIGN KEY (ctpdl) REFERENCES [PREFIXE]ctpdl (ctpdl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lots ADD CONSTRAINT lots_pdl_fk FOREIGN KEY (pdl) REFERENCES [PREFIXE]pdl (pdl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lots ADD CONSTRAINT lots_comptecommunal_fk FOREIGN KEY (comptecommunal ) REFERENCES [PREFIXE]comptecommunal ( comptecommunal ) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lots ADD CONSTRAINT lots_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lots ADD CONSTRAINT lots_cconlo_fk FOREIGN KEY (cconlo) REFERENCES [PREFIXE]cconlo (cconlo) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_comptecommunal_fk FOREIGN KEY (comptecommunal) REFERENCES [PREFIXE]comptecommunal (comptecommunal) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_ccodro_fk FOREIGN KEY (ccodro) REFERENCES [PREFIXE]ccodro (ccodro) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_ccodem_fk FOREIGN KEY (ccodem) REFERENCES [PREFIXE]ccodem (ccodem) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_gtoper_fk FOREIGN KEY (gtoper) REFERENCES [PREFIXE]gtoper (gtoper) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_ccoqua_fk FOREIGN KEY (ccoqua) REFERENCES [PREFIXE]ccoqua (ccoqua) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_dnatpr_fk FOREIGN KEY (dnatpr) REFERENCES [PREFIXE]dnatpr (dnatpr) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_ccogrm_fk FOREIGN KEY (ccogrm) REFERENCES [PREFIXE]ccogrm (ccogrm) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_gtyp3_fk FOREIGN KEY (gtyp3) REFERENCES [PREFIXE]gtyp3 (gtyp3) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_gtyp4_fk FOREIGN KEY (gtyp4) REFERENCES [PREFIXE]gtyp4 (gtyp4) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_gtyp5_fk FOREIGN KEY (gtyp5) REFERENCES [PREFIXE]gtyp5 (gtyp5) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]proprietaire ADD CONSTRAINT proprietaire_gtyp6_fk FOREIGN KEY (gtyp6) REFERENCES [PREFIXE]gtyp6 (gtyp6) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcellecomposante ADD CONSTRAINT parcellecomposante_pdl_fk FOREIGN KEY (pdl) REFERENCES [PREFIXE]pdl (pdl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcellecomposante ADD CONSTRAINT parcellecomposante_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]parcellecomposante ADD CONSTRAINT parcellecomposante_parcellea_fk FOREIGN KEY (parcellea) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lotslocaux ADD CONSTRAINT lotslocaux_lots_fk FOREIGN KEY ( lots ) REFERENCES [PREFIXE]lots (lots) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lotslocaux ADD CONSTRAINT lotslocaux_local00_fk FOREIGN KEY (local00) REFERENCES [PREFIXE]local00 (local00) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]lotslocaux ADD CONSTRAINT lotslocaux_local10_fk FOREIGN KEY (local10) REFERENCES [PREFIXE]local10 (local10) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]commune ADD CONSTRAINT lotslocaux_typcom_fk FOREIGN KEY (typcom) REFERENCES [PREFIXE]typcom (typcom) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_commune_fk FOREIGN KEY (commune) REFERENCES [PREFIXE]commune (commune) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_typcom_fk FOREIGN KEY (typcom) REFERENCES [PREFIXE]typcom (typcom) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_natvoiriv_fk FOREIGN KEY (natvoiriv) REFERENCES [PREFIXE]natvoiriv (natvoiriv) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_carvoi_fk FOREIGN KEY (carvoi) REFERENCES [PREFIXE]carvoi (carvoi) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_annul_fk FOREIGN KEY (annul) REFERENCES [PREFIXE]annul (annul) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_typvoi_fk FOREIGN KEY (typvoi) REFERENCES [PREFIXE]typvoi (typvoi) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]voie ADD CONSTRAINT voie_indldnbat_fk FOREIGN KEY (indldnbat) REFERENCES [PREFIXE]indldnbat (indldnbat) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_commune ADD CONSTRAINT geo_commune_commune_fk FOREIGN KEY (commune) REFERENCES [PREFIXE]commune (commune) ON DELETE SET NULL;
ALTER TABLE [PREFIXE]geo_section ADD CONSTRAINT geo_section_commune_fk FOREIGN KEY (geo_commune) REFERENCES [PREFIXE]geo_commune (geo_commune) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_subdsect ADD CONSTRAINT geo_subdsect_qupl_fk FOREIGN KEY (geo_qupl) REFERENCES [PREFIXE]geo_qupl (geo_qupl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_subdsect ADD CONSTRAINT geo_subdsect_copl_fk FOREIGN KEY (geo_copl) REFERENCES [PREFIXE]geo_copl (geo_copl) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_subdsect ADD CONSTRAINT geo_subdsect_inp_fk FOREIGN KEY (geo_inp) REFERENCES [PREFIXE]geo_inp (geo_inp) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_subdsect ADD CONSTRAINT geo_subdsect_section_fk FOREIGN KEY (geo_section) REFERENCES [PREFIXE]geo_section (geo_section) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_parcelle ADD CONSTRAINT geo_parcelle_indp_fk FOREIGN KEY (geo_indp) REFERENCES [PREFIXE]geo_indp (geo_indp) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_parcelle ADD CONSTRAINT geo_parcelle_section_fk FOREIGN KEY (geo_section) REFERENCES [PREFIXE]geo_section (geo_section) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_parcelle ADD CONSTRAINT geo_parcelle_subdsect_fk FOREIGN KEY (geo_subdsect) REFERENCES [PREFIXE]geo_subdsect (geo_subdsect) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_parcelle ADD CONSTRAINT geo_parcelle_parcelle_fk FOREIGN KEY (parcelle) REFERENCES [PREFIXE]parcelle (parcelle) ON DELETE SET NULL;
ALTER TABLE [PREFIXE]geo_subdfisc_parcelle ADD CONSTRAINT geo_subdfisc_parcelle_s_fk FOREIGN KEY (geo_subdfisc) REFERENCES [PREFIXE]geo_subdfisc (geo_subdfisc) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_subdfisc_parcelle ADD CONSTRAINT geo_subdfisc_parcelle_p_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE]geo_parcelle (geo_parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_numvoie_parcelle ADD CONSTRAINT geo_numvoie_parcelle_n_fk FOREIGN KEY (geo_numvoie) REFERENCES [PREFIXE]geo_numvoie (geo_numvoie) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_numvoie_parcelle ADD CONSTRAINT geo_numvoie_parcelle_p_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE]geo_parcelle (geo_parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_batiment ADD CONSTRAINT geo_batiment_dur_fk FOREIGN KEY (geo_dur) REFERENCES [PREFIXE]geo_dur (geo_dur) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_batiment_parcelle ADD CONSTRAINT geo_batiment_parcelle_n_fk FOREIGN KEY (geo_batiment) REFERENCES [PREFIXE] geo_batiment (geo_batiment) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_batiment_parcelle ADD CONSTRAINT geo_batiment_parcelle_p_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE] geo_parcelle (geo_parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_ptcanv ADD CONSTRAINT geo_ptcanv_can_fk FOREIGN KEY (geo_can) REFERENCES [PREFIXE]geo_can (geo_can) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_ptcanv ADD CONSTRAINT geo_ptcanv_ppln_fk FOREIGN KEY (geo_ppln) REFERENCES [PREFIXE]geo_ppln (geo_ppln) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_ptcanv ADD CONSTRAINT geo_ptcanv_palt_fk FOREIGN KEY (geo_palt) REFERENCES [PREFIXE]geo_palt (geo_palt) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_ptcanv ADD CONSTRAINT geo_ptcanv_map_fk FOREIGN KEY (geo_map) REFERENCES [PREFIXE]geo_map (geo_map) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_ptcanv ADD CONSTRAINT geo_ptcanv_sym_fk FOREIGN KEY (geo_sym) REFERENCES [PREFIXE]geo_sym (geo_sym) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_borne_parcelle ADD CONSTRAINT geo_borne_parcelle_n_fk FOREIGN KEY (geo_borne) REFERENCES [PREFIXE]geo_borne (geo_borne) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_borne_parcelle ADD CONSTRAINT geo_borne_parcelle_p_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE]geo_parcelle (geo_parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_croix_parcelle ADD CONSTRAINT geo_croix_parcelle_n_fk FOREIGN KEY (geo_croix) REFERENCES [PREFIXE]geo_croix (geo_croix) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_croix_parcelle ADD CONSTRAINT geo_croix_parcelle_p_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE]geo_parcelle (geo_parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_symblim ADD CONSTRAINT geo_symblim_sym_n_fk FOREIGN KEY (geo_sym) REFERENCES [PREFIXE]geo_sym (geo_sym) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_symblim_parcelle ADD CONSTRAINT geo_symblim_parcelle_n_fk FOREIGN KEY (geo_symblim) REFERENCES [PREFIXE]geo_symblim (geo_symblim) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_symblim_parcelle ADD CONSTRAINT geo_symblim_parcelle_p_fk FOREIGN KEY (geo_parcelle) REFERENCES [PREFIXE]geo_parcelle (geo_parcelle) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tpoint ADD CONSTRAINT geo_tpoint_sym_n_fk FOREIGN KEY (geo_sym) REFERENCES [PREFIXE]geo_sym (geo_sym) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tpoint_commune ADD CONSTRAINT geo_tpoint_commune_n_fk FOREIGN KEY (geo_tpoint) REFERENCES [PREFIXE]geo_tpoint (geo_tpoint) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tpoint_commune ADD CONSTRAINT geo_tpoint_commune_p_fk FOREIGN KEY (geo_commune) REFERENCES [PREFIXE]geo_commune (geo_commune) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tline ADD CONSTRAINT geo_tline_sym_n_fk FOREIGN KEY (geo_sym) REFERENCES [PREFIXE]geo_sym (geo_sym) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tline_commune ADD CONSTRAINT geo_tline_commune_n_fk FOREIGN KEY (geo_tline) REFERENCES [PREFIXE]geo_tline (geo_tline) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tline_commune ADD CONSTRAINT geo_tline_commune_p_fk FOREIGN KEY (geo_commune) REFERENCES [PREFIXE]geo_commune (geo_commune) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tsurf ADD CONSTRAINT geo_tsurf_sym_n_fk FOREIGN KEY (geo_sym) REFERENCES [PREFIXE]geo_sym (geo_sym) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tsurf_commune ADD CONSTRAINT geo_tsurf_commune_n_fk FOREIGN KEY (geo_tsurf) REFERENCES [PREFIXE]geo_tsurf (geo_tsurf) ON DELETE CASCADE;
ALTER TABLE [PREFIXE]geo_tsurf_commune ADD CONSTRAINT geo_tsurf_commune_p_fk FOREIGN KEY (geo_commune) REFERENCES [PREFIXE]geo_commune (geo_commune) ON DELETE CASCADE;
-- CREATION DES CONTRAINTES D'INTEGRITEES : FIN;
