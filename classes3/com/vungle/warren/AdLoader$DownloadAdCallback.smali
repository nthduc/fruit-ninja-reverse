.class Lcom/vungle/warren/AdLoader$DownloadAdCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/AdLoader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;


# direct methods
.method private constructor <init>(Lcom/vungle/warren/AdLoader;)V
    .registers 2

    .line 1055
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V
    .registers 3

    .line 1055
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;)V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1059
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    monitor-enter v0

    .line 1060
    :try_start_3
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1, p1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    if-nez v1, :cond_3b

    .line 1064
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    monitor-exit v0

    return-void

    .line 1068
    :cond_3b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x0

    goto :goto_55

    :cond_43
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    .line 1070
    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2, p2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    :goto_55
    if-nez v2, :cond_63

    .line 1072
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    monitor-exit v0

    return-void

    .line 1076
    :cond_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/model/Advertisement;->setFinishedDownloadingTime(J)V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_85

    .line 1079
    :try_start_6a
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_74
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_6a .. :try_end_74} :catch_79
    .catchall {:try_start_6a .. :try_end_74} :catchall_85

    .line 1084
    :try_start_74
    invoke-virtual {p0, p1, v1, v2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    .line 1085
    monitor-exit v0

    return-void

    .line 1081
    :catch_79
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    monitor-exit v0

    return-void

    :catchall_85
    move-exception p1

    .line 1085
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1    # Lcom/vungle/warren/error/VungleException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1126
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    monitor-enter v0

    .line 1127
    :try_start_3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$1900(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    .line 1128
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->sequence:Lcom/vungle/warren/OperationSequence;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$400(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/vungle/warren/OperationSequence;->reportFinished(Ljava/lang/String;)V

    .line 1130
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2, p2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    if-nez p3, :cond_2e

    const/4 p3, 0x0

    goto :goto_40

    .line 1131
    :cond_2e
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    .line 1133
    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    const-class v4, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, p3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/model/Advertisement;
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_15e

    :goto_40
    const/16 v3, 0x1a

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v2, :cond_76

    if-eqz p3, :cond_57

    .line 1138
    :try_start_48
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_51
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_15e

    goto :goto_57

    .line 1140
    :catch_52
    :try_start_52
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :cond_57
    :goto_57
    if-eqz v1, :cond_6f

    .line 1145
    iget-object p3, v1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    .line 1146
    invoke-interface {v1, p2, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_5f

    .line 1149
    :cond_6f
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # invokes: Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V
    invoke-static {p1, p2, v5}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 1150
    monitor-exit v0

    return-void

    .line 1157
    :cond_76
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_9f

    const/16 v7, 0xe

    if-eq v2, v7, :cond_9f

    const/16 v7, 0x14

    if-eq v2, v7, :cond_9c

    const/16 v7, 0x19

    if-eq v2, v7, :cond_9f

    const/16 v7, 0x16

    if-eq v2, v7, :cond_9c

    const/16 v7, 0x17

    if-eq v2, v7, :cond_92

    goto :goto_98

    :cond_92
    if-eqz p3, :cond_98

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_a1

    :cond_98
    :goto_98
    const/4 v2, 0x0

    :goto_99
    const/4 v7, 0x0

    :goto_9a
    const/4 v8, 0x4

    goto :goto_a1

    :cond_9c
    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_9a

    :cond_9f
    const/4 v2, 0x1

    goto :goto_99

    :goto_a1
    if-eqz v1, :cond_a7

    .line 1177
    iget-boolean v9, v1, Lcom/vungle/warren/AdLoader$Operation;->logError:Z

    if-eqz v9, :cond_c4

    .line 1178
    :cond_a7
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load Ad/Assets for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Cause : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    :cond_c4
    iget-object v9, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # invokes: Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V
    invoke-static {v9, p2, v5}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V
    :try_end_c9
    .catchall {:try_start_52 .. :try_end_c9} :catchall_15e

    if-eqz v1, :cond_15c

    .line 1185
    :try_start_cb
    iget v9, v1, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    const-wide/16 v10, 0x2

    if-nez v9, :cond_100

    .line 1186
    iget v2, v1, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    iget v5, v1, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    if-ge v2, v5, :cond_135

    if-eqz v7, :cond_135

    if-eqz p3, :cond_e4

    .line 1188
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 1190
    :cond_e4
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    iget-wide v4, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v1, v4, v5}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget-wide v4, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    mul-long v4, v4, v10

    invoke-virtual {p3, v4, v5}, Lcom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget v2, v1, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    add-int/2addr v2, v6

    invoke-virtual {p3, v2}, Lcom/vungle/warren/AdLoader$Operation;->retry(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V
    :try_end_fe
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_cb .. :try_end_fe} :catch_141
    .catchall {:try_start_cb .. :try_end_fe} :catchall_15e

    .line 1191
    :try_start_fe
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_15e

    return-void

    .line 1193
    :cond_100
    :try_start_100
    iget v9, v1, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    if-ne v9, v6, :cond_135

    if-nez v2, :cond_135

    .line 1194
    iget p1, v1, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    .line 1195
    iget v2, v1, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    if-ge p1, v2, :cond_111

    if-eqz v7, :cond_111

    add-int/lit8 v5, p1, 0x1

    move v4, v8

    :cond_111
    if-eqz p3, :cond_11c

    .line 1202
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 1204
    :cond_11c
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    iget-wide v6, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v1, v6, v7}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget-wide v6, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    mul-long v6, v6, v10

    invoke-virtual {p3, v6, v7}, Lcom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/vungle/warren/AdLoader$Operation;->retry(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V
    :try_end_133
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_100 .. :try_end_133} :catch_141
    .catchall {:try_start_100 .. :try_end_133} :catchall_15e

    .line 1205
    :try_start_133
    monitor-exit v0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_15e

    return-void

    :cond_135
    if-eqz p3, :cond_146

    .line 1209
    :try_start_137
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_140
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_137 .. :try_end_140} :catch_141
    .catchall {:try_start_137 .. :try_end_140} :catchall_15e

    goto :goto_146

    .line 1212
    :catch_141
    :try_start_141
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 1215
    :cond_146
    :goto_146
    iget-object p3, v1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    .line 1216
    invoke-interface {v1, p2, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_14c

    .line 1219
    :cond_15c
    monitor-exit v0

    return-void

    :catchall_15e
    move-exception p1

    monitor-exit v0
    :try_end_160
    .catchall {:try_start_141 .. :try_end_160} :catchall_15e

    throw p1

    return-void
.end method

.method public onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1090
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    const/4 v2, 0x0

    # invokes: Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V
    invoke-static {v1, p1, v2}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 1094
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/HeaderBiddingCallback;

    .line 1095
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v1, :cond_26

    .line 1096
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_26
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found already cached valid adv, calling onAdLoad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/InitCallback;

    .line 1102
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v2

    if-eqz v2, :cond_5c

    if-eqz v1, :cond_5c

    .line 1103
    invoke-interface {v1, p1}, Lcom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    .line 1106
    :cond_5c
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$1900(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v1, :cond_9d

    .line 1109
    iget-object v2, v1, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {p2, v2}, Lcom/vungle/warren/model/Placement;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_9f

    .line 1112
    :try_start_6f
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_78
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_6f .. :try_end_78} :catch_79
    .catchall {:try_start_6f .. :try_end_78} :catchall_9f

    goto :goto_87

    .line 1114
    :catch_79
    :try_start_79
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {p2, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :goto_87
    iget-object p2, v1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/LoadAdCallback;

    .line 1118
    invoke-interface {p3, p1}, Lcom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    goto :goto_8d

    .line 1121
    :cond_9d
    monitor-exit v0

    return-void

    :catchall_9f
    move-exception p1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_79 .. :try_end_a1} :catchall_9f

    throw p1

    return-void
.end method
