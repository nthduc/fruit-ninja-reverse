.class final Lcom/google/android/gms/internal/ads/zzqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final synthetic zzbmr:Lcom/google/android/gms/internal/ads/zzpx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Landroid/media/MediaCodec;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbmr:Lcom/google/android/gms/internal/ads/zzpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzqa;)V
    .registers 4

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqc;-><init>(Lcom/google/android/gms/internal/ads/zzpx;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 6
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbmr:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpx;->zzbmc:Lcom/google/android/gms/internal/ads/zzqc;

    if-eq p0, p1, :cond_7

    return-void

    .line 6
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbmr:Lcom/google/android/gms/internal/ads/zzpx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzjk()V

    return-void
.end method
