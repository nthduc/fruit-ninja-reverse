.class final Lcom/google/android/gms/internal/ads/zziz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzie;


# instance fields
.field private zzahm:I

.field private zzalf:Ljava/nio/ByteBuffer;

.field private zzami:I

.field private zzamj:[I

.field private zzamk:Z

.field private zzaml:[I

.field private zzamm:Ljava/nio/ByteBuffer;

.field private zzamn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zziz;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zziz;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzalf:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzami:I

    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 2

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/ads/zziz;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzalf:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamn:Z

    return-void
.end method

.method public final isActive()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamk:Z

    return v0
.end method

.method public final reset()V
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziz;->flush()V

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/zziz;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    .line 59
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzami:I

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamk:Z

    return-void
.end method

.method public final zzb([I)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamj:[I

    return-void
.end method

.method public final zzb(III)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamj:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamj:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 12
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamk:Z

    return v0

    :cond_16
    const/4 v2, 0x2

    if-ne p3, v2, :cond_50

    if-nez v0, :cond_24

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzami:I

    if-ne v0, p1, :cond_24

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    if-ne v0, p2, :cond_24

    return v3

    .line 18
    :cond_24
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzami:I

    .line 19
    iput p2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    array-length v0, v0

    if-eq p2, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamk:Z

    const/4 v0, 0x0

    .line 21
    :goto_33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    array-length v4, v2

    if-ge v0, v4, :cond_4f

    .line 22
    aget v2, v2, v0

    if-ge v2, p2, :cond_49

    .line 25
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamk:Z

    if-eq v2, v0, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamk:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 24
    :cond_49
    new-instance v0, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzih;-><init>(III)V

    throw v0

    :cond_4f
    return v1

    .line 15
    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzih;-><init>(III)V

    throw v0

    return-void
.end method

.method public final zzfe()Z
    .registers 3

    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamn:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzalf:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zziz;->zzaiy:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfj()I
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    return v0

    :cond_7
    array-length v0, v0

    return v0
.end method

.method public final zzfk()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final zzfl()V
    .registers 2

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamn:Z

    return-void
.end method

.method public final zzfm()Ljava/nio/ByteBuffer;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzalf:Ljava/nio/ByteBuffer;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zziz;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzalf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzn(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 33
    iget v3, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    .line 34
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    array-length v3, v3

    mul-int v2, v2, v3

    shl-int/lit8 v2, v2, 0x1

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_2d

    .line 36
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    goto :goto_32

    .line 37
    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_32
    if-ge v0, v1, :cond_51

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzaml:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_4b

    aget v5, v2, v4

    .line 40
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 42
    :cond_4b
    iget v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzahm:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_32

    .line 43
    :cond_51
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzamm:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzalf:Ljava/nio/ByteBuffer;

    return-void
.end method
