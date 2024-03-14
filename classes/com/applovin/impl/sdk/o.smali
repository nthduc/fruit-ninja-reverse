.class public Lcom/applovin/impl/sdk/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private final c:Lcom/applovin/impl/sdk/q;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileManager"

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    return-void
.end method

.method private a()J
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->by:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1b

    invoke-direct {p0}, Lcom/applovin/impl/sdk/o;->b()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-wide v0

    :cond_1b
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private a(J)J
    .registers 5

    const-wide/32 v0, 0x100000

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private a(JLandroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Lcom/applovin/impl/sdk/o;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bz:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    const-string v4, "FileManager"

    cmp-long v5, v0, v2

    if-nez v5, :cond_26

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string p2, "Cache has no maximum size set; skipping drop..."

    :goto_22
    invoke-virtual {p1, v4, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/o;->a(J)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_59

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string p2, "Cache has exceeded maximum size; dropping..."

    invoke-virtual {p1, v4, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/o;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/io/File;)Z

    goto :goto_3d

    :cond_4d
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/sdk/c/g;->f:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_5e

    :cond_59
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string p2, "Cache is present but under size limit; not dropping..."

    goto :goto_22

    :goto_5e
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/applovin/impl/sdk/c/e;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object p3, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File exists for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "FileManager"

    invoke-virtual {p3, p4, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/applovin/impl/sdk/c/e;->b(J)V

    :cond_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    invoke-virtual {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    if-eqz p5, :cond_41

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p5, p3, p4}, Lcom/applovin/impl/sdk/c/e;->a(J)V

    :cond_41
    invoke-virtual {p0, p2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private b()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bx:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing resource to filesystem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_20
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_4a
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_3a
    .catchall {:try_start_20 .. :try_end_25} :catchall_38

    :try_start_25
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_32
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    const/4 p1, 0x1

    :try_start_29
    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_60

    goto :goto_58

    :catchall_2f
    move-exception p1

    move-object v1, v2

    goto :goto_5a

    :catch_32
    move-exception p1

    move-object v1, v2

    goto :goto_3b

    :catch_35
    move-exception p1

    move-object v1, v2

    goto :goto_4b

    :catchall_38
    move-exception p1

    goto :goto_5a

    :catch_3a
    move-exception p1

    :goto_3b
    :try_start_3b
    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "FileManager"

    const-string v3, "Unknown failure to write file."

    invoke-virtual {p2, v2, v3, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_38

    :try_start_44
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    :goto_46
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_60

    goto :goto_57

    :catch_4a
    move-exception p1

    :goto_4b
    :try_start_4b
    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "FileManager"

    const-string v3, "Unable to write data to file."

    invoke-virtual {p2, v2, v3, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_38

    :try_start_54
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    goto :goto_46

    :goto_57
    const/4 p1, 0x0

    :goto_58
    monitor-exit v0

    return p1

    :goto_5a
    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    throw p1

    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_60

    throw p1

    return-void
.end method

.method private b(Ljava/io/File;)Z
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from filesystem..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_2c
    .catchall {:try_start_24 .. :try_end_28} :catchall_2a

    :try_start_28
    monitor-exit v0

    return p1

    :catchall_2a
    move-exception p1

    goto :goto_51

    :catch_2c
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from filesystem!"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_2a

    throw p1
.end method

.method private c(Landroid/content/Context;)J
    .registers 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/o;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    iget-object v7, v1, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1c
    iget-object v8, v1, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object v9, Lcom/applovin/impl/sdk/b/b;->bF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/sdk/o;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-wide/16 v10, 0x0

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_91

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    if-eqz v4, :cond_7c

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    sub-long v13, v5, v13

    cmp-long v15, v13, v2

    if-lez v15, :cond_7c

    iget-object v13, v1, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v14, "FileManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has expired, removing..."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v12}, Lcom/applovin/impl/sdk/o;->b(Ljava/io/File;)Z

    move-result v0

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    if-eqz v0, :cond_8b

    iget-object v0, v1, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v12, Lcom/applovin/impl/sdk/c/g;->e:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v12}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_2e

    :cond_8b
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    goto :goto_2e

    :cond_91
    monitor-exit v7

    return-wide v10

    :catchall_93
    move-exception v0

    monitor-exit v7
    :try_end_95
    .catchall {:try_start_1c .. :try_end_95} :catchall_93

    throw v0

    return-void
.end method

.method private d(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/o;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw p1

    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "al"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading resource from filesystem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileManager"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_93
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_6b
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_59
    .catchall {:try_start_23 .. :try_end_28} :catchall_56

    :try_start_28
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_31
    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_37} :catch_54
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_50
    .catchall {:try_start_28 .. :try_end_37} :catchall_b4

    if-ltz v5, :cond_49

    :try_start_39
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_54
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_50
    .catchall {:try_start_39 .. :try_end_3c} :catchall_b4

    goto :goto_31

    :catch_3d
    :try_start_3d
    iget-object v4, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_42} :catch_54
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_42} :catch_50
    .catchall {:try_start_3d .. :try_end_42} :catchall_b4

    :try_start_42
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v1

    return-object v0

    :cond_49
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_bb

    return-object v3

    :catch_50
    move-exception p1

    goto :goto_5b

    :catch_52
    move-exception v3

    goto :goto_6d

    :catch_54
    move-exception p1

    goto :goto_95

    :catchall_56
    move-exception p1

    move-object v2, v0

    goto :goto_b5

    :catch_59
    move-exception p1

    move-object v2, v0

    :goto_5b
    :try_start_5b
    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v4, "FileManager"

    const-string v5, "Unknown failure to read file."

    invoke-virtual {v3, v4, v5, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_b4

    :try_start_64
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_bb

    return-object v0

    :catch_6b
    move-exception v3

    move-object v2, v0

    :goto_6d
    :try_start_6d
    iget-object v4, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v5, "FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_b4

    :try_start_8c
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_bb

    return-object v0

    :catch_93
    move-exception p1

    move-object v2, v0

    :goto_95
    :try_start_95
    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v4, "FileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_b4

    :try_start_ad
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v1

    return-object v0

    :catchall_b4
    move-exception p1

    :goto_b5
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    throw p1

    :catchall_bb
    move-exception p1

    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_ad .. :try_end_bd} :catchall_bb

    throw p1

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/ByteArrayOutputStream;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    const-string v0, "FileManager"

    const/4 v1, 0x0

    if-eqz p3, :cond_22

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_22

    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain is not whitelisted, skipping precache for url: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_22
    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object p3, Lcom/applovin/impl/sdk/b/b;->dl:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_47

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_47

    iget-object p3, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting..."

    invoke-virtual {p3, v0, v2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "http://"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_47
    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_62
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_11e
    .catchall {:try_start_62 .. :try_end_67} :catchall_11a

    :try_start_67
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_117
    .catchall {:try_start_67 .. :try_end_72} :catchall_114

    :try_start_72
    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dj:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dk:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_ff

    const/16 v4, 0x12c

    if-lt v2, v4, :cond_af

    goto :goto_ff

    :cond_af
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_b3} :catch_111
    .catchall {:try_start_72 .. :try_end_b3} :catchall_10f

    const/16 v4, 0x400

    :try_start_b5
    new-array v4, v4, [B

    :goto_b7
    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_bc} :catch_fd
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_148

    if-ltz v5, :cond_d7

    :try_start_be
    invoke-virtual {p2, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c2
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_fd
    .catchall {:try_start_be .. :try_end_c1} :catchall_148

    goto :goto_b7

    :catch_c2
    :try_start_c2
    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c7} :catch_fd
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_148

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    return-object v1

    :cond_d7
    :try_start_d7
    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded resource at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_ed} :catch_fd
    .catchall {:try_start_d7 .. :try_end_ed} :catchall_148

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    return-object p2

    :catch_fd
    move-exception v3

    goto :goto_122

    :cond_ff
    :goto_ff
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    return-object v1

    :catchall_10f
    move-exception p1

    goto :goto_14a

    :catch_111
    move-exception v3

    move-object v2, v1

    goto :goto_122

    :catchall_114
    move-exception p1

    move-object p3, v1

    goto :goto_14a

    :catch_117
    move-exception v3

    move-object p3, v1

    goto :goto_121

    :catchall_11a
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    goto :goto_14a

    :catch_11e
    move-exception v3

    move-object p2, v1

    move-object p3, p2

    :goto_121
    move-object v2, p3

    :goto_122
    :try_start_122
    iget-object v4, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_138
    .catchall {:try_start_122 .. :try_end_138} :catchall_148

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    return-object v1

    :catchall_148
    move-exception p1

    move-object v1, v2

    :goto_14a
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p3, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    throw p1

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .registers 9

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string p2, "FileManager"

    const-string v0, "Nothing to look up, skipping..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up cached resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileManager"

    invoke-virtual {v0, v3, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "/"

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_41
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_44
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/o;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_6d

    :try_start_4d
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_52
    .catchall {:try_start_4d .. :try_end_50} :catchall_6d

    :try_start_50
    monitor-exit v0

    return-object v2

    :catch_52
    move-exception p1

    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to make cache directory at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return-object v1

    :catchall_6d
    move-exception p1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_50 .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/applovin/impl/sdk/c/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/applovin/impl/sdk/c/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v6, p0

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x0

    const-string v8, "FileManager"

    if-nez v0, :cond_12

    iget-object v0, v6, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "Nothing to cache, skipping..."

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_12
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_36
    move-object v9, v0

    move-object v0, p1

    invoke-virtual {p0, v9, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    move-object v0, p0

    move-object v1, v10

    move-object v2, p2

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, v6, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching succeeded for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_6a

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6a
    return-object v9

    :cond_6b
    return-object v7
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/impl/sdk/o;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "FileManager"

    const-string v2, "Compacting cache..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/o;->c(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(JLandroid/content/Context;)V

    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    return-void
.end method

.method public a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileManager"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_66

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4e
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching completed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_66
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/c/e;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/sdk/c/e;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)V
    .registers 7

    const-string v0, "Failed to create .nomedia file"

    const-string v1, ".nomedia"

    const-string v2, "FileManager"

    :try_start_6
    invoke-virtual {p0, v1, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/o;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating .nomedia file at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_39

    return-void

    :cond_39
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v1, v2, v0, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    monitor-exit v0

    return p1

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method
