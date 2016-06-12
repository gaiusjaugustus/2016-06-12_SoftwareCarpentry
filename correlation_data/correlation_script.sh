cat correlation_output1.txt correlation_output2.txt correlation_output3.txt correlation_output4.txt correlation_output5.txt > concatenated_file.txt
grep "Multiple" concatenated_file.txt > rsquared_results.txt
cat rsquared_results.txt | cut -d ',' -f2 | cut -d ':' -f2 > Adj_rsquared_values.txt
grep 'pgls' concatenated_file.txt > variable_names.txt
sed 's/=/,/' variable_names.txt | sed 's/~/,/' > variable_names.csv
cat variable_names.csv | cut -d ',' -f2-3 > variable_names_edit.csv
paste -d',' variable_names_edit.csv Adj_rsquared_values.txt > my_results_in_minutes.csv
rm Adj_rsquared_values.txt concatenated_file.txt rsquared_results.txt variable_names.csv variable_names.txt variable_names_edit.csv
