.class final Lcom/google/android/gms/internal/ads/zztj;
.super Lcom/google/android/gms/internal/ads/zzbcg;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbcg<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbvl:Lcom/google/android/gms/internal/ads/zztk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztk;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztk;->zza(Lcom/google/android/gms/internal/ads/zztk;)V

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->cancel(Z)Z

    move-result p1

    return p1
.end method
