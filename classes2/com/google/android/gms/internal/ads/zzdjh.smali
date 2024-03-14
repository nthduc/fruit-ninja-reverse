.class final synthetic Lcom/google/android/gms/internal/ads/zzdjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# static fields
.field static final zzgzq:Lcom/google/android/gms/internal/ads/zzdgx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdjh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdjh;->zzgzq:Lcom/google/android/gms/internal/ads/zzdgx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdjg;->zzgxw:Lcom/google/android/gms/internal/ads/zzdgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
