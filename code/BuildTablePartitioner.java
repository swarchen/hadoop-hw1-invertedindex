package invertedindex;

import java.lang.Character;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.IntWritable;

import org.apache.hadoop.mapred.JobConf;
import org.apache.hadoop.mapred.Partitioner;

public class BuildTablePartitioner implements Partitioner<TableKey, TableValue> {
	
	public void configure(JobConf job) {
	}

	
	public int getPartition(TableKey key, TableValue value, int numPartitions) {

		String s = key.getWord().substring(0,1);
		int num;
		
		if(s.compareTo("g")<=0) num = 0;
		else					num = 1;
		return num;
	}
}
