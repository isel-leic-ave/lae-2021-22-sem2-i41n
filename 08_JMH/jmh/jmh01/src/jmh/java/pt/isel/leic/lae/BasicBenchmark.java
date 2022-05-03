package pt.isel.leic.lae;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.infra.Blackhole;

import java.util.concurrent.TimeUnit;
import java.util.*;
import java.util.function.*;

@BenchmarkMode(Mode.AverageTime)
@Fork(value = 1, warmups = 1)
@Warmup(iterations = 3, time = 5, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 5, timeUnit = TimeUnit.SECONDS)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
public class BasicBenchmark {

	@Benchmark
	public void emptyMethod() {
		
	}

}

