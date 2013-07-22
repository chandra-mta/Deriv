; see deahk_read x=mta_db_get_add(outfile='deahk_elec.fits',ter_cols='DEAHK17_avg,DEAHK18_avg,DEAHK19_avg,DEAHK20_avg,DEAHK25_avg,DEAHK26_avg,DEAHK27_avg,DEAHK28_avg,DEAHK29_avg,DEAHK30_avg,DEAHK31_avg,DEAHK32_avg,DEAHK33_avg,DEAHK34_avg,DEAHK35_avg,DEAHK36_avg,DEAHK37_avg,DEAHK38_avg,DEAHK39_avg,DEAHK40_avg')
; see deahk_read x=mta_db_get_add(outfile='deahk_temp.fits',ter_cols='DEAHK1_avg,DEAHK2_avg,DEAHK3_avg,DEAHK4_avg,DEAHK5_avg,DEAHK6_avg,DEAHK7_avg,DEAHK8_avg,DEAHK9_avg,DEAHK10_avg,DEAHK11_avg,DEAHK12_avg,DEAHK13_avg,DEAHK15_avg,DEAHK16_avg')
x=deahk_read('deahk_elec')
dtrend,'deahk_elec.fits',wsmooth=30
x=deahk_read('deahk_temp')
dtrend,'deahk_temp.fits',sig=3,wsmooth=30

tmp_save,'deahk_temp.fits','deahk_temp_att.fits',n_out=-1,merge='pt_suncent.fits'
tmp_save,'deahk_temp.fits','deahk_temp_alt.fits',n_out=-1,merge='pt_alt.fits'
dtrend,'deahk_temp_att.fits',xax='pt_suncent_ang', ccode='time'
dtrend,'deahk_temp_alt.fits',xax='sc_altitude', ccode='time'


exit
