.class final synthetic Lcom/google/android/gms/internal/ads/zzcdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfzf:Lcom/google/android/gms/internal/ads/zzceq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzceq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzfzf:Lcom/google/android/gms/internal/ads/zzceq;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzceq;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdz;-><init>(Lcom/google/android/gms/internal/ads/zzceq;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzfzf:Lcom/google/android/gms/internal/ads/zzceq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzceq;->zzalr()V

    return-void
.end method
