.class final Lbacktrace/io/backtrace_unity_android_plugin/BacktraceCrashHelper$1;
.super Ljava/lang/Object;
.source "BacktraceCrashHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbacktrace/io/backtrace_unity_android_plugin/BacktraceCrashHelper;->StartAnr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x2710

    .line 16
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a
    return-void
.end method
