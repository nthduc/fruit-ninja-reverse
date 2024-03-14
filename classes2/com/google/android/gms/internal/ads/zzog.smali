.class public abstract Lcom/google/android/gms/internal/ads/zzog;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzbhv:Lcom/google/android/gms/internal/ads/zzof;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final invalidate()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzog;->zzbhv:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzes()V

    :cond_7
    return-void
.end method

.method public abstract zza([Lcom/google/android/gms/internal/ads/zzhw;Lcom/google/android/gms/internal/ads/zznp;)Lcom/google/android/gms/internal/ads/zzoi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzof;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzog;->zzbhv:Lcom/google/android/gms/internal/ads/zzof;

    return-void
.end method

.method public abstract zzd(Ljava/lang/Object;)V
.end method
