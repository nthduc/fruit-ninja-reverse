.class final Lcom/google/android/gms/internal/ads/zzatp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzdvp:J

.field public final zzdvq:Lcom/google/android/gms/internal/ads/zzatl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatn;Lcom/google/android/gms/internal/ads/zzatl;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdvp:J

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdvq:Lcom/google/android/gms/internal/ads/zzatl;

    return-void
.end method
