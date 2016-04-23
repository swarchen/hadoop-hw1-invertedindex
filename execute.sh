# Do not uncomment these lines to directly execute the script
# Modify the path to fit your need before using this script
#hdfs dfs -rm -r /user/TA/WordCount/Output/
#hadoop jar WordCount.jar wordcount.WordCount /user/shared/WordCount/Input /user/TA/WordCount/Output
#hdfs dfs -cat /user/TA/WordCount/Output/part-*
input_dir=/user/s104061516/InvertedIndex/inputdata
output_dir=/user/s104061516/InvertedIndex/output
hdfs dfs -rm -r $output_dir
hadoop jar InvertedIndex.jar part3.InvertedIndex  $input_dir $output_dir
hdfs dfs -cat $output_dir/part-*
