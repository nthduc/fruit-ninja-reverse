.class final Lcom/google/android/gms/internal/ads/zzcii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzads;


# instance fields
.field private final synthetic zzgef:Lcom/google/android/gms/internal/ads/zzcif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcif;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzgef:Lcom/google/android/gms/internal/ads/zzcif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final zzsh()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzgef:Lcom/google/android/gms/internal/ads/zzcif;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcif;->zza(Lcom/google/android/gms/internal/ads/zzcif;)Lcom/google/android/gms/internal/ads/zzcdx;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzgef:Lcom/google/android/gms/internal/ads/zzcif;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcif;->zza(Lcom/google/android/gms/internal/ads/zzcif;)Lcom/google/android/gms/internal/ads/zzcdx;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzfz(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final zzsi()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
