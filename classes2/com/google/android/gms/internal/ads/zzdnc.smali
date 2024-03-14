.class final Lcom/google/android/gms/internal/ads/zzdnc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzcjg;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgty:Lcom/google/android/gms/internal/ads/zzdag;

.field private final synthetic zzhcs:Lcom/google/android/gms/internal/ads/zzdnh;

.field final synthetic zzhct:Lcom/google/android/gms/internal/ads/zzdnb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnb;Lcom/google/android/gms/internal/ads/zzdag;Lcom/google/android/gms/internal/ads/zzdnh;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhcs:Lcom/google/android/gms/internal/ads/zzdnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjg;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    monitor-enter v0

    .line 24
    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdmc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzdmc;)Lcom/google/android/gms/internal/ads/zzbxq;

    .line 29
    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdag;->onSuccess(Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnb;->zzb(Lcom/google/android/gms/internal/ads/zzdnb;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdnf;-><init>(Lcom/google/android/gms/internal/ads/zzdnc;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdmc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    .line 35
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzc(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdlv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdlv;->zzasv()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjj;

    if-nez v0, :cond_14

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzctd;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v1

    goto :goto_1c

    .line 5
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjj;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v1

    .line 6
    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    monitor-enter v2

    if-eqz v0, :cond_49

    .line 8
    :try_start_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjj;->zzaew()Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbug;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcyf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzb(Lcom/google/android/gms/internal/ads/zzdnb;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdne;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzdne;-><init>(Lcom/google/android/gms/internal/ads/zzdnc;Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_69

    .line 13
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdmc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhcs:Lcom/google/android/gms/internal/ads/zzdnh;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzdnb;Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzcjm;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjm;->zzagl()Lcom/google/android/gms/internal/ads/zzcjj;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjj;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrl;->zzaji()Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyg;->zzake()V

    .line 19
    :cond_69
    :goto_69
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdox;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzgty:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdag;->zzaqv()V

    .line 21
    monitor-exit v2

    return-void

    :catchall_77
    move-exception p1

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_21 .. :try_end_79} :catchall_77

    throw p1
.end method
