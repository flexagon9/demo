CREATE OR REPLACE PROCEDURE hot_testrito_spc
AS
   v_variable   VARCHAR2 (500);
BEGIN
   v_variable := 'Accus� de r�ception';                                  --'Adresse de paiement:';

   v_variable := 'Facturation �: ';                                    --'Adresse de facturation:';
   v_variable := 'Livraison �:';                                         --'Adresse de livraison:';
   v_variable := NULL;                                                            --'Destinataire:';
   v_variable := 'Code client';
   v_variable := 'Accus� r�cept. no';                                            --'R�f�rence n�';
   v_variable := 'Entrep�t';
   v_variable := 'N� TVA';                                             --'M�thode d''acheminement';
   v_variable := 'Votre TVA';                                              --'Date d''acheminement';
   v_variable := 'Conditions de paiement';                                               --'N� TVA';
   v_variable := 'Devise';
   v_variable := 'Tarifs de livraison';                                                --'�ch�ance';
   v_variable := 'Frais de transport';
   v_variable := 'Notes ';
   v_variable := 'Code art.';                                                         --'R�f�rence';
   v_variable := NULL;
   v_variable := 'd�signation';                                                     --'Descriptif';
   v_variable := 'Quantit�';
   v_variable := NULL;
END;