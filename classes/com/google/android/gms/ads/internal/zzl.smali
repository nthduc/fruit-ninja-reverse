.class final Lcom/google/android/gms/ads/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic zzbpm:Lcom/google/android/gms/ads/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzj;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzbpm:Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzbpm:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzj;->zzb(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzbpm:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzj;->zzb(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/view/MotionEvent;)V

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
