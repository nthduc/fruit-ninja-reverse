.class final synthetic Lcom/google/android/gms/internal/ads/zzze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/InitializationStatus;


# instance fields
.field private final zzckg:Lcom/google/android/gms/internal/ads/zzzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzckg:Lcom/google/android/gms/internal/ads/zzzd;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzckg:Lcom/google/android/gms/internal/ads/zzzd;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzzg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzzg;-><init>(Lcom/google/android/gms/internal/ads/zzzd;)V

    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
