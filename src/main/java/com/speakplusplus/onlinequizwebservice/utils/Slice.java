package com.speakplusplus.onlinequizwebservice.utils;

public class Slice {

    private int from;
    private int to;

    public Slice() {
    }

    public Slice(int from) {
        this.from = from;
    }

    public Slice(int from, int to) {
        this.from = from;
        this.to = to;
    }

    public int getFrom() {
        return from;
    }

    public void setFrom(int from) {
        this.from = from;
    }

    public int getTo() {
        return to;
    }

    public void setTo(int to) {
        this.to = to;
    }

    @Override
    public String toString() {
        return "Slice{" +
            "from=" + from +
            ", to=" + to +
            '}';
    }
}
