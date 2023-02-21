-include output/can_visit_state_formatted.d

output/can_visit_state_formatted.csv: facts/*
	# The --preprocessor flag is used to generate source file dependency graph so that Make knows to recompile when
	# any child source file has changed.
	souffle \
	-F ./facts \
	-D ./output \
	--preprocessor='mcpp -W0 -MMD -MT output/can_visit_state_formatted.csv -MF output/can_visit_state_formatted.d' \
	"main.dl"

clean:
	-rm output/*.csv