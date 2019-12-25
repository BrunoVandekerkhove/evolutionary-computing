function [chromosomes,cost_values] = reinsTSP(SURVIVOR_SELECTION, chromosomes, selected, ...
    cost_values, selected_cost_values)
    [chromosomes,cost_values] = feval(SURVIVOR_SELECTION, chromosomes, selected, ...
        cost_values, selected_cost_values);
end