.class public Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;
.super Ljava/lang/Object;
.source "LogExtrasModelProvider.java"


# static fields
.field private static factory:Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;
    .registers 3

    .line 41
    sget-object v0, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->factory:Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;

    if-eqz v0, :cond_9

    .line 42
    invoke-interface {v0, p0, p1}, Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;->fromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;
    .registers 3

    .line 26
    sget-object v0, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->factory:Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;

    if-eqz v0, :cond_9

    .line 27
    invoke-interface {v0, p0, p1}, Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static initialize(Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;)V
    .registers 1

    .line 14
    sput-object p0, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->factory:Lcom/helpshift/logger/logmodels/ILogExtrasModelFactory;

    return-void
.end method
