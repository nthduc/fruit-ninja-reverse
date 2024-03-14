.class public Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;
.super Ljava/lang/Thread;
.source "BacktraceANRWatchdog.java"


# static fields
.field private static final transient DEFAULT_ANR_TIMEOUT:I = 0x1388

.field private static final transient LOG_TAG:Ljava/lang/String; = "BacktraceANRWatchdog"

.field private static _instance:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;


# instance fields
.field private final debug:Z

.field private gameObjectName:Ljava/lang/String;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private methodName:Ljava/lang/String;

.field private volatile shouldStop:Z

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->mainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->shouldStop:Z

    .line 66
    sget-object v1, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Initializing ANR watchdog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p2, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->methodName:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->gameObjectName:Ljava/lang/String;

    const/16 p1, 0x1388

    .line 69
    iput p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->timeout:I

    .line 70
    iput-boolean v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->debug:Z

    .line 71
    sput-object p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->_instance:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;

    .line 72
    invoke-virtual {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->start()V

    return-void
.end method

.method public static printStackTrace([Ljava/lang/StackTraceElement;Ljava/io/PrintWriter;)V
    .registers 5

    .line 124
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 125
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static stackTraceToString([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 120
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v1}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/io/PrintWriter;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public NotifyUnityAboutANR()V
    .registers 4

    .line 113
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->stackTraceToString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->gameObjectName:Ljava/lang/String;

    iget-object v2, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->methodName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 5

    .line 80
    :goto_0
    iget-boolean v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->shouldStop:Z

    if-nez v0, :cond_7b

    invoke-virtual {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR WATCHDOG - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;-><init>(II)V

    .line 84
    iget-object v1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog$1;

    invoke-direct {v2, p0, v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog$1;-><init>(Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :try_start_3c
    iget v1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->timeout:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_42} :catch_73

    .line 96
    invoke-virtual {v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->tickPrivateCounter()V

    .line 98
    invoke-virtual {v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->getCounter()I

    move-result v1

    invoke-virtual {v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->getPrivateCounter()I

    move-result v0

    if-ne v1, v0, :cond_57

    .line 99
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ANR is not detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_57
    iget-boolean v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->debug:Z

    if-eqz v0, :cond_6f

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 104
    :cond_67
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ANR detected but will be ignored because debug mode is on and connected debugger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_6f
    invoke-virtual {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->NotifyUnityAboutANR()V

    goto :goto_0

    :catch_73
    move-exception v0

    .line 93
    sget-object v1, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Thread is interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7b
    return-void
.end method

.method public stopMonitoringAnr()V
    .registers 3

    .line 130
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop monitoring ANR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->shouldStop:Z

    return-void
.end method
