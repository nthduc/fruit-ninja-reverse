.class final Lcom/google/android/gms/internal/ads/zzix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzafh:Lcom/google/android/gms/internal/ads/zzhu;

.field private final zzagv:J

.field private final zzame:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhu;JJ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzix;->zzame:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzix;->zzagv:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhu;JJLcom/google/android/gms/internal/ads/zzir;)V
    .registers 7

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Lcom/google/android/gms/internal/ads/zzhu;JJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzhu;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzix;)J
    .registers 3

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzagv:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzix;)J
    .registers 3

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzame:J

    return-wide v0
.end method
