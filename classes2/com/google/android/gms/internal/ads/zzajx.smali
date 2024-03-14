.class final Lcom/google/android/gms/internal/ads/zzajx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdgp:Lcom/google/android/gms/internal/ads/zzake;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzake;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzdgp:Lcom/google/android/gms/internal/ads/zzake;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzake;Lcom/google/android/gms/internal/ads/zzajy;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajx;-><init>(Lcom/google/android/gms/internal/ads/zzake;)V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzdgp:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzake;->zzdg(Ljava/lang/String;)Z

    return-void
.end method
