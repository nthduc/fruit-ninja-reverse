.class public Lbacktrace/io/backtrace_unity_android_plugin/BacktraceCrashHelper;
.super Ljava/lang/Object;
.source "BacktraceCrashHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InternalCall()V
    .registers 2

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    const/4 v1, 0x5

    .line 31
    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BacktraceCrashHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_14
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method public static StartAnr()V
    .registers 2

    const-string v0, "BacktraceCrashHelper"

    const-string v1, "Starting ANR"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    new-instance v1, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceCrashHelper$1;

    invoke-direct {v1}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceCrashHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static ThrowNativeException()V
    .registers 2

    const-string v0, "BacktraceCrashHelper"

    const-string v1, "Trying to throw native exception"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceCrashHelper;->InternalCall()V

    return-void
.end method
