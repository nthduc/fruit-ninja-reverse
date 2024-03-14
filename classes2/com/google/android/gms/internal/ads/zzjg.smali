.class public final Lcom/google/android/gms/internal/ads/zzjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public iv:[B

.field private key:[B

.field private mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field private numSubSamples:I

.field private zzanv:I

.field private zzanw:I

.field private final zzanx:Landroid/media/MediaCodec$CryptoInfo;

.field private final zzany:Lcom/google/android/gms/internal/ads/zzji;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_10

    .line 3
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 4
    :goto_11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanx:Landroid/media/MediaCodec$CryptoInfo;

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/ads/zzji;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanx:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzji;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzjj;)V

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzany:Lcom/google/android/gms/internal/ads/zzji;

    return-void
.end method


# virtual methods
.method public final set(I[I[I[B[BI)V
    .registers 7

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjg;->numSubSamples:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjg;->numBytesOfClearData:[I

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->numBytesOfEncryptedData:[I

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjg;->key:[B

    .line 11
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzjg;->iv:[B

    .line 12
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzjg;->mode:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanv:I

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanw:I

    .line 15
    sget p2, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_3c

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanx:Landroid/media/MediaCodec$CryptoInfo;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->numSubSamples:I

    iput p3, p2, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 18
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->numBytesOfClearData:[I

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->numBytesOfEncryptedData:[I

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->key:[B

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->iv:[B

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 22
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzjg;->mode:I

    iput p3, p2, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 23
    sget p2, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_3c

    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzany:Lcom/google/android/gms/internal/ads/zzji;

    invoke-static {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzji;->zza(Lcom/google/android/gms/internal/ads/zzji;II)V

    :cond_3c
    return-void
.end method

.method public final zzgj()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanx:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
