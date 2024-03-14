.class final synthetic Lcom/google/android/gms/internal/ads/zzday;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# static fields
.field static final zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzday;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzday;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzday;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

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

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
