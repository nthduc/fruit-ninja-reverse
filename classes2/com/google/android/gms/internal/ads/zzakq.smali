.class final Lcom/google/android/gms/internal/ads/zzakq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdhc:Lcom/google/android/gms/internal/ads/zzakk;

.field private final synthetic zzdhe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdhc:Lcom/google/android/gms/internal/ads/zzakk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdhe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdhc:Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdhe:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
