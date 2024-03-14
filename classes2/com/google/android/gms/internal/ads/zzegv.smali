.class public final Lcom/google/android/gms/internal/ads/zzegv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzicj:Lcom/google/android/gms/internal/ads/zzehm;

.field private final zzick:Lcom/google/android/gms/internal/ads/zzehm;


# direct methods
.method public constructor <init>([B[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehm;->zzs([B)Lcom/google/android/gms/internal/ads/zzehm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzicj:Lcom/google/android/gms/internal/ads/zzehm;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzs([B)Lcom/google/android/gms/internal/ads/zzehm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzick:Lcom/google/android/gms/internal/ads/zzehm;

    return-void
.end method


# virtual methods
.method public final zzbdo()[B
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzicj:Lcom/google/android/gms/internal/ads/zzehm;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehm;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzbdp()[B
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzick:Lcom/google/android/gms/internal/ads/zzehm;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehm;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
