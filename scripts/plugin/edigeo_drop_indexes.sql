-- annee
DROP INDEX IF EXISTS geo_commune_annee_idx;
DROP INDEX IF EXISTS geo_section_annee_idx;
DROP INDEX IF EXISTS geo_subdsect_annee_idx;
DROP INDEX IF EXISTS geo_parcelle_annee_idx;
DROP INDEX IF EXISTS geo_subdfisc_annee_idx;
DROP INDEX IF EXISTS geo_voiep_annee_idx;
DROP INDEX IF EXISTS geo_numvoie_annee_idx;
DROP INDEX IF EXISTS geo_lieudit_annee_idx;
DROP INDEX IF EXISTS geo_batiment_annee_idx;
DROP INDEX IF EXISTS geo_zoncommuni_annee_idx;
DROP INDEX IF EXISTS geo_tronfluv_annee_idx;
DROP INDEX IF EXISTS geo_ptcanv_annee_idx;
DROP INDEX IF EXISTS geo_borne_annee_idx;
DROP INDEX IF EXISTS geo_croix_annee_idx;
DROP INDEX IF EXISTS geo_symblim_annee_idx;
DROP INDEX IF EXISTS geo_tpoint_annee_idx;
DROP INDEX IF EXISTS geo_tline_annee_idx;
DROP INDEX IF EXISTS geo_tsurf_annee_idx;

-- geometries
DROP INDEX IF EXISTS geo_commune_geom_idx;
DROP INDEX IF EXISTS geo_section_geom_idx;
DROP INDEX IF EXISTS geo_subdsect_geom_idx;
DROP INDEX IF EXISTS geo_parcelle_geom_idx;
DROP INDEX IF EXISTS geo_parcelle_geomuf_idx;
DROP INDEX IF EXISTS geo_subdfisc_geom_idx;
DROP INDEX IF EXISTS geo_voiep_geom_idx;
DROP INDEX IF EXISTS geo_numvoie_geom_idx;
DROP INDEX IF EXISTS geo_lieudit_geom_idx;
DROP INDEX IF EXISTS geo_batiment_geom_idx;
DROP INDEX IF EXISTS geo_zoncommuni_geom_idx;
DROP INDEX IF EXISTS geo_tronfluv_geom_idx;
DROP INDEX IF EXISTS geo_ptcanv_geom_idx;
DROP INDEX IF EXISTS geo_borne_geom_idx;
DROP INDEX IF EXISTS geo_croix_geom_idx;
DROP INDEX IF EXISTS geo_symblim_geom_idx;
DROP INDEX IF EXISTS geo_tpoint_geom_idx;
DROP INDEX IF EXISTS geo_tline_geom_idx;
DROP INDEX IF EXISTS geo_tsurf_geom_idx;
DROP INDEX IF EXISTS geo_label_geom_idx;
DROP INDEX IF EXISTS geo_unite_fonciere_geom_idx;

-- attributes
DROP INDEX IF EXISTS geo_commune_tex2_idx;
DROP INDEX IF EXISTS geo_section_idu_idx;
DROP INDEX IF EXISTS geo_parcelle_idu_idx;
DROP INDEX IF EXISTS geo_section_geo_commune_idx;
DROP INDEX IF EXISTS geo_parcelle_geo_section_idx;
DROP INDEX IF EXISTS geo_label_x_label_idx ;
DROP INDEX IF EXISTS geo_label_y_label_idx ;
DROP INDEX IF EXISTS geo_label_ogr_obj_lnk_layer_idx;
DROP INDEX IF EXISTS geo_unite_fonciere_comptecommunal_idx;

