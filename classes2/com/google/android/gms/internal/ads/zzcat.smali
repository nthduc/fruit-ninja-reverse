.class final synthetic Lcom/google/android/gms/internal/ads/zzcat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyt;


# static fields
.field static final zzfur:Lcom/google/android/gms/internal/ads/zzbyt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcat;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcat;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    return-void
.end method
