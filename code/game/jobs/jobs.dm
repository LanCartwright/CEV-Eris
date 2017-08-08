
var/const/ENGSEC			=(1<<0)

var/const/CAPTAIN			=(1<<0)
var/const/IHC				=(1<<1)
var/const/GUNSERG			=(1<<2)
var/const/INSPECTOR			=(1<<3)
var/const/IHOPER			=(1<<4)
var/const/MEDSPEC			=(1<<5)
var/const/EXULTANT			=(1<<6)
var/const/TECHNOMANCER		=(1<<7)
var/const/AI				=(1<<8)
var/const/CYBORG			=(1<<9)


var/const/MEDSCI			=(1<<1)

var/const/MEO				=(1<<0)
var/const/SCIENTIST			=(1<<1)
var/const/CHEMIST			=(1<<2)
var/const/MBO				=(1<<3)
var/const/DOCTOR			=(1<<4)
var/const/PSYCHIATRIST		=(1<<5)
var/const/ROBOTICIST		=(1<<6)
var/const/PARAMEDIC			=(1<<7)


var/const/CIVILIAN			=(1<<2)

var/const/FIRSTOFFICER		=(1<<0)
var/const/BARTENDER			=(1<<1)
var/const/BOTANIST			=(1<<2)
var/const/CHEF				=(1<<3)
var/const/JANITOR			=(1<<4)
var/const/MERCHANT			=(1<<5)
var/const/GUILDTECH			=(1<<6)
var/const/MINER				=(1<<7)
var/const/CHAPLAIN			=(1<<8)
var/const/ACTOR				=(1<<9)
var/const/ASSISTANT			=(1<<10)


var/list/assistant_occupations = list(
)


var/list/command_positions = list(
	JOB_CAPTAIN,
	JOB_FIRST_OFFICER,
	JOB_IH_COMM,
	JOB_EXULTANT,
	JOB_MERCHANT,
	JOB_MEO,
	JOB_MBO
)


var/list/engineering_positions = list(
	JOB_EXULTANT,
	JOB_TECHNOMANCER,
)


var/list/medical_positions = list(
	JOB_MBO,
	JOB_DOCTOR,
	JOB_PSYCH,
	JOB_CHEMIST,
	JOB_PARAMEDIC
)


var/list/science_positions = list(
	JOB_MEO,
	JOB_SCIENTIST,
	JOB_ROBOTICIST,
)

//BS12 EDIT
var/list/cargo_positions = list(
	JOB_MERCHANT,
	JOB_CARGO,
	JOB_MINER
)

var/list/civilian_positions = list(
	JOB_FIRST_OFFICER,
	JOB_BARTENDER,
	JOB_GARDENER,
	JOB_CHEF,
	JOB_JANITOR,
	JOB_PREACHER,
	JOB_ASSISTANT
)


var/list/security_positions = list(
	JOB_IH_COMM,
	JOB_IH_GUN,
	JOB_IH_MED,
	JOB_IH_INSP,
	JOB_IH_OPER
)


var/list/nonhuman_positions = list(
	JOB_AI,
	"Cyborg",
	"pAI"
)


/proc/guest_jobbans(var/job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations
