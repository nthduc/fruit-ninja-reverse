.class final Lcom/google/android/gms/internal/ads/zzczt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzcbe;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgti:Lcom/google/android/gms/internal/ads/zzcce;

.field final synthetic zzgtj:Lcom/google/android/gms/internal/ads/zzczu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczu;Lcom/google/android/gms/internal/ads/zzcce;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgti:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbe;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    monitor-enter v0

    .line 16
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzczu;->zza(Lcom/google/android/gms/internal/ads/zzczu;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzczu;->zza(Lcom/google/android/gms/internal/ads/zzczu;Lcom/google/android/gms/internal/ads/zzcbe;)Lcom/google/android/gms/internal/ads/zzcbe;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczu;->zzd(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczs;)Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczu;->zzc(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzczr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczr;)Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczu;->zzb(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzczn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczn;)Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczu;->zza(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzdmc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzdmc;)Lcom/google/android/gms/internal/ads/zzbxq;

    .line 26
    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaih()V

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzczu;->zze(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzczw;-><init>(Lcom/google/android/gms/internal/ads/zzczt;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzczu;->zze(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzczv;-><init>(Lcom/google/android/gms/internal/ads/zzczt;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    :cond_86
    monitor-exit v0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgti:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcce;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    monitor-enter v1

    .line 4
    :try_start_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzczu;->zza(Lcom/google/android/gms/internal/ads/zzczu;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgti:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcce;->zzaew()Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbug;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcye:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczu;->zze(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzczy;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczu;->zze(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzczx;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzczx;-><init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzva;)V

    .line 11
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    :cond_52
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const-string v2, "InterstitialAdManagerShim.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdox;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 13
    monitor-exit v1

    return-void

    :catchall_5b
    move-exception p1

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_5b

    throw p1
.end method
