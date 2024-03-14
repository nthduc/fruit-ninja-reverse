.class final Lcom/google/android/gms/internal/ads/zzbcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

.field private final synthetic zzega:Ljava/lang/String;

.field private final synthetic zzegb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcs;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzega:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzegb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zza(Lcom/google/android/gms/internal/ads/zzbcs;)Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzefy:Lcom/google/android/gms/internal/ads/zzbcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zza(Lcom/google/android/gms/internal/ads/zzbcs;)Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzega:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zzegb:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
