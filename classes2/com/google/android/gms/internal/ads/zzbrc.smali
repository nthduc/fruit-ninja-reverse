.class final Lcom/google/android/gms/internal/ads/zzbrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzbqu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfsd:Lcom/google/android/gms/internal/ads/zzdyr;

.field private final synthetic zzfse:Lcom/google/android/gms/internal/ads/zzbqv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzdyr;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfse:Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfsd:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqu;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfse:Lcom/google/android/gms/internal/ads/zzbqv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbqu;->zzfrx:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfsd:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbqv;->zza(Lcom/google/android/gms/internal/ads/zzbqv;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdyr;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfsd:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfse:Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zza(Lcom/google/android/gms/internal/ads/zzbqv;)V

    return-void
.end method
