.class final Lcom/google/android/gms/internal/ads/zzain;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaik;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzain;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
