.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzadv:Z

.field private zzadw:Z

.field private zzadx:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadv:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadw:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadx:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadv:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadw:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadx:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/VideoOptions;
    .registers 3

    .line 11
    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V

    return-object v0
.end method

.method public final setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadx:Z

    return-object p0
.end method

.method public final setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadw:Z

    return-object p0
.end method

.method public final setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadv:Z

    return-object p0
.end method
