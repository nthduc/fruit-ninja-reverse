.class final Lcom/google/android/gms/internal/ads/zzsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbuz:Lcom/google/android/gms/internal/ads/zzsw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsw;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzsw;)V

    return-void
.end method
