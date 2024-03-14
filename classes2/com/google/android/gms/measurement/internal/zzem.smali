.class public final Lcom/google/android/gms/measurement/internal/zzem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzf:Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzek<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;

.field private volatile zzg:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "overrideLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzh:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "cachingLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzem;->zzf:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzek;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/measurement/internal/zzek;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;",
            "Lcom/google/android/gms/measurement/internal/zzek<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zze:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzg:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzh:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zza:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzc:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzd:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzb:Lcom/google/android/gms/measurement/internal/zzek;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzek;Lcom/google/android/gms/measurement/internal/zzeh;)V
    .registers 6

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzek;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zze:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzg:Ljava/lang/Object;

    .line 13
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_79

    if-eqz p1, :cond_9

    return-object p1

    .line 16
    :cond_9
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzej;->zza:Lcom/google/android/gms/measurement/internal/zzv;

    if-nez p1, :cond_10

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzc:Ljava/lang/Object;

    return-object p1

    .line 18
    :cond_10
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzej;->zza:Lcom/google/android/gms/measurement/internal/zzv;

    .line 19
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzem;->zzf:Ljava/lang/Object;

    monitor-enter p1

    .line 20
    :try_start_15
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzv;->zza()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzc:Ljava/lang/Object;

    goto :goto_24

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzh:Ljava/lang/Object;

    :goto_24
    monitor-exit p1

    return-object v0

    .line 22
    :cond_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_76

    .line 23
    :try_start_27
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzas;->zzcq()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzem;

    .line 25
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzv;->zza()Z

    move-result v1
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_3f} :catch_5e

    if-nez v1, :cond_56

    const/4 v1, 0x0

    .line 27
    :try_start_42
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzem;->zzb:Lcom/google/android/gms/measurement/internal/zzek;

    if-eqz v2, :cond_4c

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzem;->zzb:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_4c} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_4c} :catch_5e

    .line 31
    :catch_4c
    :cond_4c
    :try_start_4c
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzem;->zzf:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_4f} :catch_5e

    .line 32
    :try_start_4f
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzem;->zzh:Ljava/lang/Object;

    .line 33
    monitor-exit v2

    goto :goto_2f

    :catchall_53
    move-exception p1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_53

    :try_start_55
    throw p1

    .line 26
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_5e} :catch_5e

    .line 36
    :catch_5e
    :cond_5e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzb:Lcom/google/android/gms/measurement/internal/zzek;

    if-nez p1, :cond_67

    .line 37
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzej;->zza:Lcom/google/android/gms/measurement/internal/zzv;

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzc:Ljava/lang/Object;

    return-object p1

    .line 40
    :cond_67
    :try_start_67
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/zzek;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_6b} :catch_71
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6b} :catch_6c

    return-object p1

    .line 46
    :catch_6c
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzej;->zza:Lcom/google/android/gms/measurement/internal/zzv;

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzc:Ljava/lang/Object;

    return-object p1

    .line 42
    :catch_71
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzej;->zza:Lcom/google/android/gms/measurement/internal/zzv;

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzem;->zzc:Ljava/lang/Object;

    return-object p1

    :catchall_76
    move-exception v0

    .line 22
    :try_start_77
    monitor-exit p1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0

    :catchall_79
    move-exception p1

    .line 13
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p1

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzem;->zza:Ljava/lang/String;

    return-object v0
.end method
