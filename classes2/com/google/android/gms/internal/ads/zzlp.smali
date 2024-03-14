.class final Lcom/google/android/gms/internal/ads/zzlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public zzaxc:I

.field public zzbaj:Lcom/google/android/gms/internal/ads/zzlb;

.field public zzbak:J

.field public zzbal:J

.field public zzbam:J

.field public zzban:I

.field public zzbao:[J

.field public zzbap:[I

.field public zzbaq:[I

.field public zzbar:[I

.field public zzbas:[J

.field public zzbat:[Z

.field public zzbau:Z

.field public zzbav:[Z

.field public zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

.field public zzbax:I

.field public zzbay:Lcom/google/android/gms/internal/ads/zzpk;

.field public zzbaz:Z

.field public zzbba:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaw(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v0

    if-ge v0, p1, :cond_11

    .line 3
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    .line 4
    :cond_11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbax:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbau:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbaz:Z

    return-void
.end method

.method public final zzax(I)J
    .registers 7

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbas:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzbar:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method
