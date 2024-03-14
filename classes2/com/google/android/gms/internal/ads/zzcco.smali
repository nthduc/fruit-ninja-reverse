.class public final Lcom/google/android/gms/internal/ads/zzcco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/zzbvs;


# instance fields
.field private final zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzua$zza$zza;)V
    .registers 6
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 11

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zza$zza;->zzbyx:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zza$zza;->zzbyt:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zza$zza;->zzbza:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    if-ne v0, v1, :cond_8d

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtm:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_8d

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqv;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeel:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhec:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 15
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqv;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_8d
    return-void
.end method

.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zzum()V
    .registers 2

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzun()V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_12

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_12
    return-void
.end method
