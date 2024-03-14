.class public Lcom/ironsource/mediationsdk/logger/PublisherLogger;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "PublisherLogger.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "publisher"


# instance fields
.field private mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string v0, "publisher"

    .line 16
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V
    .registers 4

    const-string v0, "publisher"

    .line 21
    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/LogListener;->onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 29
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p3, :cond_a

    .line 34
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_a
    return-void
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    return-void
.end method
