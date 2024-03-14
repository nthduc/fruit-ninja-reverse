.class final synthetic Lcom/google/android/gms/internal/ads/zzdie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgzd:Lcom/google/android/gms/internal/ads/zzdif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdif;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdie;->zzgzd:Lcom/google/android/gms/internal/ads/zzdif;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdie;->zzgzd:Lcom/google/android/gms/internal/ads/zzdif;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdic;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdif;->zzgze:Lcom/google/android/gms/internal/ads/zztg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdif;->zzvr:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zztg;->zzf(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdic;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
