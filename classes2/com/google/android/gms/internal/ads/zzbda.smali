.class final Lcom/google/android/gms/internal/ads/zzbda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzefy:Lcom/google/android/gms/internal/ads/zzbcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcs;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zza(Lcom/google/android/gms/internal/ads/zzbcs;)Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zza(Lcom/google/android/gms/internal/ads/zzbcs;)Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzzd()V

    :cond_11
    return-void
.end method
