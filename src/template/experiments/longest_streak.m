function [longest] = longest_streak(best_list)
        current_value = -1; % since best -1 does not exist
        current_counter = 0;
        best_sofar = 0;
        i = 1;
        while i <= size(best_list,2)
            t = best_list(1,i);
            if t ~= current_value
                if current_counter > best_sofar
                    best_sofar = current_counter;
                end
                current_value = t;
                current_counter = 1;
            else
                current_counter = current_counter + 1;
            end
            i = i + 1;
        end
        longest = best_sofar;
    end

