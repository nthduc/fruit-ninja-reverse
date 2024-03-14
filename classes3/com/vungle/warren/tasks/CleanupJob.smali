.class public Lcom/vungle/warren/tasks/CleanupJob;
.super Ljava/lang/Object;
.source "CleanupJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field static final TAG:Ljava/lang/String; = "com.vungle.warren.tasks.CleanupJob"


# instance fields
.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private final designer:Lcom/vungle/warren/persistence/Designer;

.field private final repository:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;)V
    .registers 4
    .param p1    # Lcom/vungle/warren/persistence/Designer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/persistence/Repository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/AdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    .line 43
    iput-object p2, p0, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 44
    iput-object p3, p0, Lcom/vungle/warren/tasks/CleanupJob;->adLoader:Lcom/vungle/warren/AdLoader;

    return-void
.end method

.method public static makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    .line 145
    new-instance v0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 20

    move-object/from16 v1, p0

    .line 56
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1e5

    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    if-nez v0, :cond_d

    goto/16 :goto_1e5

    .line 61
    :cond_d
    sget-object v0, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    const-string v3, "CleanupJob: Current directory snapshot"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    .line 64
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 67
    iget-object v3, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_1e4

    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_1e4

    .line 71
    :cond_40
    iget-object v5, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 73
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 76
    :try_start_51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_55
    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_139

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/model/Placement;

    if-eqz v5, :cond_8b

    .line 78
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8b

    invoke-interface {v5, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    .line 79
    sget-object v8, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Placement %s is no longer valid, deleting it and its advertisement"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v8, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v7}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V

    goto :goto_55

    .line 84
    :cond_8b
    iget-object v9, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vungle/warren/persistence/Repository;->findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_55

    .line 86
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a1
    :goto_a1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 87
    iget-object v11, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v12, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v11, v10, v12}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vungle/warren/model/Advertisement;

    if-eqz v11, :cond_10c

    .line 89
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getExpireTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-gtz v16, :cond_e2

    .line 90
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v12

    if-eq v12, v8, :cond_e2

    .line 92
    iget-object v11, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v11, v10}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 96
    iget-object v10, v1, Lcom/vungle/warren/tasks/CleanupJob;->adLoader:Lcom/vungle/warren/AdLoader;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v10, v7, v11, v12}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;J)V

    goto :goto_a1

    .line 101
    :cond_e2
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v11, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting valid adv "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for placement "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 105
    :cond_10c
    sget-object v11, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "removing adv "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from placement "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v10, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 114
    :cond_139
    iget-object v3, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v5, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1af

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14d
    :goto_14d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Advertisement;

    .line 117
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v7

    if-ne v7, v8, :cond_181

    .line 118
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v7, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found adv in viewing state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 120
    :cond_181
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14d

    .line 121
    sget-object v7, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete ad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v7, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    goto :goto_14d

    .line 128
    :cond_1af
    array-length v3, v0

    const/4 v5, 0x0

    :goto_1b1
    if-ge v5, v3, :cond_1da

    aget-object v7, v0, v5

    .line 129
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d7

    .line 131
    sget-object v8, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Deleting assets under directory %s"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {v7}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_1d7
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_51 .. :try_end_1d7} :catch_1e3
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_1d7} :catch_1db

    :cond_1d7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b1

    :cond_1da
    return v4

    :catch_1db
    move-exception v0

    .line 138
    sget-object v3, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    const-string v4, "Failed to delete asset directory!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1e3
    return v2

    :cond_1e4
    :goto_1e4
    return v4

    :cond_1e5
    :goto_1e5
    return v2
.end method
