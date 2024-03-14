.class final synthetic Lcom/google/android/gms/internal/ads/zzdep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field static final zzgww:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdep;->zzgww:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzden;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazu;->zzyf()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazu;->zzyg()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzden;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
