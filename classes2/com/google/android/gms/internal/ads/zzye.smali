.class public final Lcom/google/android/gms/internal/ads/zzye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/MuteThisAdReason;


# instance fields
.field private final description:Ljava/lang/String;

.field private zzcjk:Lcom/google/android/gms/internal/ads/zzyd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyd;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzye;->zzcjk:Lcom/google/android/gms/internal/ads/zzyd;

    .line 4
    :try_start_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyd;->getDescription()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    move-exception p1

    const-string v0, ""

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 8
    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzye;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzye;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzye;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final zzql()Lcom/google/android/gms/internal/ads/zzyd;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzcjk:Lcom/google/android/gms/internal/ads/zzyd;

    return-object v0
.end method
