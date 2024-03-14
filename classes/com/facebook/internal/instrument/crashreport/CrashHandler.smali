.class public Lcom/facebook/internal/instrument/crashreport/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_CRASH_REPORT_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "com.facebook.internal.instrument.crashreport.CrashHandler"

.field private static instance:Lcom/facebook/internal/instrument/crashreport/CrashHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1    # Ljava/lang/Thread$UncaughtExceptionHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static declared-synchronized enable()V
    .registers 3

    const-class v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    monitor-enter v0

    .line 66
    :try_start_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 67
    invoke-static {}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->sendExceptionReports()V

    .line 69
    :cond_c
    sget-object v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->instance:Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    if-eqz v1, :cond_19

    .line 70
    sget-object v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->TAG:Ljava/lang/String;

    const-string v2, "Already enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2b

    .line 71
    monitor-exit v0

    return-void

    .line 73
    :cond_19
    :try_start_19
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    invoke-direct {v2, v1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v2, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->instance:Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    .line 75
    sget-object v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->instance:Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2b

    .line 76
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static sendExceptionReports()V
    .registers 7

    .line 84
    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 87
    :cond_7
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->listExceptionReportFiles()[Ljava/io/File;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_27

    aget-object v5, v0, v4

    .line 90
    invoke-static {v5}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->load(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/facebook/internal/instrument/InstrumentData;->isValid()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 92
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 95
    :cond_27
    new-instance v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler$1;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 105
    :goto_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_47

    const/4 v2, 0x5

    if-ge v3, v2, :cond_47

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 109
    :cond_47
    new-instance v2, Lcom/facebook/internal/instrument/crashreport/CrashHandler$2;

    invoke-direct {v2, v1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$2;-><init>(Ljava/util/ArrayList;)V

    const-string v1, "crash_reports"

    invoke-static {v1, v0, v2}, Lcom/facebook/internal/instrument/InstrumentUtility;->sendReports(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 56
    invoke-static {p2}, Lcom/facebook/internal/instrument/InstrumentUtility;->isSDKRelatedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 57
    invoke-static {p2}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->execute(Ljava/lang/Throwable;)V

    .line 58
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {p2, v0}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->build(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/instrument/InstrumentData;->save()V

    .line 60
    :cond_12
    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    .line 61
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method
