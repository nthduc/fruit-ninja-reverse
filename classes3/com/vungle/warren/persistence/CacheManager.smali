.class public Lcom/vungle/warren/persistence/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/CacheManager$Listener;
    }
.end annotation


# static fields
.field private static final COM_VUNGLE_SDK:Ljava/lang/String; = "com.vungle.sdk"

.field private static final PATH_ID:Ljava/lang/String; = "cache_path"

.field private static final PATH_IDS:Ljava/lang/String; = "cache_paths"

.field private static final VUNGLE_DIR:Ljava/lang/String; = "vungle_cache"


# instance fields
.field private changed:Z

.field private final context:Landroid/content/Context;

.field private current:Ljava/io/File;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/persistence/CacheManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field

.field private old:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    const-string v0, "com.vungle.sdk"

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/persistence/CacheManager;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->selectFileDest()V

    return-void
.end method

.method private check()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 115
    :cond_1a
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->selectFileDest()V

    :cond_1d
    return-void
.end method

.method private declared-synchronized observeDirectory(Ljava/io/File;)V
    .registers 7

    monitor-enter p0

    if-nez p1, :cond_5

    .line 121
    monitor-exit p0

    return-void

    .line 122
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/persistence/CacheManager$1;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, p0, v2, v3}, Lcom/vungle/warren/persistence/CacheManager$1;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_1a
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/vungle/warren/persistence/CacheManager$2;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/vungle/warren/persistence/CacheManager$2;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_1a

    .line 144
    :cond_39
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 145
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_51

    goto :goto_3f

    .line 147
    :cond_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private declared-synchronized selectFileDest()V
    .registers 10

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 51
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "cache_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 52
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v2, v1

    :goto_17
    iput-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    .line 55
    :cond_19
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_37

    iget-object v3, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 58
    invoke-static {v3, v4}, Landroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_47

    .line 59
    :cond_37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    if-eqz v0, :cond_47

    const/4 v3, 0x1

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    const/4 v4, 0x2

    .line 64
    new-array v4, v4, [Ljava/io/File;

    new-instance v7, Ljava/io/File;

    if-eqz v3, :cond_51

    move-object v3, v0

    goto :goto_52

    :cond_51
    move-object v3, v2

    :goto_52
    const-string v8, "vungle_cache"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v7, v4, v6

    new-instance v3, Ljava/io/File;

    const-string v7, "vungle_cache"

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8a

    goto :goto_a8

    .line 70
    :cond_8a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_9e

    const/4 v7, 0x1

    goto :goto_a5

    :cond_9e
    const/4 v7, 0x0

    goto :goto_a5

    .line 73
    :cond_a0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v7

    move v3, v7

    :goto_a5
    if-eqz v7, :cond_6b

    move-object v1, v4

    .line 82
    :cond_a8
    :goto_a8
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 83
    iget-object v4, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "cache_paths"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    if-eqz v1, :cond_c4

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_c4
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "cache_paths"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 92
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e3
    :goto_e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_106

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v1, :cond_fb

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    .line 94
    :cond_fb
    iget-object v6, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    :cond_106
    if-nez v3, :cond_11e

    if-eqz v1, :cond_112

    .line 98
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    :cond_112
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v2, :cond_151

    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 99
    :cond_11e
    iput-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    .line 100
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v1, :cond_139

    .line 101
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cache_path"

    iget-object v3, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    :cond_139
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager$Listener;

    .line 105
    invoke-interface {v2}, Lcom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V

    goto :goto_13f

    .line 107
    :cond_14f
    iput-boolean v5, p0, Lcom/vungle/warren/persistence/CacheManager;->changed:Z

    .line 110
    :cond_151
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
    :try_end_154
    .catchall {:try_start_1 .. :try_end_154} :catchall_156

    .line 111
    monitor-exit p0

    return-void

    :catchall_156
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V
    .registers 3

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->check()V

    .line 162
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-boolean v0, p0, Lcom/vungle/warren/persistence/CacheManager;->changed:Z

    if-eqz v0, :cond_10

    .line 164
    invoke-interface {p1}, Lcom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 166
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBytesAvailable()J
    .registers 5

    .line 173
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 179
    :cond_9
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_21

    .line 181
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    goto :goto_2b

    .line 183
    :cond_21
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    :goto_2b
    mul-long v2, v2, v0

    return-wide v2
.end method

.method public declared-synchronized getCache()Ljava/io/File;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->check()V

    .line 152
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOldCaches()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->check()V

    .line 157
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V
    .registers 3

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 170
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
