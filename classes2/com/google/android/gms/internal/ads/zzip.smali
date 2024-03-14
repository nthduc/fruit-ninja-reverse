.class final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajd:Lcom/google/android/gms/internal/ads/zzij;

.field private final synthetic zzalp:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzij;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzalp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzij;->zza(Lcom/google/android/gms/internal/ads/zzij;)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzalp:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzx(I)V

    return-void
.end method
