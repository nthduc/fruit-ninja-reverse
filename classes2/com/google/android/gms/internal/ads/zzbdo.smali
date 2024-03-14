.class final Lcom/google/android/gms/internal/ads/zzbdo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzehe:Lcom/google/android/gms/internal/ads/zzbdc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/internal/ads/zzbdc;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdo;->zzehe:Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdo;->zzehe:Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzzg()V

    return-void
.end method
