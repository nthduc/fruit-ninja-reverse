.class final Lcom/google/android/gms/internal/ads/zzemo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzino:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzinp:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemo;->zzino:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemo;->zzinp:Ljava/lang/Iterable;

    return-void
.end method

.method static zzbis()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemo;->zzinp:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic zzbit()Ljava/util/Iterator;
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemo;->zzino:Ljava/util/Iterator;

    return-object v0
.end method
