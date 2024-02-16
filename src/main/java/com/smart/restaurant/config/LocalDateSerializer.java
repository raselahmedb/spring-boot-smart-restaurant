package com.smart.restaurant.config;

import java.io.IOException;
import java.time.LocalDate;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.smart.restaurant.util.Util;

/**
 * @author Rasel Ahmed
 */
public class LocalDateSerializer extends JsonSerializer<LocalDate>
{
    @Override
    public void serialize(LocalDate localDate, JsonGenerator jsonGenerator,
                          SerializerProvider serializerProvider) throws IOException {
    	jsonGenerator.writeString(localDate.format(Util.getDateFormat()));
    }
}