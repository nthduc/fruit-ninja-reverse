.class final Lcom/google/android/gms/internal/ads/zzdkb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgty:Lcom/google/android/gms/internal/ads/zzdag;

.field private final synthetic zzham:Lcom/google/android/gms/internal/ads/zzdkd;

.field final synthetic zzhan:Lcom/google/android/gms/internal/ads/zzdjw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjw;Lcom/google/android/gms/internal/ads/zzdag;Lcom/google/android/gms/internal/ads/zzdkd;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzham:Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqo;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    monitor-enter v0

    .line 26
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzdjw;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyg:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzdjw;)Lcom/google/android/gms/internal/ads/zzdkc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzdkc;)Lcom/google/android/gms/internal/ads/zzbxq;

    .line 32
    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdag;->onSuccess(Ljava/lang/Object;)V

    .line 33
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjw;->zzb(Lcom/google/android/gms/internal/ads/zzdjw;)Lcom/google/android/gms/internal/ads/zzdlv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdlv;->zzasv()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnw;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzctd;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v2

    goto :goto_1c

    .line 6
    :cond_14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnw;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v2

    .line 7
    :goto_1c
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    monitor-enter v3

    .line 8
    :try_start_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzdjw;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;

    if-eqz v0, :cond_4e

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnw;->zzaew()Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbug;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcyg:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjw;->zzc(Lcom/google/android/gms/internal/ads/zzdjw;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdka;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzdka;-><init>(Lcom/google/android/gms/internal/ads/zzdkb;Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_70

    .line 15
    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzdjw;)Lcom/google/android/gms/internal/ads/zzdkc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdkc;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzhan:Lcom/google/android/gms/internal/ads/zzdjw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzham:Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzdjw;Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnw;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnw;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrl;->zzaji()Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyg;->zzake()V

    .line 21
    :cond_70
    :goto_70
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdox;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdag;->zzaqv()V

    .line 23
    monitor-exit v3

    return-void

    :catchall_7e
    move-exception p1

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_1f .. :try_end_80} :catchall_7e

    throw p1
.end method
