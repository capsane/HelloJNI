package com.capsane.hellojni;

/**
 * @author capsane
 * Created by capsane on 18-1-17.
 */

public class Native{
    static{
        System.loadLibrary("simp");
    }
    static native int sub(int a, int b);
    static native int add(int a, int b);
}
