.class final synthetic Lcom/google/android/gms/internal/ads/zzbmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzfnx:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzfnx:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzfnx:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
