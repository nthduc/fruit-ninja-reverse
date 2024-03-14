.class final Lcom/google/android/gms/internal/ads/zzkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzky;


# instance fields
.field private final zzawi:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxc:I

.field private final zzaxd:I

.field private zzaxe:I

.field private zzaxf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzkt;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxd:I

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxc:I

    return-void
.end method


# virtual methods
.method public final zzgy()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxc:I

    return v0
.end method

.method public final zzgz()I
    .registers 3

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxd:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    return v0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v0

    return v0

    .line 12
    :cond_18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxe:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxe:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_31

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxf:I

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxf:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 15
    :cond_31
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzaxf:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final zzha()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
