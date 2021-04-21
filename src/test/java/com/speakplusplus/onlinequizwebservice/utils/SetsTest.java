package com.speakplusplus.onlinequizwebservice.utils;

import org.junit.jupiter.api.Test;
import org.springframework.security.core.Authentication;

import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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

}