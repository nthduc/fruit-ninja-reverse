.class final synthetic Lcom/google/android/gms/internal/ads/zzavr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbs;


# static fields
.field static final zzbxx:Lcom/google/android/gms/internal/ads/zzbbs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavr;->zzbxx:Lcom/google/android/gms/internal/ads/zzbbs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator"

    .line 4
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzave;

    if-eqz v1, :cond_13

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzave;

    return-object v0

    .line 7
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzavh;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
