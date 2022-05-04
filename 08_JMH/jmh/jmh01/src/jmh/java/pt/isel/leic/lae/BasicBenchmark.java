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

	private static final List<String> listOfWords = Arrays.asList("Alfa", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", "Hotel", "India", "Juliett", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-ray", "Yankee", "Zulu");

	private static final Set<String> setOfWords = new HashSet<String>(listOfWords);

	//@Benchmark
	public void emptyMethod() {
		
	}

	@Benchmark
	public boolean findInList() {
		return listOfWords.contains("Mike");
	}

	@Benchmark
	public boolean findInSet() {
		return setOfWords.contains("Mike");
	}

}

