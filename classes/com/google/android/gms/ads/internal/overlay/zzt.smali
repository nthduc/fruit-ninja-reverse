.class public final Lcom/google/android/gms/ads/internal/overlay/zzt;
.super Lcom/google/android/gms/ads/internal/overlay/zze;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzdox:I

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
