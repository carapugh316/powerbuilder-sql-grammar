select  misth_ypal.surname, misth_ypal.name, misth_ypal.fathername, misth_ypal.mitroo, misth_ypal.adt, misth_ypal.afm, misth_ypal.doy, misth_ypal.bankno, misth_ypal.bank, misth_ypal.childs, misth_ypal.prostmeli, misth_ypal.klimakio, misth_ypal.bathmos, misth_ypal.klados, misth_ypal.birthdate, misth_ypal.hireddate, misth_ypal.kodypal, misth_ypal.kodxrisi, misth_zpidikot.descidikot, misth_zpoikog.descoikog, misth_zptmima.desctmima, misth_zpthesi.descthesi, misth_zptamio.desctamio from misth_ypal, misth_zpidikot, misth_zpoikog, misth_zptmima, misth_zpthesi, misth_zptamio WHERE misth_ypal.kodxrisi = misth_zpidikot.kodxrisi AND misth_ypal.kodidikot = misth_zpidikot.kodidikot AND misth_ypal.kodxrisi = misth_zpoikog.kodxrisi AND misth_ypal.kodoikog = misth_zpoikog.kodoikog AND misth_ypal.kodxrisi = misth_zptmima.kodxrisi AND misth_ypal.kodtmima = misth_zptmima.kodtmima AND misth_ypal.kodxrisi = misth_zpthesi.kodxrisi AND misth_ypal.kodthesi = misth_zpthesi.kodthesi AND misth_ypal.kodxrisi = misth_zptamio.kodxrisi AND misth_ypal.kodtamio = misth_zptamio.kodtamio AND ( misth_ypal.kodxrisi = :arg_kodxrisi  ) 