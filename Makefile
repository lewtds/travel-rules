can_visit_state.csv: main.dl facts/*
	souffle -F ./facts -D ./output "$<"

clean:
	@rm reverse.csv
	@rm -rf output