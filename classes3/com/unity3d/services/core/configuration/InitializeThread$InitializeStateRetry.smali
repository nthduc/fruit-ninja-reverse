.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateRetry"
.end annotation


# instance fields
.field _delay:I

.field _state:Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;I)V
    .registers 4

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 472
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;

    .line 473
    iput p2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .registers 5

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads init: retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 480
    :try_start_1b
    iget v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception v0

    const-string v1, "Init retry interrupted"

    .line 482
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 485
    :goto_2c
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;

    return-object v0
.end method
