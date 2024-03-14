.class final synthetic Lcom/google/android/gms/internal/ads/zzdab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbui;


# instance fields
.field private final zzgsz:Lcom/google/android/gms/internal/ads/zzczs;

.field private final zzgtq:Lcom/google/android/gms/internal/ads/zzajk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczs;Lcom/google/android/gms/internal/ads/zzajk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdab;->zzgsz:Lcom/google/android/gms/internal/ads/zzczs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdab;->zzgtq:Lcom/google/android/gms/internal/ads/zzajk;

    return-void
.end method


# virtual methods
.method public final zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdab;->zzgsz:Lcom/google/android/gms/internal/ads/zzczs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdab;->zzgtq:Lcom/google/android/gms/internal/ads/zzajk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzczs;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    const-string v0, "#007 Could not call remote method."

    if-eqz v1, :cond_13

    .line 4
    :try_start_b
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzajk;->zzd(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v2

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    if-eqz v1, :cond_1f

    .line 9
    :try_start_15
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzajk;->onInstreamAdFailedToLoad(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method
