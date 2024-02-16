package com.smart.restaurant.util;

import java.time.format.DateTimeFormatter;
import org.springframework.format.datetime.DateFormatter;

/**
 * @author Rasel Ahmed
 */
public final class Util {
	
	/** New Line */
	public static String NEW_LINE = System.getProperty("line.separator");
	
	public static final String DATE_TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";

	public static final String DATE_PATTERN = "yyyy-MM-dd";
	
	private static DateTimeFormatter DATE_TIME_FORMATTER;
//	private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	
	private static DateTimeFormatter DATE_FORMATTER;
	private static DateFormatter DATE_FORMATTER2;
	
	public static DateTimeFormatter getDateTimeFormat()
	{
		if(DATE_TIME_FORMATTER == null)
			DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern(DATE_TIME_PATTERN);
		return DATE_TIME_FORMATTER;
	}
	
	public static DateTimeFormatter getDateFormat()
	{
		if(DATE_FORMATTER == null)
			DATE_FORMATTER = DateTimeFormatter.ofPattern(DATE_PATTERN);
		return DATE_FORMATTER;
	}
	
	public static DateFormatter getDateFormatter()
	{
		if(DATE_FORMATTER2 == null)
			DATE_FORMATTER2 = new DateFormatter(DATE_PATTERN);
		return DATE_FORMATTER2;
	}
}
