.class final synthetic Lcom/google/android/gms/internal/ads/zztz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbs;


# static fields
.field static final zzbxx:Lcom/google/android/gms/internal/ads/zzbbs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztz;->zzbxx:Lcom/google/android/gms/internal/ads/zzbbs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgz;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzgx;

    move-result-object p1

    return-object p1
.end method
