.class final Lcom/google/android/gms/internal/ads/zzbdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzegy:Lcom/google/android/gms/internal/ads/zzbdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdh;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzegy:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzegy:Lcom/google/android/gms/internal/ads/zzbdh;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceDestroyed"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdh;->zza(Lcom/google/android/gms/internal/ads/zzbdh;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
