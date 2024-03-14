.class public Lcom/chartboost/sdk/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_6} :catch_100
    .catchall {:try_start_1 .. :try_end_6} :catchall_fd

    .line 2
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_b} :catch_fb
    .catchall {:try_start_6 .. :try_end_b} :catchall_f9

    .line 12
    :try_start_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_1c} :catch_f6
    .catchall {:try_start_b .. :try_end_1c} :catchall_f3

    const-string v4, "{%"

    const-string v5, "{{"

    if-eqz v3, :cond_42

    :try_start_22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 16
    :cond_3a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 23
    :cond_42
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    goto :goto_4c

    .line 27
    :cond_66
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int p0, v7

    add-int/2addr p0, v6

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v6, 0x800

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    :goto_78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_da

    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v7, v9, :cond_90

    if-eq v8, v9, :cond_90

    .line 38
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_94

    .line 39
    :cond_90
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_94
    if-ne v7, v9, :cond_9a

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    .line 44
    :cond_9a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 48
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 50
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 51
    :goto_c0
    invoke-virtual {p0, v10, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-eq v9, v7, :cond_a4

    add-int v12, v7, v11

    .line 52
    invoke-virtual {p0, v7, v12, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_c0

    .line 56
    :cond_d1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_d4
    const-string v6, "\n"

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 61
    :cond_da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_e2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_e2} :catch_f6
    .catchall {:try_start_22 .. :try_end_e2} :catchall_f3

    if-nez p1, :cond_eb

    .line 71
    :try_start_e4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e7

    .line 77
    :catch_e7
    :try_start_e7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ea

    :catch_ea
    return-object p0

    .line 78
    :cond_eb
    :try_start_eb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing required template parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_eb .. :try_end_f3} :catch_f6
    .catchall {:try_start_eb .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception p0

    move-object v0, v2

    goto :goto_108

    :catch_f6
    move-exception p0

    move-object v0, v2

    goto :goto_102

    :catchall_f9
    move-exception p0

    goto :goto_108

    :catch_fb
    move-exception p0

    goto :goto_102

    :catchall_fd
    move-exception p0

    move-object v1, v0

    goto :goto_108

    :catch_100
    move-exception p0

    move-object v1, v0

    .line 82
    :goto_102
    :try_start_102
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_108
    .catchall {:try_start_102 .. :try_end_108} :catchall_f9

    :goto_108
    if-eqz v0, :cond_10f

    .line 86
    :try_start_10a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_10e

    goto :goto_10f

    :catch_10e
    nop

    :cond_10f
    :goto_10f
    if-eqz v1, :cond_114

    .line 92
    :try_start_111
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_114

    .line 95
    :catch_114
    :cond_114
    throw p0

    return-void
.end method
