.class public final Lcom/google/android/gms/internal/ads/zzry;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field final value:J

.field final zzbtz:I

.field final zzbuj:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzry;->value:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzry;->zzbuj:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzry;->zzbtz:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 6
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzry;

    if-nez v1, :cond_8

    goto :goto_1a

    .line 8
    :cond_8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzry;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzry;->value:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzry;->value:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzry;->zzbtz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzry;->zzbtz:I

    if-ne p1, v1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzry;->value:J

    long-to-int v1, v0

    return v1
.end method
