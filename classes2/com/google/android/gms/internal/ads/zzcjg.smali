.class public final Lcom/google/android/gms/internal/ads/zzcjg;
.super Lcom/google/android/gms/internal/ads/zzbqo;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdwc:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzfwr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

.field private final zzfwt:Lcom/google/android/gms/internal/ads/zzbrh;

.field private final zzfwu:Lcom/google/android/gms/internal/ads/zzdtn;

.field private final zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

.field private final zzfww:Lcom/google/android/gms/internal/ads/zzccm;

.field private zzgeb:Z

.field private final zzges:Lcom/google/android/gms/internal/ads/zzbvv;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzccm;Lcom/google/android/gms/internal/ads/zzbzp;Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzbvv;Lcom/google/android/gms/internal/ads/zzbrh;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdtn;)V
    .registers 11
    .param p3    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/internal/ads/zzbqn;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzgeb:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfww:Lcom/google/android/gms/internal/ads/zzccm;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwr:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzges:Lcom/google/android/gms/internal/ads/zzbvv;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwt:Lcom/google/android/gms/internal/ads/zzbrh;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwu:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavu;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtc:Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Lcom/google/android/gms/internal/ads/zzauv;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzdwc:Lcom/google/android/gms/internal/ads/zzaux;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 49
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzgeb:Z

    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zzh(Lcom/google/android/gms/internal/ads/zzbgj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    :cond_2d
    if-eqz v0, :cond_32

    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_36

    .line 53
    :cond_32
    :goto_32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_36
    move-exception v0

    .line 55
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzges:Lcom/google/android/gms/internal/ads/zzbvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvv;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwt:Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrh;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzanu()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzgeb:Z

    return v0
.end method

.method public final zzb(ZLandroid/app/Activity;)Z
    .registers 6
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzvr:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzav(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuk;->zzajw()V

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcoa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwu:Lcom/google/android/gms/internal/ads/zzdtn;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfmw:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzhc(Ljava/lang/String;)V

    :cond_47
    return v1

    .line 24
    :cond_48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzgeb:Z

    if-eqz v0, :cond_5e

    const-string p1, "The rewarded ad have been showed."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhgf:Lcom/google/android/gms/internal/ads/zzdpg;

    const/4 v0, 0x0

    .line 27
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbuk;->zzl(Lcom/google/android/gms/internal/ads/zzva;)V

    return v1

    :cond_5e
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzgeb:Z

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzp;->zzajl()V

    if-nez p2, :cond_6a

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzvr:Landroid/content/Context;

    .line 33
    :cond_6a
    :try_start_6a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfww:Lcom/google/android/gms/internal/ads/zzccm;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzccm;->zza(ZLandroid/content/Context;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzajj()V
    :try_end_74
    .catch Lcom/google/android/gms/internal/ads/zzccl; {:try_start_6a .. :try_end_74} :catch_75

    return v0

    :catch_75
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbuk;->zza(Lcom/google/android/gms/internal/ads/zzccl;)V

    return v1
.end method

.method public final zzqz()Lcom/google/android/gms/internal/ads/zzaux;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzdwc:Lcom/google/android/gms/internal/ads/zzaux;

    return-object v0
.end method

.method public final zzra()Z
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfwr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_12

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacl()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
