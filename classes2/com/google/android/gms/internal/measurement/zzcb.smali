.class public Lcom/google/android/gms/internal/measurement/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.1"


# static fields
.field public static final zza:Landroid/net/Uri;

.field public static final zzb:Ljava/util/regex/Pattern;

.field public static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Landroid/net/Uri;

.field private static final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static zzk:Ljava/lang/Object;

.field private static zzl:Z

.field private static zzm:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.google.android.gsf.gservices"

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zza:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzd:Landroid/net/Uri;

    const/4 v0, 0x2

    const-string v1, "^(1|true|t|on|yes|y)$"

    .line 74
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcb;->zzb:Ljava/util/regex/Pattern;

    const-string v1, "^(0|false|f|off|no|n)$"

    .line 76
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzc:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzg:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzh:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzi:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzj:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzm:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 2
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcb;

    monitor-enter p2

    .line 4
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzk:Ljava/lang/Object;

    .line 8
    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzcb;->zzl:Z

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zza:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzca;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/measurement/zzca;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_54

    .line 10
    :cond_2a
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzh:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzk:Ljava/lang/Object;

    .line 17
    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzcb;->zzl:Z

    .line 18
    :cond_54
    :goto_54
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzk:Ljava/lang/Object;

    .line 19
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 20
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_69

    goto :goto_6a

    :cond_69
    move-object p0, v3

    .line 21
    :goto_6a
    monitor-exit p2

    return-object p0

    .line 22
    :cond_6c
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzcb;->zzm:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_70
    if-ge v6, v5, :cond_ae

    aget-object v7, v4, v6

    .line 23
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 24
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzl:Z

    if-eqz v0, :cond_86

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 25
    :cond_86
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zzm:[Ljava/lang/String;

    .line 26
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcb;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 27
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzcb;->zzl:Z

    .line 28
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a9

    .line 29
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_a6

    goto :goto_a7

    :cond_a6
    move-object p0, v3

    .line 30
    :goto_a7
    monitor-exit p2

    return-object p0

    .line 31
    :cond_a9
    monitor-exit p2

    return-object v3

    :cond_ab
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 33
    :cond_ae
    monitor-exit p2
    :try_end_af
    .catchall {:try_start_3 .. :try_end_af} :catchall_f5

    .line 34
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzcb;->zza:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/String;

    aput-object p1, v8, v2

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_c5

    if-eqz p0, :cond_c4

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_c4
    return-object v3

    .line 40
    :cond_c5
    :try_start_c5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_d4

    .line 41
    invoke-static {v0, p1, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_ee

    if-eqz p0, :cond_d3

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_d3
    return-object v3

    .line 45
    :cond_d4
    :try_start_d4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e1

    .line 46
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    move-object p2, v3

    .line 48
    :cond_e1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcb;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_ee

    if-eqz p2, :cond_e7

    goto :goto_e8

    :cond_e7
    move-object p2, v3

    :goto_e8
    if-eqz p0, :cond_ed

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_ed
    return-object p2

    :catchall_ee
    move-exception p1

    if-eqz p0, :cond_f4

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_f4
    throw p1

    :catchall_f5
    move-exception p0

    .line 33
    :try_start_f6
    monitor-exit p2
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

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

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcb;->zzd:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 60
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    if-nez p0, :cond_13

    return-object p1

    .line 62
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 63
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2b

    goto :goto_13

    .line 64
    :cond_27
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_2b
    move-exception p1

    .line 66
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    return-void
.end method

.method static synthetic zza()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 55
    const-class v0, Lcom/google/android/gms/internal/measurement/zzcb;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcb;->zzk:Ljava/lang/Object;

    if-ne p0, v1, :cond_c

    .line 57
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcb;->zzf:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
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
