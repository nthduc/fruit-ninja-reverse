.class public final Lcom/google/android/gms/internal/ads/zzadq;
.super Lcom/google/android/gms/internal/ads/zzaed;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I

.field private final zzddk:Landroid/graphics/drawable/Drawable;

.field private final zzddl:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaed;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzddk:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadq;->uri:Landroid/net/Uri;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzddl:D

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzadq;->width:I

    .line 6
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzadq;->height:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->height:I

    return v0
.end method

.method public final getScale()D
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzddl:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->width:I

    return v0
.end method

.method public final zzsg()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzddk:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
