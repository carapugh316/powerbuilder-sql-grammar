select  misth_zpkrat.desckrat, misth_final_ypal_krat.poso, misth_final_ypal_krat.notes, sum(misth_final_ypal_krat.poso) as sum_poso from misth_final_ypal_krat, misth_zpkrat, misth_final, misth_final_ypal WHERE misth_final_ypal_krat.kodkrat = misth_zpkrat.kodkrat AND misth_final_ypal_krat.kodxrisi = misth_zpkrat.kodxrisi AND misth_final_ypal.kodfinal = misth_final_ypal_krat.kodfinal AND misth_final_ypal.kodypal = misth_final_ypal_krat.kodypal AND misth_final_ypal.kodxrisi = misth_final_ypal_krat.kodxrisi AND misth_final.kodfinal = misth_final_ypal.kodfinal AND misth_final.kodxrisi = misth_final_ypal.kodxrisi AND ( misth_final_ypal_krat.kodxrisi = :arg_kodxrisi and misth_final_ypal_krat.kodypal = :arg_kodypal and misth_final_ypal.plirdate >= :arg_fromdate and misth_final_ypal.plirdate <= :arg_todate  ) order by misth_final_ypal_krat.aa ASC