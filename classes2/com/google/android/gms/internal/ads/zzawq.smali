.class final synthetic Lcom/google/android/gms/internal/ads/zzawq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxf;


# static fields
.field static final zzdya:Lcom/google/android/gms/internal/ads/zzaxf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbiq;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbiq;->getAppIdOrigin()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
