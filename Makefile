output/can_visit_state_formatted.csv: main.dl facts/*
	souffle -F ./facts -D ./output "$<"

clean:
	@rm output/*.csv