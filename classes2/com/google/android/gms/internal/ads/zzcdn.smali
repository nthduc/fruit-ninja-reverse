.class public final Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfyp:Lcom/google/android/gms/internal/ads/zzcdl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdl;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyp:Lcom/google/android/gms/internal/ads/zzcdl;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyp:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzals()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
