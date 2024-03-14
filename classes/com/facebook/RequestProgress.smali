.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    .line 34
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/RequestProgress;->threshold:J

    return-void
.end method


# virtual methods
.method addProgress(J)V
    .registers 7

    .line 48
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 50
    iget-wide p1, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_16

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_19

    .line 51
    :cond_16
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    :cond_19
    return-void
.end method

.method addToMax(J)V
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-void
.end method

.method getMaxProgress()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method getProgress()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method reportProgress()V
    .registers 10

    .line 60
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_35

    .line 61
    iget-object v0, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 62
    iget-wide v6, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_35

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_35

    .line 64
    iget-wide v4, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 66
    move-object v3, v0

    check-cast v3, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 68
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_27

    .line 69
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    goto :goto_31

    .line 71
    :cond_27
    new-instance v8, Lcom/facebook/RequestProgress$1;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_31
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    :cond_35
    return-void
.end method
