.class final Lcom/google/android/gms/internal/ads/zzzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzckw:Lcom/google/android/gms/internal/ads/zzzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzs;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzckw:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzckw:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzzs;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzckw:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzzs;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzwt;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method
