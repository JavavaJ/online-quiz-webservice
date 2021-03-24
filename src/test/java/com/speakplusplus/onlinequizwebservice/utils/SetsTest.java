package com.speakplusplus.onlinequizwebservice.utils;

import org.junit.jupiter.api.Test;
import org.springframework.security.core.Authentication;

import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.assertThat;


class SetsTest {

    @Test
    void testNewHashSet() {
        String one = "one";
        String two = "two";

        Set<String> set = Sets.newHashSet(one, two);

        assertThat(set).isNotNull();
        assertThat(set.size()).isGreaterThan(0);
        assertThat(set).contains("one", "two");
    }

    @Test
    public void timePlayground() {


        Instant now = Instant.now();
//        2021-03-24T21:28:46.702Z

        System.out.println(now);

        ZonedDateTime zonedDateTime = now.atZone(ZoneId.systemDefault());
//        2021-03-25T00:22:24.055+03:00[Europe/Moscow]


        OffsetDateTime offsetDateTime = OffsetDateTime.now();
        System.out.println(offsetDateTime);
//        2021-03-25T00:26:46.488+03:00
    }
}