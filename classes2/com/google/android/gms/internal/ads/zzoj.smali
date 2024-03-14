.class public final Lcom/google/android/gms/internal/ads/zzoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzom;


# instance fields
.field private final data:[B

.field private uri:Landroid/net/Uri;

.field private zzbia:I

.field private zzbib:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->data:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->uri:Landroid/net/Uri;

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbib:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:I

    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbib:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbib:I

    return p3
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzon;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzon;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->uri:Landroid/net/Uri;

    .line 7
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzon;->position:J

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:I

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzon;->position:J

    sub-long/2addr v0, v2

    goto :goto_1b

    :cond_19
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    :goto_1b
    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbib:I

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbib:I

    if-lez v0, :cond_2c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_2c

    int-to-long v0, v0

    return-wide v0

    .line 11
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->data:[B

    array-length p1, p1

    const/16 v4, 0x4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsatisfiable range: ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], length: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
