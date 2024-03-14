.class public final Lcom/google/android/gms/internal/ads/zzboh;
.super Lcom/google/android/gms/internal/ads/zzbqo;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfpf:I

.field private final zzfpg:Z

.field private final zzfph:Z

.field private final zzfpo:Lcom/google/android/gms/internal/ads/zzbnn;

.field private final zzfpr:Lcom/google/android/gms/internal/ads/zzccm;

.field private zzfps:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;Lcom/google/android/gms/internal/ads/zzbgj;IZZLcom/google/android/gms/internal/ads/zzbnn;Lcom/google/android/gms/internal/ads/zzccm;)V
    .registers 8
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/internal/ads/zzbqn;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfps:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpf:I

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpg:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfph:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpo:Lcom/google/android/gms/internal/ads/zzbnn;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpr:Lcom/google/android/gms/internal/ads/zzccm;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_a

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    :cond_a
    return-void
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzav(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhgg:Lcom/google/android/gms/internal/ads/zzdpg;

    const/4 v3, 0x0

    .line 19
    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcoa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtn;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbas;->zzyj()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtn;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfmw:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdtn;->zzhc(Ljava/lang/String;)V

    goto :goto_6a

    .line 28
    :cond_5b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfps:Z

    if-eqz v0, :cond_64

    const-string v0, "App open interstitial ad is already visible."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 30
    :cond_64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfps:Z

    if-nez v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    :goto_6b
    if-nez v0, :cond_6e

    return-void

    .line 33
    :cond_6e
    :try_start_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpr:Lcom/google/android/gms/internal/ads/zzccm;

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzccm;->zza(ZLandroid/content/Context;)V
    :try_end_73
    .catch Lcom/google/android/gms/internal/ads/zzccl; {:try_start_6e .. :try_end_73} :catch_76

    .line 38
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfps:Z

    return-void

    :catch_76
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpe;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsc;)V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_7

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzsc;)V

    :cond_7
    return-void
.end method

.method public final zzaho()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpf:I

    return v0
.end method

.method public final zzfd(J)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfpo:Lcom/google/android/gms/internal/ads/zzbnn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbnn;->zzfd(J)V

    return-void
.end method
