.class public final Lcom/google/android/gms/internal/ads/zzabu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;


# instance fields
.field private final zzczq:Lcom/google/android/gms/internal/ads/zzabt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabt;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabu;->zzczq:Lcom/google/android/gms/internal/ads/zzabt;

    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .registers 3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabu;->zzczq:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzrs()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .registers 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabu;->zzczq:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabt;->getContent()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAdRendered(Landroid/view/View;)V
    .registers 3

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabu;->zzczq:Lcom/google/android/gms/internal/ads/zzabt;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabt;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordClick()V
    .registers 3

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabu;->zzczq:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabt;->recordClick()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression()V
    .registers 3

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabu;->zzczq:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabt;->recordImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
