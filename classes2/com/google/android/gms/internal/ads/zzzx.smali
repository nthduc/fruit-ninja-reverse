.class final synthetic Lcom/google/android/gms/internal/ads/zzzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzckz:Lcom/google/android/gms/internal/ads/zzavg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzckz:Lcom/google/android/gms/internal/ads/zzavg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzckz:Lcom/google/android/gms/internal/ads/zzavg;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 3
    :try_start_5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzavg;->onRewardedAdFailedToLoad(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method
