.class public final Lcom/google/android/gms/internal/ads/zzcbe;
.super Lcom/google/android/gms/internal/ads/zzbqo;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfpr:Lcom/google/android/gms/internal/ads/zzccm;

.field private zzfps:Z

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

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbzp;Lcom/google/android/gms/internal/ads/zzccm;Lcom/google/android/gms/internal/ads/zzbrh;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzbuk;)V
    .registers 9
    .param p3    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/internal/ads/zzbqn;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfps:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzvr:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwr:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfpr:Lcom/google/android/gms/internal/ads/zzccm;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwt:Lcom/google/android/gms/internal/ads/zzbrh;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwu:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

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

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfps:Z

    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbd;->zzh(Lcom/google/android/gms/internal/ads/zzbgj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    :cond_2d
    if-eqz v0, :cond_32

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_36

    .line 44
    :cond_32
    :goto_32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_36
    move-exception v0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method

.method public final isClosed()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwt:Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrh;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzbi(Z)Z
    .registers 6

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzvr:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzav(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuk;->zzajw()V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcoa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwu:Lcom/google/android/gms/internal/ads/zzdtn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfmw:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdtn;->zzhc(Ljava/lang/String;)V

    goto :goto_4f

    .line 23
    :cond_49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfps:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    :goto_50
    if-nez v0, :cond_53

    return v2

    .line 26
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzajl()V

    .line 27
    :try_start_58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfpr:Lcom/google/android/gms/internal/ads/zzccm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzvr:Landroid/content/Context;

    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzccm;->zza(ZLandroid/content/Context;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfws:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzajj()V
    :try_end_64
    .catch Lcom/google/android/gms/internal/ads/zzccl; {:try_start_58 .. :try_end_64} :catch_67

    .line 33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfps:Z

    return v1

    :catch_67
    move-exception p1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzfwv:Lcom/google/android/gms/internal/ads/zzbuk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuk;->zza(Lcom/google/android/gms/internal/ads/zzccl;)V

    return v2
.end method
