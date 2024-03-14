.class final Lcom/google/android/gms/ads/internal/overlay/zzj;
.super Lcom/google/android/gms/internal/ads/zzayl;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field final synthetic zzdph:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdph:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/zzf;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    return-void
.end method


# virtual methods
.method public final zzvb()V
    .registers 6

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlk()Lcom/google/android/gms/internal/ads/zzbav;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdph:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzi;->zzbpa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->zza(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdph:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdph:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzi;->zzboy:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdph:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget v4, v4, Lcom/google/android/gms/ads/internal/zzi;->zzboz:F

    .line 5
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzj;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    return-void
.end method
