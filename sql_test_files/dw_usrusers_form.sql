select  usrusers.koduser, usrusers.username, usrusers.fullname, usrusers.password, usrusers.isactive, usrusers.tomeas, usrusers.idiotita from usrusers  WHERE usrusers.koduser = :arg_koduser  