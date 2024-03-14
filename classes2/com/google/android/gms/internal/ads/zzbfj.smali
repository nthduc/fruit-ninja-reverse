.class final Lcom/google/android/gms/internal/ads/zzbfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzelm:Lcom/google/android/gms/internal/ads/zzbfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzelm:Lcom/google/android/gms/internal/ads/zzbfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzln()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfj;->zzelm:Lcom/google/android/gms/internal/ads/zzbfg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfg;)V

    return-void
.end method
