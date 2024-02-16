package com.smart.restaurant.config;

import java.io.IOException;
import java.time.LocalDate;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.smart.restaurant.util.Util;

/**
 * @author Rasel Ahmed
 */
public class LocalDateDeserializer extends JsonDeserializer<LocalDate> {

    @Override
    public LocalDate deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException
    {
//    	log.warn(jsonParser.getText());
        return LocalDate.parse(jsonParser.getText(), Util.getDateFormat());
    }
}