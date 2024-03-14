.class final Lcom/google/android/gms/internal/ads/zzdaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzbqo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgty:Lcom/google/android/gms/internal/ads/zzdag;

.field private final synthetic zzgtz:Lcom/google/android/gms/internal/ads/zzcda;

.field final synthetic zzgua:Lcom/google/android/gms/internal/ads/zzdai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdai;Lcom/google/android/gms/internal/ads/zzdag;Lcom/google/android/gms/internal/ads/zzcda;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgtz:Lcom/google/android/gms/internal/ads/zzcda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqo;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    monitor-enter v0

    .line 14
    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdai;->zza(Lcom/google/android/gms/internal/ads/zzdai;)Lcom/google/android/gms/internal/ads/zzdac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdac;->zzaqx()Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczs;)Lcom/google/android/gms/internal/ads/zzbxq;

    .line 19
    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdag;->onSuccess(Ljava/lang/Object;)V

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdai;->zzb(Lcom/google/android/gms/internal/ads/zzdai;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdam;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdam;-><init>(Lcom/google/android/gms/internal/ads/zzdaj;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgtz:Lcom/google/android/gms/internal/ads/zzcda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcda;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgtz:Lcom/google/android/gms/internal/ads/zzcda;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcda;->zzaew()Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbug;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdai;->zzb(Lcom/google/android/gms/internal/ads/zzdai;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdal;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdal;-><init>(Lcom/google/android/gms/internal/ads/zzdaj;Lcom/google/android/gms/internal/ads/zzva;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_37
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdox;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdag;->zzaqv()V

    return-void
.end method
