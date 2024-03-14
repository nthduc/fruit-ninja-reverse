.class final Lcom/google/android/gms/internal/ads/zzeis;
.super Lcom/google/android/gms/internal/ads/zzeiz;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzieu:I

.field private final zziev:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzeis;->zzi(III)I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzieu:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeis;->zziev:I

    return-void
.end method


# virtual methods
.method public final size()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zziev:I

    return v0
.end method

.method protected final zzb([BIII)V
    .registers 7

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzifc:[B

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiz;->zzbem()I

    move-result v1

    add-int/2addr v1, p2

    .line 13
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zzbem()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzieu:I

    return v0
.end method

.method public final zzfu(I)B
    .registers 4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeis;->zzaa(II)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzifc:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzieu:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method final zzfv(I)B
    .registers 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzifc:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzieu:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method
