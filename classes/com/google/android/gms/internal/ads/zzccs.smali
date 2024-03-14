.class public final Lcom/google/android/gms/internal/ads/zzccs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuh;
.implements Lcom/google/android/gms/internal/ads/zzbzu;


# instance fields
.field private final view:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

.field private final zzfrn:Lcom/google/android/gms/internal/ads/zzawp;

.field private final zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

.field private zzfxe:Ljava/lang/String;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzua$zza$zza;)V
    .registers 6
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfrn:Lcom/google/android/gms/internal/ads/zzawp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccs;->view:Landroid/view/View;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfrn:Lcom/google/android/gms/internal/ads/zzawp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzam(Z)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdOpened()V
    .registers 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->view:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxe:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxe:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfrn:Lcom/google/android/gms/internal/ads/zzawp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzam(Z)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final zzajj()V
    .registers 1

    return-void
.end method

.method public final zzajl()V
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxe:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxe:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxc:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzua$zza$zza;->zzbyx:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    if-ne v1, v2, :cond_19

    const-string v1, "/Rewarded"

    goto :goto_1b

    :cond_19
    const-string v1, "/Interstitial"

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_26
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2c
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfxe:Ljava/lang/String;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzvr:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 23
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzvr:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzvr:Landroid/content/Context;

    .line 24
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzawo;->zzah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfrn:Lcom/google/android/gms/internal/ads/zzawp;

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawp;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzatw;->getType()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzatw;->getAmount()I

    move-result v5

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    .line 31
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    return-void
.end method
