.class public Lcom/google/android/gms/internal/ads/zzeks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzief:Lcom/google/android/gms/internal/ads/zzejm;


# instance fields
.field private zzikw:Lcom/google/android/gms/internal/ads/zzeip;

.field private volatile zzikx:Lcom/google/android/gms/internal/ads/zzelj;

.field private volatile zziky:Lcom/google/android/gms/internal/ads/zzeip;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeks;->zzief:Lcom/google/android/gms/internal/ads/zzejm;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    if-nez v0, :cond_1d

    .line 19
    monitor-enter p0

    .line 20
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    if-eqz v0, :cond_b

    .line 21
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    .line 22
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;
    :try_end_11
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    .line 26
    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    .line 28
    :goto_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1

    .line 29
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeks;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeks;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeks;->zzbdw()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeks;->zzbdw()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeip;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->zzbgn()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzeks;->zzm(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzelj;->zzbgn()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeks;->zzm(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzbdw()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0

    .line 42
    :cond_7
    monitor-enter p0

    .line 43
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    if-eqz v0, :cond_10

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    monitor-exit p0

    return-object v0

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    if-nez v0, :cond_19

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    goto :goto_21

    .line 47
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->zzbdw()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    .line 48
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 49
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public final zzbgh()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    return v0

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->zzbgh()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikw:Lcom/google/android/gms/internal/ads/zzeip;

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zziky:Lcom/google/android/gms/internal/ads/zzeip;

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeks;->zzikx:Lcom/google/android/gms/internal/ads/zzelj;

    return-object v0
.end method
