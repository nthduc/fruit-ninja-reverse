.class public final Lcom/google/android/gms/internal/ads/zzaef;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I

.field private final zzddl:D

.field private final zzddq:Lcom/google/android/gms/internal/ads/zzaee;

.field private final zzddr:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaee;)V
    .registers 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddq:Lcom/google/android/gms/internal/ads/zzaee;

    const/4 p1, 0x0

    .line 4
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddq:Lcom/google/android/gms/internal/ads/zzaee;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaee;->zzsg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    move-exception v1

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    move-object v1, p1

    .line 10
    :goto_1c
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddr:Landroid/graphics/drawable/Drawable;

    .line 12
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddq:Lcom/google/android/gms/internal/ads/zzaee;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaee;->getUri()Landroid/net/Uri;

    move-result-object p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->uri:Landroid/net/Uri;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 18
    :try_start_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddq:Lcom/google/android/gms/internal/ads/zzaee;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaee;->getScale()D

    move-result-wide v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_38
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddl:D

    const/4 p1, -0x1

    .line 24
    :try_start_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddq:Lcom/google/android/gms/internal/ads/zzaee;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaee;->getWidth()I

    move-result v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_47

    :catch_42
    move-exception v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 28
    :goto_47
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->width:I

    .line 30
    :try_start_49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddq:Lcom/google/android/gms/internal/ads/zzaee;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaee;->getHeight()I

    move-result p1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_54
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->height:I

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddr:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->height:I

    return v0
.end method

.method public final getScale()D
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzddl:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->width:I

    return v0
.end method
