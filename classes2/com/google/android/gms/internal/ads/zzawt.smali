.class final synthetic Lcom/google/android/gms/internal/ads/zzawt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxe;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzdyd:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzdgt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzdyd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbiq;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzdgt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzdyd:Landroid/os/Bundle;

    const-string v2, "am"

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbiq;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
