.class public Lcom/google/android/gms/internal/ads/zzdyo;
.super Lcom/google/android/gms/internal/ads/zzdyp;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyp<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final zzhtd:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyp;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzhtd:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method


# virtual methods
.method protected final synthetic zzaxh()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzayg()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zzayf()Ljava/util/concurrent/Future;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzayg()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method protected final zzayg()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyo;->zzhtd:Lcom/google/android/gms/internal/ads/zzdzc;

    return-object v0
.end method
