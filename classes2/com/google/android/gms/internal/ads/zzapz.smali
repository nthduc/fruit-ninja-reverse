.class final Lcom/google/android/gms/internal/ads/zzapz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdmu:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private final synthetic zzdmv:Lcom/google/android/gms/internal/ads/zzapx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapx;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdmu:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzapx;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapz;->zzdmu:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
