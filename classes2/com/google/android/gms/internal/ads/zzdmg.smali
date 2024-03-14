.class final synthetic Lcom/google/android/gms/internal/ads/zzdmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# instance fields
.field private final zzfuw:Lcom/google/android/gms/internal/ads/zzatw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavd;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatw;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatw;->getAmount()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzavd;->zza(Lcom/google/android/gms/internal/ads/zzaux;)V

    return-void
.end method
