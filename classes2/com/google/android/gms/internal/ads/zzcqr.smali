.class final synthetic Lcom/google/android/gms/internal/ads/zzcqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# static fields
.field static final zzboo:Lcom/google/android/gms/internal/ads/zzdya;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcqr;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2

    .line 1
    check-cast p1, Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
