.class public final Lcom/google/android/gms/internal/ads/zzcdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfxs:Lorg/json/JSONObject;

.field private final zzfyk:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcil;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzfxs:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzfyk:Lcom/google/android/gms/internal/ads/zzcil;

    return-void
.end method


# virtual methods
.method public final zzals()Lorg/json/JSONObject;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzfxs:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzalt()Lcom/google/android/gms/internal/ads/zzcil;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzfyk:Lcom/google/android/gms/internal/ads/zzcil;

    return-object v0
.end method
