#include <jni.h>
// #include <iostream>
#include <string>

using namespace std;

extern "C"
jstring Java_com_capsane_hellojni_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    // cout << "Hello";
    string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}
