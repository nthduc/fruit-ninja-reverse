.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzxo;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaei;
    .registers 5

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfc;

    const v1, 0xc120eb0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcfc;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzael;
    .registers 5

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 46
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcez;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcez;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzaud;
    .registers 4

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 18
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbix;->zzadw()Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p2

    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zzagi()Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdnn;->zzagm()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzwz;
    .registers 5

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 12
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p3

    .line 13
    new-instance p4, Lcom/google/android/gms/internal/ads/zzczh;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzczh;-><init>(Lcom/google/android/gms/internal/ads/zzbix;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzxc;
    .registers 9

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbx;

    const v1, 0xc120eb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbx;-><init>(IIZZ)V

    .line 42
    new-instance p4, Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbx;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzxc;
    .registers 6

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 4
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p4

    .line 5
    new-instance p5, Lcom/google/android/gms/internal/ads/zzczj;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzczj;-><init>(Lcom/google/android/gms/internal/ads/zzbix;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;)V

    return-object p5
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzxs;
    .registers 3

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 37
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbix;->zzf(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbix;->zzado()Lcom/google/android/gms/internal/ads/zzbld;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaqy;
    .registers 5

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_16

    .line 28
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 29
    :cond_16
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpr:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    const/4 v2, 0x3

    if-eq v1, v2, :cond_30

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2a

    .line 34
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 31
    :cond_2a
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 33
    :cond_30
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 32
    :cond_36
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 30
    :cond_3c
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzauy;
    .registers 5

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 49
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p3

    .line 50
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbix;->zzadw()Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p3

    .line 51
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p1

    .line 52
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnm;->zzfw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zzagi()Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdnn;->zzagn()Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 4

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 70
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbix;->zzady()Lcom/google/android/gms/internal/ads/zzdaq;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzxc;
    .registers 6

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 8
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p4

    .line 9
    new-instance p5, Lcom/google/android/gms/internal/ads/zzczu;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzczu;-><init>(Lcom/google/android/gms/internal/ads/zzbix;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;)V

    return-object p5
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzaqp;
    .registers 4

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 74
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbix;->zzadz()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzxc;
    .registers 6

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 58
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbix;->zzads()Lcom/google/android/gms/internal/ads/zzdjx;

    move-result-object p2

    .line 60
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzdjx;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdjx;

    move-result-object p2

    .line 61
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdjx;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdjx;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjx;->zzafu()Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object p1

    .line 63
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcul:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_31

    .line 66
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdju;->zzafy()Lcom/google/android/gms/internal/ads/zzdko;

    move-result-object p1

    return-object p1

    .line 67
    :cond_31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdju;->zzafx()Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzxs;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzarn;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
