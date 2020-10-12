package com.speakplusplus.onlinequizwebservice.utils;

import org.junit.jupiter.api.Test;

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