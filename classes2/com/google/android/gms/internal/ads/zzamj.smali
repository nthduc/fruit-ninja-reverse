.class final synthetic Lcom/google/android/gms/internal/ads/zzamj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbck;


# instance fields
.field private final zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final zzh(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void
.end method
