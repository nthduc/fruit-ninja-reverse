.class final Lcom/google/android/gms/internal/ads/zzmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbek:Lcom/google/android/gms/internal/ads/zzmn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmn;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmn;->zzb(Lcom/google/android/gms/internal/ads/zzmn;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmn;->zzc(Lcom/google/android/gms/internal/ads/zzmn;)Lcom/google/android/gms/internal/ads/zzna;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzna;->zza(Lcom/google/android/gms/internal/ads/zznl;)V

    :cond_13
    return-void
.end method