-- indexes created as substitute of sqlite primary column
DROP INDEX IF EXISTS idx_parcelle_parcelle;
DROP INDEX IF EXISTS idx_suf_suf;
DROP INDEX IF EXISTS idx_sufexoneration_sufexoneration ;
DROP INDEX IF EXISTS idx_suftaxation_suftaxation ;
DROP INDEX IF EXISTS idx_local00_local00;
DROP INDEX IF EXISTS idx_local10_local10;
DROP INDEX IF EXISTS idx_pev_pev;
DROP INDEX IF EXISTS idx_pevexoneration_pevexoneration;
DROP INDEX IF EXISTS idx_pevtaxation_pevtaxation;
DROP INDEX IF EXISTS idx_pevprincipale_pevprincipale;
DROP INDEX IF EXISTS idx_pevprofessionnelle_pevprofessionnelle;
DROP INDEX IF EXISTS idx_pevdependances_pevdependances;
DROP INDEX IF EXISTS idx_proprietaire_proprietaire;
DROP INDEX IF EXISTS idx_comptecommunal_comptecommunal;
DROP INDEX IF EXISTS idx_pdl_pdl;
DROP INDEX IF EXISTS idx_parcellecomposante_parcellecomposante;
DROP INDEX IF EXISTS idx_lots_lots;
DROP INDEX IF EXISTS idx_lotslocaux_lotslocaux;
DROP INDEX IF EXISTS idx_commune_commune;
DROP INDEX IF EXISTS idx_voie_voie;
DROP INDEX IF EXISTS idx_geo_commune_ogc_fid;
DROP INDEX IF EXISTS idx_geo_section_ogc_fid;
DROP INDEX IF EXISTS idx_geo_subdsect_geo_subdsect;
DROP INDEX IF EXISTS idx_geo_parcelle_ogc_fid;
DROP INDEX IF EXISTS idx_geo_subdfisc_geo_subdfisc ;
DROP INDEX IF EXISTS idx_geo_subdfisc_parcelle_geo_subdfisc_parcelle ;
DROP INDEX IF EXISTS idx_geo_voiep_geo_voiep ;
DROP INDEX IF EXISTS idx_geo_numvoie_geo_numvoie ;
DROP INDEX IF EXISTS idx_geo_numvoie_parcelle_geo_numvoie_parcelle ;
DROP INDEX IF EXISTS idx_geo_lieudit_geo_lieudit ;
DROP INDEX IF EXISTS idx_geo_batiment_geo_batiment ;
DROP INDEX IF EXISTS idx_geo_batiment_parcelle_geo_batiment_parcelle ;
DROP INDEX IF EXISTS idx_geo_zoncommuni_geo_zoncommuni ;
DROP INDEX IF EXISTS idx_geo_tronfluv_geo_tronfluv ;
DROP INDEX IF EXISTS idx_geo_ptcanv_geo_ptcanv ;
DROP INDEX IF EXISTS idx_geo_borne_geo_borne;
DROP INDEX IF EXISTS idx_geo_borne_parcelle_geo_borne_parcelle ;
DROP INDEX IF EXISTS idx_geo_croix_geo_croix ;
DROP INDEX IF EXISTS idx_geo_croix_parcelle_geo_croix_parcelle ;
DROP INDEX IF EXISTS idx_geo_symblim_geo_symblim ;
DROP INDEX IF EXISTS idx_geo_symblim_parcelle_geo_symblim_parcelle ;
DROP INDEX IF EXISTS idx_geo_tpoint_geo_tpoint ;
DROP INDEX IF EXISTS idx_geo_tpoint_commune_geo_tpoint_commune ;
DROP INDEX IF EXISTS idx_geo_tline_geo_tline ;
DROP INDEX IF EXISTS idx_geo_tline_commune_geo_tline_commune ;
DROP INDEX IF EXISTS idx_geo_tsurf_geo_tsurf ;
DROP INDEX IF EXISTS idx_geo_tsurf_commune_geo_tsurf_commune ;

DROP INDEX IF EXISTS idx_proprietaire_ccocom;
DROP INDEX IF EXISTS idx_commune_ccocom;
DROP INDEX IF EXISTS idx_proprietaire_ccodro;
DROP INDEX IF EXISTS idx_proprietaire_comptecommunal;
DROP INDEX IF EXISTS idx_local00_parcelle;
DROP INDEX IF EXISTS idx_local00_voie;
DROP INDEX IF EXISTS idx_local10_local00;
DROP INDEX IF EXISTS idx_local10_comptecommunal;
DROP INDEX IF EXISTS idx_pevexoneration_pev;
DROP INDEX IF EXISTS idx_pevtaxation_pev;
DROP INDEX IF EXISTS idx_parcelle_voie;
DROP INDEX IF EXISTS idx_parcelle_comptecommunal;
DROP INDEX IF EXISTS idx_geo_unite_fonciere_id;
