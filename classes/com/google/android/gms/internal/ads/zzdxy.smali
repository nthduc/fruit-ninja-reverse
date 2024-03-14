.class abstract Lcom/google/android/gms/internal/ads/zzdxy;
.super Lcom/google/android/gms/internal/ads/zzdxq$zzh;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdxy$zzb;,
        Lcom/google/android/gms/internal/ads/zzdxy$zzc;,
        Lcom/google/android/gms/internal/ads/zzdxy$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxq$zzh<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final zzhrt:Ljava/util/logging/Logger;

.field private static final zzhsp:Lcom/google/android/gms/internal/ads/zzdxy$zza;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 19
    const-class v0, Lcom/google/android/gms/internal/ads/zzdxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zzhrt:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 21
    :try_start_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxy$zzc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdxy;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    .line 22
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzdxy;

    const-string v4, "remaining"

    .line 23
    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdxy$zzc;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_26

    move-object v7, v0

    goto :goto_2e

    :catch_26
    move-exception v1

    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxy$zzb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxy$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdxz;)V

    move-object v7, v1

    move-object v1, v2

    .line 27
    :goto_2e
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdxy;->zzhsp:Lcom/google/android/gms/internal/ads/zzdxy$zza;

    if-eqz v7, :cond_3f

    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxy;->zzhrt:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v5, "<clinit>"

    const-string v6, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxq$zzh;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->seenExceptions:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->remaining:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxy;)Ljava/util/Set;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxy;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdxy;)I
    .registers 2

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->remaining:I

    return v0
.end method


# virtual methods
.method final zzaya()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_18

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxy;->zzh(Ljava/util/Set;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxy;->zzhsp:Lcom/google/android/gms/internal/ads/zzdxy$zza;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdxy$zza;->zza(Lcom/google/android/gms/internal/ads/zzdxy;Ljava/util/Set;Ljava/util/Set;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->seenExceptions:Ljava/util/Set;

    :cond_18
    return-object v0
.end method

.method final zzayb()I
    .registers 2

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zzhsp:Lcom/google/android/gms/internal/ads/zzdxy$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxy$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdxy;)I

    move-result v0

    return v0
.end method

.method final zzayc()V
    .registers 2

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method abstract zzh(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
