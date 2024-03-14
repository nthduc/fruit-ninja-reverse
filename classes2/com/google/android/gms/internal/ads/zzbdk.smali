.class final Lcom/google/android/gms/internal/ads/zzbdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzegy:Lcom/google/android/gms/internal/ads/zzbdh;

.field private final synthetic zzehb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdh;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzegy:Lcom/google/android/gms/internal/ads/zzbdh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzehb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzegy:Lcom/google/android/gms/internal/ads/zzbdh;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isVisible"

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzehb:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "windowVisibilityChanged"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdh;->zza(Lcom/google/android/gms/internal/ads/zzbdh;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
