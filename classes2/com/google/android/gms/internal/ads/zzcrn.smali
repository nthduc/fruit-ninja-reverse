.class public final Lcom/google/android/gms/internal/ads/zzcrn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzglk:Lorg/json/JSONObject;

.field private final zzgll:Lcom/google/android/gms/internal/ads/zzati;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzati;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzglk:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzgll:Lcom/google/android/gms/internal/ads/zzati;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcrn;)Lcom/google/android/gms/internal/ads/zzati;
    .registers 1

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzgll:Lcom/google/android/gms/internal/ads/zzati;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcrn;)Lorg/json/JSONObject;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzglk:Lorg/json/JSONObject;

    return-object p0
.end method
