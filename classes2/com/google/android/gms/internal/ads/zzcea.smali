.class final synthetic Lcom/google/android/gms/internal/ads/zzcea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfzg:Lcom/google/android/gms/internal/ads/zzcdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzfzg:Lcom/google/android/gms/internal/ads/zzcdx;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzfzg:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalz()V

    return-void
.end method
