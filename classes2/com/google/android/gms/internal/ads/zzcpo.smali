.class final synthetic Lcom/google/android/gms/internal/ads/zzcpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# static fields
.field static final zzboo:Lcom/google/android/gms/internal/ads/zzdya;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcpo;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    .line 1
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhga:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
