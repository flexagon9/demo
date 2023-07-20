CREATE OR REPLACE PROCEDURE hot_testrito_spc
AS
   v_variable   VARCHAR2 (500);
BEGIN
   v_variable := 'Accusé de réception';                                  --'Adresse de paiement:';

   v_variable := 'Facturation à: ';                                    --'Adresse de facturation:';
   v_variable := 'Livraison à:';                                         --'Adresse de livraison:';
   v_variable := NULL;                                                            --'Destinataire:';
   v_variable := 'Code client';
   v_variable := 'Accusé récept. no';                                            --'Référence n°';
   v_variable := 'Entrepôt';
   v_variable := 'N° TVA';                                             --'Méthode d''acheminement';
   v_variable := 'Votre TVA';                                              --'Date d''acheminement';
   v_variable := 'Conditions de paiement';                                               --'N° TVA';
   v_variable := 'Devise';
   v_variable := 'Tarifs de livraison';                                                --'Échéance';
   v_variable := 'Frais de transport';
   v_variable := 'Notes ';
   v_variable := 'Code art.';                                                         --'Référence';
   v_variable := NULL;
   v_variable := 'désignation';                                                     --'Descriptif';
   v_variable := 'Quantité';
   v_variable := NULL;
END;