.class abstract Lcom/google/android/gms/internal/ads/zzekt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzikz:Lcom/google/android/gms/internal/ads/zzekt;

.field private static final zzila:Lcom/google/android/gms/internal/ads/zzekt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzekv;-><init>(Lcom/google/android/gms/internal/ads/zzekw;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekt;->zzikz:Lcom/google/android/gms/internal/ads/zzekt;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeky;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeky;-><init>(Lcom/google/android/gms/internal/ads/zzekw;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekt;->zzila:Lcom/google/android/gms/internal/ads/zzekt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekw;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekt;-><init>()V

    return-void
.end method

.method static zzbhl()Lcom/google/android/gms/internal/ads/zzekt;
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekt;->zzikz:Lcom/google/android/gms/internal/ads/zzekt;

    return-object v0
.end method

.method static zzbhm()Lcom/google/android/gms/internal/ads/zzekt;
    .registers 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekt;->zzila:Lcom/google/android/gms/internal/ads/zzekt;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
