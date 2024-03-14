.class public final Lcom/google/android/gms/internal/ads/zzot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbje:Ljava/util/concurrent/ExecutorService;

.field private zzbjf:Lcom/google/android/gms/internal/ads/zzov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzov<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzoy;",
            ">;"
        }
    .end annotation
.end field

.field private zzbjg:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpq;->zzbi(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbje:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzot;)Lcom/google/android/gms/internal/ads/zzov;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjf:Lcom/google/android/gms/internal/ads/zzov;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzot;Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzov;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjf:Lcom/google/android/gms/internal/ads/zzov;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzot;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjg:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzot;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbje:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final isLoading()Z
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjf:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzoy;Lcom/google/android/gms/internal/ads/zzow;I)J
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zzoy;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzow<",
            "TT;>;I)J"
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 5
    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 7
    new-instance v10, Lcom/google/android/gms/internal/ads/zzov;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Lcom/google/android/gms/internal/ads/zzot;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzoy;Lcom/google/android/gms/internal/ads/zzow;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zzov;->zzek(J)V

    return-wide v8
.end method

.method public final zza(Ljava/lang/Runnable;)V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjf:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zzl(Z)V

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbje:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbje:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final zzbj(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjg:Ljava/io/IOException;

    if-nez p1, :cond_e

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjf:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz p1, :cond_d

    .line 21
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzov;->zzbjl:I

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zzbj(I)V

    :cond_d
    return-void

    .line 18
    :cond_e
    throw p1
.end method

.method public final zzis()V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzot;->zzbjf:Lcom/google/android/gms/internal/ads/zzov;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zzl(Z)V

    return-void
.end method
