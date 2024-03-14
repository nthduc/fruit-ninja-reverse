.class final Lcom/google/android/gms/internal/ads/zzczm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzboq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgta:Lcom/google/android/gms/internal/ads/zzbpm;

.field final synthetic zzgtb:Lcom/google/android/gms/internal/ads/zzczj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczj;Lcom/google/android/gms/internal/ads/zzbpm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgta:Lcom/google/android/gms/internal/ads/zzbpm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 7

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboq;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    monitor-enter v0

    .line 15
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczj;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzboq;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzboq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    .line 18
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczj;Lcom/google/android/gms/internal/ads/zzboq;)Lcom/google/android/gms/internal/ads/zzboq;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczj;->zzb(Lcom/google/android/gms/internal/ads/zzczj;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboq;->zzahx()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboq;->zzahx()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 22
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6e

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzczj;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 26
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboq;->zzahx()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_6e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcye:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zzf(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczs;)Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    .line 32
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zze(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzczp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczp;)Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zzd(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzczr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczr;)Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zzc(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzczn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Lcom/google/android/gms/internal/ads/zzczn;)Lcom/google/android/gms/internal/ads/zzbxq;

    .line 35
    :cond_ab
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczj;->zzb(Lcom/google/android/gms/internal/ads/zzczj;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboq;->zzahx()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaih()V

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcye:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczj;->zzg(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zzf(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzczs;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    :cond_e7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczj;->zzh(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzbwk;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboq;->zzaig()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbwk;->zzdw(I)V

    .line 42
    monitor-exit v0

    return-void

    :catchall_f6
    move-exception p1

    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_5 .. :try_end_f8} :catchall_f6

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgta:Lcom/google/android/gms/internal/ads/zzbpm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    monitor-enter v1

    .line 4
    :try_start_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczj;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgta:Lcom/google/android/gms/internal/ads/zzbpm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbpm;->zzaew()Lcom/google/android/gms/internal/ads/zzbug;

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

    if-eqz v2, :cond_40

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zzg(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzczo;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzczo;-><init>(Lcom/google/android/gms/internal/ads/zzczm;Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczj;->zzh(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzbwk;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbwk;->zzdw(I)V

    .line 11
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const-string v2, "BannerAdManagerShim.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdox;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    monitor-exit v1

    return-void

    :catchall_54
    move-exception p1

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_d .. :try_end_56} :catchall_54

    throw p1
.end method
