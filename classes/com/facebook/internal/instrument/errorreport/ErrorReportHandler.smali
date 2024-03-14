.class public final Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;
.super Ljava/lang/Object;
.source "ErrorReportHandler.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_ERROR_REPORT_NUM:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable()V
    .registers 1

    .line 50
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    invoke-static {}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->sendErrorReports()V

    :cond_9
    return-void
.end method

.method public static listErrorReportFiles()[Ljava/io/File;
    .registers 2

    .line 106
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->getInstrumentReportDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/io/File;

    return-object v0

    .line 111
    :cond_a
    new-instance v1, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$3;

    invoke-direct {v1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save(Ljava/lang/String;)V
    .registers 2

    .line 42
    :try_start_0
    new-instance v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-direct {v0, p0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->save()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public static sendErrorReports()V
    .registers 7

    .line 61
    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 64
    :cond_7
    invoke-static {}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->listErrorReportFiles()[Ljava/io/File;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_28

    aget-object v5, v0, v4

    .line 67
    new-instance v6, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-direct {v6, v5}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;-><init>(Ljava/io/File;)V

    .line 68
    invoke-virtual {v6}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->isValid()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 69
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 72
    :cond_28
    new-instance v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 82
    :goto_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_49

    const/16 v2, 0x3e8

    if-ge v3, v2, :cond_49

    .line 83
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 86
    :cond_49
    new-instance v2, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$2;

    invoke-direct {v2, v1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$2;-><init>(Ljava/util/ArrayList;)V

    const-string v1, "error_reports"

    invoke-static {v1, v0, v2}, Lcom/facebook/internal/instrument/InstrumentUtility;->sendReports(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method
