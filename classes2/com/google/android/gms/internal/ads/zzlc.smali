.class final Lcom/google/android/gms/internal/ads/zzlc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final id:I

.field private final zzahh:I

.field private final zzdh:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlc;->id:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzdh:J

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzahh:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzlc;)J
    .registers 3

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzdh:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzlc;)I
    .registers 1

    .line 7
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlc;->id:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzlc;)I
    .registers 1

    .line 8
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzahh:I

    return p0
.end method
