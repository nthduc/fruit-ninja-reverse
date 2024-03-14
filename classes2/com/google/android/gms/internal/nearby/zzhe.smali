.class public Lcom/google/android/gms/internal/nearby/zzhe;
.super Ljava/lang/Object;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final zzjn:Landroid/net/Uri;

.field private static final zzjo:Ljava/util/regex/Pattern;

.field private static final zzjp:Ljava/util/regex/Pattern;

.field private static final zzjq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzjr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzju:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static zzjw:Ljava/lang/Object;

.field private static zzjx:Z

.field private static zzjy:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjn:Landroid/net/Uri;

    const/4 v0, 0x2

    const-string v1, "^(1|true|t|on|yes|y)$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjo:Ljava/util/regex/Pattern;

    const-string v1, "^(0|false|f|off|no|n)$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjp:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjt:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzju:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjv:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjy:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/nearby/zzhe;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, p2

    :goto_11
    monitor-exit v0

    return-object p0

    :cond_13
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-class p2, Lcom/google/android/gms/internal/nearby/zzhe;

    monitor-enter p2

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Landroid/content/ContentResolver;)V

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjw:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p0, v2

    :goto_1d
    monitor-exit p2

    return-object p0

    :cond_1f
    sget-object v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjy:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24
    const/4 v6, 0x1

    if-ge v5, v3, :cond_63

    aget-object v7, v1, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    sget-boolean v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjx:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_3b
    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjy:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sput-boolean v6, Lcom/google/android/gms/internal/nearby/zzhe;->zzjx:Z

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object p0, v2

    :goto_5c
    monitor-exit p2

    return-object p0

    :cond_5e
    monitor-exit p2

    return-object v2

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_63
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_a5

    sget-object v8, Lcom/google/android/gms/internal/nearby/zzhe;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v11, v6, [Ljava/lang/String;

    aput-object p1, v11, v4

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_95

    :try_start_74
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_7b

    goto :goto_95

    :cond_7b
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_88

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    move-object p2, v2

    :cond_88
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_9e

    if-eqz p2, :cond_8e

    goto :goto_8f

    :cond_8e
    move-object p2, v2

    :goto_8f
    if-eqz p0, :cond_94

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_94
    return-object p2

    :cond_95
    :goto_95
    :try_start_95
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9e

    if-eqz p0, :cond_9d

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9d
    return-object v2

    :catchall_9e
    move-exception p1

    if-eqz p0, :cond_a4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw p1

    :catchall_a5
    move-exception p0

    :try_start_a6
    monitor-exit p2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p0

    return-void
.end method

.method private static varargs zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjn:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    if-nez p0, :cond_13

    return-object p1

    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2b

    goto :goto_13

    :cond_27
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_2b
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    return-void
.end method

.method private static zza(Landroid/content/ContentResolver;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjw:Ljava/lang/Object;

    sput-boolean v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjx:Z

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzhf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/nearby/zzhf;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_27
    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_51

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjt:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzju:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjv:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjw:Ljava/lang/Object;

    sput-boolean v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjx:Z

    :cond_51
    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/nearby/zzhe;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/nearby/zzhe;->zzjw:Ljava/lang/Object;

    if-ne p0, v1, :cond_c

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 8

    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzhe;->zzb(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjs:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_18
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_6a

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_6a

    :cond_29
    sget-object v4, Lcom/google/android/gms/internal/nearby/zzhe;->zzjo:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_37

    move-object v0, v2

    goto :goto_6a

    :cond_37
    sget-object v2, Lcom/google/android/gms/internal/nearby/zzhe;->zzjp:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    const/4 v1, 0x0

    goto :goto_6a

    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attempt to read gservices key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\") as boolean"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Gservices"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjs:Ljava/util/HashMap;

    const-class v2, Lcom/google/android/gms/internal/nearby/zzhe;

    monitor-enter v2

    :try_start_6f
    sget-object v3, Lcom/google/android/gms/internal/nearby/zzhe;->zzjw:Ljava/lang/Object;

    if-ne p2, v3, :cond_7b

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjr:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    monitor-exit v2

    return v1

    :catchall_7d
    move-exception p0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method static synthetic zzai()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static zzb(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/nearby/zzhe;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzhe;->zza(Landroid/content/ContentResolver;)V

    sget-object p0, Lcom/google/android/gms/internal/nearby/zzhe;->zzjw:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method