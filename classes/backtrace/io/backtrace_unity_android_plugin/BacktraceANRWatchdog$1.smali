.class Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog$1;
.super Ljava/lang/Object;
.source "BacktraceANRWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;

.field final synthetic val$threadWatcher:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;


# direct methods
.method constructor <init>(Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog$1;->this$0:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog;

    iput-object p2, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog$1;->val$threadWatcher:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 87
    iget-object v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceANRWatchdog$1;->val$threadWatcher:Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;

    invoke-virtual {v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->tickCounter()V

    return-void
.end method
