.class public final Lcom/google/android/gms/ads/VideoOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzadv:Z

.field private final zzadw:Z

.field private final zzadx:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadv:Z

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadw:Z

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadx:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaak;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzadv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadv:Z

    .line 3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzadw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadw:Z

    .line 4
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzadx:Z

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadx:Z

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadx:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadw:Z

    return v0
.end method

.method public final getStartMuted()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzadv:Z

    return v0
.end method
