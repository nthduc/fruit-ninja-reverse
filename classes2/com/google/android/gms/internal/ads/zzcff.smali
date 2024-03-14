.class final Lcom/google/android/gms/internal/ads/zzcff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzads;


# instance fields
.field private final synthetic zzgbk:Lcom/google/android/gms/internal/ads/zzcgc;

.field private final synthetic zzgbl:Landroid/view/ViewGroup;

.field private final synthetic zzgbm:Lcom/google/android/gms/internal/ads/zzcfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfe;Lcom/google/android/gms/internal/ads/zzcgc;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbm:Lcom/google/android/gms/internal/ads/zzcfe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbl:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgc;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgc;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzsh()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbm:Lcom/google/android/gms/internal/ads/zzcfe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcfc;->zzgba:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfe;->zza(Lcom/google/android/gms/internal/ads/zzcfe;Lcom/google/android/gms/internal/ads/zzcgc;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbl:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgc;->onClick(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public final zzsi()Lorg/json/JSONObject;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcff;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzsi()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
