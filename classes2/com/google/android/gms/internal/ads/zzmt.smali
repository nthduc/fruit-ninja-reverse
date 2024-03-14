.class final Lcom/google/android/gms/internal/ads/zzmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzarj:Lcom/google/android/gms/internal/ads/zzjx;

.field private final zzben:[Lcom/google/android/gms/internal/ads/zzjv;

.field private zzbeo:Lcom/google/android/gms/internal/ads/zzjv;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzjv;Lcom/google/android/gms/internal/ads/zzjx;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzben:[Lcom/google/android/gms/internal/ads/zzjv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzbeo:Lcom/google/android/gms/internal/ads/zzjv;

    if-eqz v0, :cond_a

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjv;->release()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzbeo:Lcom/google/android/gms/internal/ads/zzjv;

    :cond_a
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzjv;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzbeo:Lcom/google/android/gms/internal/ads/zzjv;

    if-eqz v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzben:[Lcom/google/android/gms/internal/ads/zzjv;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 8
    :try_start_d
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzjv;->zza(Lcom/google/android/gms/internal/ads/zzjy;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 9
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzbeo:Lcom/google/android/gms/internal/ads/zzjv;
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_15} :catch_22
    .catchall {:try_start_d .. :try_end_15} :catchall_1d

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->zzgq()V

    goto :goto_28

    .line 12
    :cond_19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->zzgq()V

    goto :goto_25

    :catchall_1d
    move-exception p2

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->zzgq()V

    .line 18
    throw p2

    .line 15
    :catch_22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->zzgq()V

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 20
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzbeo:Lcom/google/android/gms/internal/ads/zzjv;

    if-eqz p1, :cond_34

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzjv;->zza(Lcom/google/android/gms/internal/ads/zzjx;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzbeo:Lcom/google/android/gms/internal/ads/zzjv;

    return-object p1

    .line 21
    :cond_34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzns;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzben:[Lcom/google/android/gms/internal/ads/zzjv;

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zza([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzns;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1

    return-void
.end method
