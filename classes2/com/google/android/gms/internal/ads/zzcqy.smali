.class final synthetic Lcom/google/android/gms/internal/ads/zzcqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgdq:Lcom/google/android/gms/internal/ads/zzdzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzgdq:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzgdq:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzati;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzati;)V

    return-object v2
.end method
