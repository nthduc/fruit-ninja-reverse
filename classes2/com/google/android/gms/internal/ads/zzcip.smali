.class final Lcom/google/android/gms/internal/ads/zzcip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzenm:Ljava/lang/String;

.field private final synthetic zzgem:Lcom/google/android/gms/internal/ads/zzahq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzenm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzgem:Lcom/google/android/gms/internal/ads/zzahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzenm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzgem:Lcom/google/android/gms/internal/ads/zzahq;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
