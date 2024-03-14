.class final Lcom/google/android/gms/internal/ads/zzla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzky;


# instance fields
.field private final zzawi:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxc:I

.field private final zzaxg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzkt;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxg:I

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxc:I

    return-void
.end method


# virtual methods
.method public final zzgy()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxc:I

    return v0
.end method

.method public final zzgz()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxg:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v0

    :cond_a
    return v0
.end method

.method public final zzha()Z
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxg:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
