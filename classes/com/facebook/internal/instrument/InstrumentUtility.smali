.class public final Lcom/facebook/internal/instrument/InstrumentUtility;
.super Ljava/lang/Object;
.source "InstrumentUtility.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final ANALYSIS_REPORT_PREFIX:Ljava/lang/String; = "analysis_log_"

.field public static final CRASH_REPORT_PREFIX:Ljava/lang/String; = "crash_log_"

.field public static final CRASH_SHIELD_PREFIX:Ljava/lang/String; = "shield_log_"

.field public static final ERROR_REPORT_PREFIX:Ljava/lang/String; = "error_log_"

.field private static final FBSDK_PREFIX:Ljava/lang/String; = "com.facebook"

.field private static final INSTRUMENT_DIR:Ljava/lang/String; = "instrument"

.field public static final THREAD_CHECK_PREFIX:Ljava/lang/String; = "thread_check_log_"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 232
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    if-nez p0, :cond_9

    goto :goto_13

    .line 236
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstrumentReportDir()Ljava/io/File;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 275
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/io/File;

    const-string v2, "instrument"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return-object v0

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 78
    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_9
    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    if-eqz v0, :cond_29

    if-eq v0, p0, :cond_29

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget-object v4, p0, v3

    .line 82
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 80
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_9

    .line 86
    :cond_29
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSDKRelatedException(Ljava/lang/Throwable;)Z
    .registers 8
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    if-eqz v1, :cond_2c

    if-eq v1, p0, :cond_2c

    .line 104
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_27

    aget-object v4, p0, v3

    .line 105
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 103
    :cond_27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    :cond_2c
    return v0
.end method

.method public static listExceptionAnalysisReportFiles()[Ljava/io/File;
    .registers 3

    .line 124
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 126
    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 129
    :cond_a
    new-instance v2, Lcom/facebook/internal/instrument/InstrumentUtility$1;

    invoke-direct {v2}, Lcom/facebook/internal/instrument/InstrumentUtility$1;-><init>()V

    .line 130
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_18

    .line 137
    :cond_16
    new-array v0, v1, [Ljava/io/File;

    :goto_18
    return-object v0
.end method

.method public static listExceptionReportFiles()[Ljava/io/File;
    .registers 3

    .line 150
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 152
    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 155
    :cond_a
    new-instance v2, Lcom/facebook/internal/instrument/InstrumentUtility$2;

    invoke-direct {v2}, Lcom/facebook/internal/instrument/InstrumentUtility$2;-><init>()V

    .line 156
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_18

    .line 166
    :cond_16
    new-array v0, v1, [Ljava/io/File;

    :goto_18
    return-object v0
.end method

.method public static readFile(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 178
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-nez p0, :cond_a

    goto :goto_24

    .line 183
    :cond_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    :try_start_f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 187
    invoke-static {v0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    return-object v2

    :catch_1e
    nop

    if-eqz p1, :cond_24

    .line 191
    invoke-static {p0}, Lcom/facebook/internal/instrument/InstrumentUtility;->deleteFile(Ljava/lang/String;)Z

    :cond_24
    :goto_24
    return-object v1
.end method

.method public static sendReports(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V
    .registers 6

    .line 242
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 246
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_2b

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 253
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 256
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "%s/instruments"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p0, p1, v0, p2}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    :catch_2b
    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 206
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    if-nez p1, :cond_b

    goto :goto_1f

    .line 211
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    :try_start_10
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 216
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    :goto_1f
    return-void
.end method
