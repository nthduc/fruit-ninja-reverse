.class public Lcom/vungle/warren/tasks/SendReportsJob;
.super Ljava/lang/Object;
.source "SendReportsJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field private static final DEFAULT_DELAY:J = 0x7530L

.field static final TAG:Ljava/lang/String; = "com.vungle.warren.tasks.SendReportsJob"


# instance fields
.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private vungleApiClient:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vungle/warren/tasks/SendReportsJob;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 31
    iput-object p2, p0, Lcom/vungle/warren/tasks/SendReportsJob;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    return-void
.end method

.method public static makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;
    .registers 4

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sendAll"

    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    new-instance p0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 v0, 0x5

    .line 40
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const-wide/16 v0, 0x7530

    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 12

    const/4 v0, 0x0

    const-string v1, "sendAll"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 48
    sget-object v1, Lcom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    const-string v2, "SendReportsJob: onRunJob"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1d

    .line 53
    iget-object p1, p0, Lcom/vungle/warren/tasks/SendReportsJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository;->loadAllReportToSend()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_29

    .line 55
    :cond_1d
    iget-object p1, p0, Lcom/vungle/warren/tasks/SendReportsJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository;->loadReadyOrFailedReportToSend()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_29
    const/4 v1, 0x1

    if-nez p1, :cond_2d

    return v1

    .line 61
    :cond_2d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Report;

    const/4 v4, 0x3

    .line 63
    :try_start_3e
    iget-object v5, p0, Lcom/vungle/warren/tasks/SendReportsJob;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->toReportBody()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vungle/warren/VungleApiClient;->reportAd(Lcom/google/gson/JsonObject;)Lcom/vungle/warren/network/Call;

    move-result-object v5

    invoke-interface {v5}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lcom/vungle/warren/network/Response;->code()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5a

    .line 65
    iget-object v5, p0, Lcom/vungle/warren/tasks/SendReportsJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5, v3}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V

    goto :goto_31

    .line 67
    :cond_5a
    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 68
    iget-object v6, p0, Lcom/vungle/warren/tasks/SendReportsJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 69
    iget-object v3, p0, Lcom/vungle/warren/tasks/SendReportsJob;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_31

    .line 71
    invoke-static {v0}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_79} :catch_7a
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3e .. :try_end_79} :catch_79

    :catch_79
    return v1

    :catch_7a
    move-exception p2

    .line 77
    sget-object v0, Lcom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    const-string v2, "SendReportsJob: IOEx"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Report;

    .line 79
    invoke-virtual {v0, v4}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 81
    :try_start_95
    iget-object v2, p0, Lcom/vungle/warren/tasks/SendReportsJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_9a
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_95 .. :try_end_9a} :catch_9b

    goto :goto_86

    :catch_9b
    return v1

    .line 86
    :cond_9c
    sget-object p1, Lcom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :cond_a7
    return v0
.end method
