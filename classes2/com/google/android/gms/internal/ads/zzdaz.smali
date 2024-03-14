.class final Lcom/google/android/gms/internal/ads/zzdaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzdbm;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

.field private final synthetic zzgun:Lcom/google/android/gms/internal/ads/zzdaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaq;Lcom/google/android/gms/internal/ads/zzaxg;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgun:Lcom/google/android/gms/internal/ads/zzdaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbm;

    .line 8
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgun:Lcom/google/android/gms/internal/ads/zzdaq;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Lcom/google/android/gms/internal/ads/zzdaq;)Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcxr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_43

    if-nez p1, :cond_37

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-interface {p1, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzaxg;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 17
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdbm;->zzguv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdbm;->zzguw:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdbm;->zzgux:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxg;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_43
    if-nez p1, :cond_4b

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-interface {p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzaxg;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdbm;->zzguv:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdbm;->zzguw:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaxg;->zzk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p1

    const-string v0, ""

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzgum:Lcom/google/android/gms/internal/ads/zzaxg;

    const-string v1, "Internal error. "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_17
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxg;->onError(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
