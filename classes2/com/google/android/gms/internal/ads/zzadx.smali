.class public final Lcom/google/android/gms/internal/ads/zzadx;
.super Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private text:Ljava/lang/String;

.field private final zzddd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzddo:Lcom/google/android/gms/internal/ads/zzadw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadw;)V
    .registers 6

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzddd:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzddo:Lcom/google/android/gms/internal/ads/zzadw;

    .line 4
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzddo:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadw;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadx;->text:Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->text:Ljava/lang/String;

    .line 9
    :goto_1d
    :try_start_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzsb()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_4a

    .line 12
    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_4a

    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 14
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 15
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzaee;

    if-eqz v3, :cond_44

    .line 16
    check-cast v2, Lcom/google/android/gms/internal/ads/zzaee;

    goto :goto_4b

    .line 17
    :cond_44
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(Landroid/os/IBinder;)V

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    if-eqz v2, :cond_25

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzddd:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaef;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaee;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_57} :catch_59

    goto :goto_25

    :cond_58
    return-void

    :catch_59
    move-exception p1

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzddd:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->text:Ljava/lang/String;

    return-object v0
.end method
