select  usrusers.username, usrusers.fullname, usrusers.isactive, usrusers.koduser, usrusers.password, usrusers.tomeas, usrusers.idiotita from usrusers  WHERE ( usrusers.koduser <> -1 )  order by usrusers.username ASC