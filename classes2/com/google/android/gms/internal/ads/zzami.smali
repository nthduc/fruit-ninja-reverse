.class final Lcom/google/android/gms/internal/ads/zzami;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbci;


# instance fields
.field private final synthetic zzdfq:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final synthetic zzdit:Lcom/google/android/gms/internal/ads/zzali;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzbcg;Lcom/google/android/gms/internal/ads/zzali;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzami;->zzdfq:Lcom/google/android/gms/internal/ads/zzbcg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzami;->zzdit:Lcom/google/android/gms/internal/ads/zzali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->zzdfq:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalu;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzalu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->zzdit:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void
.end method
