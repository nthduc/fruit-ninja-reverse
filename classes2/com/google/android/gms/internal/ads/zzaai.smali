.class public final Lcom/google/android/gms/internal/ads/zzaai;
.super Lcom/google/android/gms/internal/ads/zzafx;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzcle:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzcle:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    return-void
.end method


# virtual methods
.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzcle:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;->shouldDelayBannerRendering(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
