.class final synthetic Lcom/google/android/gms/internal/ads/zzcqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgkk:Lcom/google/android/gms/internal/ads/zzcpx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqa;->zzgkk:Lcom/google/android/gms/internal/ads/zzcpx;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqa;->zzgkk:Lcom/google/android/gms/internal/ads/zzcpx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpv;->zzapz()V

    return-void
.end method
