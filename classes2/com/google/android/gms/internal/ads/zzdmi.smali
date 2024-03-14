.class final synthetic Lcom/google/android/gms/internal/ads/zzdmi;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaug;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaug;->zza(Lcom/google/android/gms/internal/ads/zzatw;)V

    return-void
.end method
