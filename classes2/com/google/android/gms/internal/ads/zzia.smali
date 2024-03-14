.class public final Lcom/google/android/gms/internal/ads/zzia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public zzafn:Ljava/lang/Object;

.field public zzagt:I

.field private zzaig:Ljava/lang/Object;

.field public zzaih:J

.field private zzaii:Z

.field private zzaij:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzia;
    .registers 9

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzia;->zzaig:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzia;->zzafn:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzia;->zzagt:I

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzia;->zzaij:J

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzia;->zzaii:Z

    return-object p0
.end method

.method public final zzfh()J
    .registers 3

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->zzaij:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzha;->zzdm(J)J

    move-result-wide v0

    return-wide v0
.end method
