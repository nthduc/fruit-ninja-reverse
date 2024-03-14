.class public Lcom/helpshift/util/ErrorReportProvider;
.super Ljava/lang/Object;
.source "ErrorReportProvider.java"


# static fields
.field public static final BATCH_TIME:J = 0x5265c00L

.field public static final KEY_ACTIVE_CONVERSATION_ID:Ljava/lang/String; = "actconvid"

.field public static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_FUNNEL:Ljava/lang/String; = "funnel"

.field public static final KEY_NETWORK_TYPE:Ljava/lang/String; = "nt"

.field public static final KEY_THREAD_INFO:Ljava/lang/String; = "thread"

.field private static TAG:Ljava/lang/String; = "HS_ErrorReport"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorReportExtras(Landroid/content/Context;Ljava/lang/Thread;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Thread;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/logger/logmodels/ILogExtrasModel;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "appId"

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "nt"

    .line 42
    invoke-static {p0}, Lcom/helpshift/util/HelpshiftConnectionUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {}, Lcom/helpshift/providers/CrossModuleDataProvider;->getSupportDataProvider()Lcom/helpshift/providers/ISupportDataProvider;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_60

    const-string v1, ""

    if-nez p0, :cond_29

    move-object v2, v1

    goto :goto_2d

    .line 47
    :cond_29
    :try_start_29
    invoke-interface {p0}, Lcom/helpshift/providers/ISupportDataProvider;->getActionEvents()Ljava/lang/String;

    move-result-object v2

    :goto_2d
    if-eqz v2, :cond_38

    const-string v3, "funnel"

    .line 50
    invoke-static {v3, v2}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    if-nez p0, :cond_3b

    goto :goto_3f

    .line 53
    :cond_3b
    invoke-interface {p0}, Lcom/helpshift/providers/ISupportDataProvider;->getActiveConversationId()Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_3f
    invoke-static {v1}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "actconvid"

    .line 55
    invoke-static {p0, v1}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    const-string p0, "Unknown"

    if-eqz p1, :cond_56

    .line 61
    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_56
    const-string p1, "thread"

    .line 63
    invoke-static {p1, p0}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5f} :catch_60

    goto :goto_68

    :catch_60
    move-exception p0

    .line 66
    sget-object p1, Lcom/helpshift/util/ErrorReportProvider;->TAG:Ljava/lang/String;

    const-string v1, "Error creating error report"

    invoke-static {p1, v1, p0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    return-object v0
.end method
