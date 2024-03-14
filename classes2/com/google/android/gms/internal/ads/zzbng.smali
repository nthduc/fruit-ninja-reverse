.class final synthetic Lcom/google/android/gms/internal/ads/zzbng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfnx:Lorg/json/JSONObject;

.field private final zzfoy:Lcom/google/android/gms/internal/ads/zzbnd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnd;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbng;->zzfoy:Lcom/google/android/gms/internal/ads/zzbnd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbng;->zzfnx:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbng;->zzfoy:Lcom/google/android/gms/internal/ads/zzbnd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbng;->zzfnx:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnd;->zzi(Lorg/json/JSONObject;)V

    return-void
.end method
