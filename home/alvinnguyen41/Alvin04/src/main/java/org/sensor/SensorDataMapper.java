package org.sensor;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class SensorDataMapper extends Mapper<Object, Text, Text, IntWritable> {
    private Text sensorId = new Text();
    private IntWritable temperature = new IntWritable();

    public void map(Object key, Text value, Context context) throws IOException, InterruptedException {
        String[] parts = value.toString().split(",");
        sensorId.set(parts[0]);
        temperature.set(Integer.parseInt(parts[1]));
        context.write(sensorId, temperature);
    }
}
