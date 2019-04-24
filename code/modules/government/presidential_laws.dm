// Laws can be set by the president, here.

#define CIVIL_OFFENSE "Civil Offense"
#define CRIMINAL_OFFENSE "Criminal Offense"

var/list/presidential_laws = list()

/proc/instantiate_laws()
	for(var/instance in subtypesof(/datum/president/laws/law))
		new instance

/datum/president/laws/law
	var/id
	name = "Sample Law"
	desc = "Sample law text."
	
	var/fine = 40 //in credits
	var/class = CIVIL_OFFENSE
	var/cell_time = 50 // how long the jail time should be
	
	
  	
