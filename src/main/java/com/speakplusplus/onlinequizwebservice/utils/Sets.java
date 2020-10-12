package com.speakplusplus.onlinequizwebservice.utils;

import com.speakplusplus.onlinequizwebservice.model.Permission;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class Sets {

    public static <T extends Object> Set<T> newHashSet(T... objs) {
        Set<T> set = new HashSet<>();
        Collections.addAll(set, objs);
        return set;
    }

}
