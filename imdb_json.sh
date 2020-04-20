
#sed -i '1d' file.csv								# this should remove the first line
#sed -i 's/^[0-9]*,//' file.csv							# this will remove everything up to the first ","
# skipped  #sed -i 's/^/{"id":####,"imdb_id":"/' file.csv			# this will add the prefix with #### as the number
#sed -i 's/\(.\{9\}\).\{24\}/\1","title":"/' file2.csv				# this will start at 9th char and insert ","title":" then remove 24 char
#sed -i 's/\,https.*/"},/' file2.csv						# this will remove everything after ",https" and replace it with ""},"
#sed -i 's/^/,"imdb_id":"/' file2.csv						# this will only add ","imdb_id":"" to the begining
# skipped #awk -i '{printf("%04d%s\n", NR, $0)}' file2.csv			# this will add the number to the begaining
# skipped #awk -e '{printf("%04d%s\n", NR, $0)}' movielist1.csv > newfile.csv	# this will add the number 0001 at the begaining and make a new file
#sed -i 's/^/{"id":/' file2.csv							# this will add "{"id":" to the begaining
#sed -i '1 i\[' file2.csv							# this will insert "[" to the first line
#sed -i "\$a]" file2.csv							# this will insert "]" to the end of the last line

# toggle the -i with -e to echo your file for testing




sed -i '1d' imdb_list.csv
sed -i 's/^[0-9]*,//' imdb_list.csv
sed -i 's/\(.\{9\}\).\{24\}/\1","title":"/' imdb_list.csv
sed -i 's/\,https.*/"},/' imdb_list.csv
sed -i 's/^/,"imdb_id":"/' imdb_list.csv
awk -e '{printf("%0d%s\n", NR, $0)}' imdb_list.csv> imdb_list.json
sed -i 's/^/{"id":/' imdb_list.json
sed -i '1 i\[' imdb_list.json
sed -i "\$a]" imdb_list.json

