select  usrmembers.kodgroup, usrmembers.koduser, usrusers.username, usrusers.fullname, usrusers.isactive from usrmembers, usrusers WHERE usrmembers.koduser = usrusers.koduser AND ( usrmembers.kodgroup = :arg_kodgroup  ) order by usrusers.username ASC