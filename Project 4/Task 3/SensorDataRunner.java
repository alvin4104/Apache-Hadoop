package org.sensor;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;

public class SensorDataRunner {

    public static void main(String[] args) throws Exception {

        // Kiểm tra số lượng tham số đầu vào
        if (args.length != 2) {
            System.err.println("Usage: Sensor Data Analysis <input path> <output path>");
            System.exit(-1);
        }

        // Cấu hình job Hadoop
        Configuration conf = new Configuration();
        Job job = Job.getInstance(conf, "Sensor Data Analysis");

        // Đặt các lớp Mapper, Reducer và định dạng đầu vào/đầu ra
        job.setJarByClass(SensorDataRunner.class);
        job.setMapperClass(SensorDataMapper.class);
        job.setReducerClass(SensorDataReducer.class);

        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(DoubleWritable.class);

        // Đặt định dạng đầu vào và đầu ra
        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));

        job.setInputFormatClass(TextInputFormat.class);
        job.setOutputFormatClass(TextOutputFormat.class);

        // Chạy job Hadoop
        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}
