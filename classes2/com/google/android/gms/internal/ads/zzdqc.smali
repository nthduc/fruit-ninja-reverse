.class final Lcom/google/android/gms/internal/ads/zzdqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpz;


# instance fields
.field private final zzhhe:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            "Lcom/google/android/gms/internal/ads/zzdqa;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

.field private zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqg;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhz:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdqe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    return-void
.end method

.method private final dumpToLog()V
    .registers 8

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqg;->zzaun()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhx:Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdqj;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdqj;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 111
    :goto_61
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqa;->size()I

    move-result v6

    if-ge v5, v6, :cond_75

    const-string v6, "[O]"

    .line 112
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 114
    :cond_75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqa;->size()I

    move-result v5

    :goto_7f
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhz:I

    if-ge v5, v6, :cond_8d

    const-string v6, "[ ]"

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    :cond_8d
    const-string v5, "\n"

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqa;->zzauc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 121
    :cond_a3
    :goto_a3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhy:I

    if-ge v3, v1, :cond_b4

    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 125
    :cond_b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    :cond_bb
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdqk;Lcom/google/android/gms/internal/ads/zzdra;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdra;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_39

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzni()Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;->zzng()Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzj:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zznk()Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;

    move-result-object v2

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzdra;->zzhjo:Z

    .line 89
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;->zzt(Z)Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;

    move-result-object v2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdra;->zzhjn:I

    .line 90
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;->zzcc(I)Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;

    move-result-object p2

    .line 91
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;

    move-result-object p2

    .line 92
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzua$zzb;

    .line 94
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdqk;->zzhiq:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zzaji()Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyg;->zzc(Lcom/google/android/gms/internal/ads/zzua$zzb;)V

    .line 95
    :cond_39
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqc;->dumpToLog()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdqj;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdqg;->zzvr:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzatk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatk;->zzvn()Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v0

    .line 81
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzatl;->zzdus:I

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzdqg;->zzhib:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdqm;-><init>(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;)V

    return-object v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqk;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqa;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzatz()Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object v0

    if-nez v0, :cond_17

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzauh()V

    .line 12
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaud()Lcom/google/android/gms/internal/ads/zzdra;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdqc;->zza(Lcom/google/android/gms/internal/ads/zzdqk;Lcom/google/android/gms/internal/ads/zzdra;)V

    goto :goto_27

    .line 13
    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaug()V

    .line 14
    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zza(Lcom/google/android/gms/internal/ads/zzdqk;Lcom/google/android/gms/internal/ads/zzdra;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 15
    :goto_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdqk;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqa;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzdqk;->zzhis:J

    if-nez v0, :cond_111

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhz:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdqg;->zzhia:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqa;-><init>(II)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhy:I

    if-ne v1, v2, :cond_107

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhhd:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdqg;->zzhid:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const-wide v4, 0x7fffffffffffffffL

    const/4 v2, 0x0

    if-eq v1, v3, :cond_c6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_89

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4a

    goto/16 :goto_102

    :cond_4a
    const v1, 0x7fffffff

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57
    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaub()I

    move-result v5

    if-ge v5, v1, :cond_57

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaub()I

    move-result v1

    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqj;

    goto :goto_57

    :cond_80
    if-eqz v2, :cond_102

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_102

    .line 38
    :cond_89
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_93
    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaua()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_93

    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaua()J

    move-result-wide v4

    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqj;

    goto :goto_93

    :cond_be
    if-eqz v2, :cond_102

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_102

    .line 27
    :cond_c6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d0
    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqa;->getCreationTimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_d0

    .line 29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqa;->getCreationTimeMillis()J

    move-result-wide v4

    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqj;

    goto :goto_d0

    :cond_fb
    if-eqz v2, :cond_102

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_102
    :goto_102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzauj()V

    .line 57
    :cond_107
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaui()V

    .line 59
    :cond_111
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzb(Lcom/google/android/gms/internal/ads/zzdqk;)Z

    move-result p1

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzauk()V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhg:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaul()Lcom/google/android/gms/internal/ads/zzdqd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaud()Lcom/google/android/gms/internal/ads/zzdra;

    move-result-object v0

    if-eqz p2, :cond_163

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzni()Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;->zzng()Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzj:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    .line 65
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb$zze;->zznm()Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;

    move-result-object v4

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzdqd;->zzhhh:Z

    .line 67
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;->zzu(Z)Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;

    move-result-object v4

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzdqd;->zzhhi:Z

    .line 68
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;->zzv(Z)Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;

    move-result-object v1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdra;->zzhjn:I

    .line 69
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;->zzcd(I)Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;

    move-result-object v0

    .line 70
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;

    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzb;

    .line 73
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdqk;->zzhiq:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbrl;->zzaji()Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbyg;->zzd(Lcom/google/android/gms/internal/ads/zzua$zzb;)V

    .line 74
    :cond_163
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqc;->dumpToLog()V
    :try_end_166
    .catchall {:try_start_1 .. :try_end_166} :catchall_168

    .line 75
    monitor-exit p0

    return p1

    :catchall_168
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public final zzaty()Lcom/google/android/gms/internal/ads/zzdqg;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    return-object v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzdqj;)Z
    .registers 4

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhe:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqa;

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqa;->size()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhhf:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhz:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1d

    if-ge p1, v1, :cond_18

    monitor-exit p0

    return v0

    :cond_18
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 79
    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
