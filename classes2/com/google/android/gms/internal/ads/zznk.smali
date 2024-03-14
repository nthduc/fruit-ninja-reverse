.class final Lcom/google/android/gms/internal/ads/zznk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzawj:J

.field public final zzbgl:J

.field public zzbgm:Z

.field public zzbgn:Lcom/google/android/gms/internal/ads/zzoh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzbgo:Lcom/google/android/gms/internal/ads/zznk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbgl:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzawj:J

    return-void
.end method


# virtual methods
.method public final zzik()Lcom/google/android/gms/internal/ads/zznk;
    .registers 2

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbgo:Lcom/google/android/gms/internal/ads/zznk;

    return-object v0
.end method
