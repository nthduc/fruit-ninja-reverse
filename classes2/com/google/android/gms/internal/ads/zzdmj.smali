.class final synthetic Lcom/google/android/gms/internal/ads/zzdmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzdjk:Ljava/lang/String;

.field private final zzfuw:Lcom/google/android/gms/internal/ads/zzatw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzdjk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzdjk:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavl;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzavu;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatw;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatw;->getAmount()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-interface {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzavl;->zza(Lcom/google/android/gms/internal/ads/zzaux;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
