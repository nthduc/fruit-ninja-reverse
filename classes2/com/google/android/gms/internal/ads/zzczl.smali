.class final synthetic Lcom/google/android/gms/internal/ads/zzczl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgsz:Lcom/google/android/gms/internal/ads/zzczs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzczs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczl;->zzgsz:Lcom/google/android/gms/internal/ads/zzczs;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzczs;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzczl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzczl;-><init>(Lcom/google/android/gms/internal/ads/zzczs;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczl;->zzgsz:Lcom/google/android/gms/internal/ads/zzczs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczs;->onAdLoaded()V

    return-void
.end method
