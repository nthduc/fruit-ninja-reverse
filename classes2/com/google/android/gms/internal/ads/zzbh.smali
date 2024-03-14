.class public Lcom/google/android/gms/internal/ads/zzbh;
.super Lcom/google/android/gms/internal/ads/zzaa;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaa<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzcy:Lcom/google/android/gms/internal/ads/zzal;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzal;Lcom/google/android/gms/internal/ads/zzai;)V
    .registers 5
    .param p4    # Lcom/google/android/gms/internal/ads/zzai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzal<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzai;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzaa;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzai;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbh;->mLock:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbh;->zzcy:Lcom/google/android/gms/internal/ads/zzal;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzaj;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzy;->data:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzy;->zzam:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    if-eqz v2, :cond_40

    const-string v4, "Content-Type"

    .line 14
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_40

    const-string v4, ";"

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v6, 0x1

    .line 17
    :goto_1d
    array-length v7, v2

    if-ge v6, v7, :cond_40

    .line 18
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 19
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3d

    .line 20
    aget-object v8, v7, v5

    const-string v9, "charset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 21
    aget-object v3, v7, v4

    goto :goto_40

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 24
    :cond_40
    :goto_40
    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_4b

    .line 27
    :catch_44
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzy;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 28
    :goto_4b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zza(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbh;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method protected zzj(Ljava/lang/String;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbh;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbh;->zzcy:Lcom/google/android/gms/internal/ads/zzal;

    .line 7
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 9
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzal;->zzb(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 7
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
