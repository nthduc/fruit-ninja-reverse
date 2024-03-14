.class final synthetic Lcom/google/android/gms/internal/ads/zzbdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzegg:Lcom/google/android/gms/internal/ads/zzbdf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbdf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzegg:Lcom/google/android/gms/internal/ads/zzbdf;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbdf;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(Lcom/google/android/gms/internal/ads/zzbdf;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzegg:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->stop()V

    return-void
.end method
