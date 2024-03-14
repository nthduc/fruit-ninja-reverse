.class final Lcom/google/android/gms/internal/ads/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzapg:I

.field private final zzapi:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->zzapg:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->zzapi:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/gms/internal/ads/zzkh;)V
    .registers 5

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkk;-><init>(IJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzkk;)J
    .registers 3

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->zzapi:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzkk;)I
    .registers 1

    .line 6
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzkk;->zzapg:I

    return p0
.end method
