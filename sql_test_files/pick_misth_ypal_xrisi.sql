select  misth_ypal.kodypal, misth_ypal.kodxrisi, misth_ypal.surname, misth_ypal.name, misth_ypal.fathername from misth_ypal  WHERE misth_ypal.kodxrisi = :arg_kodxrisi  order by misth_ypal.surname ASC, misth_ypal.name ASC, misth_ypal.fathername ASC