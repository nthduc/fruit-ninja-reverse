.class public final Lcom/google/android/gms/internal/ads/zzkd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzke;


# instance fields
.field private final zzaih:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzaih:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .registers 3

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzaih:J

    return-wide v0
.end method

.method public final isSeekable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzdz(J)J
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method
