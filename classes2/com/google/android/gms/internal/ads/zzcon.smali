.class final synthetic Lcom/google/android/gms/internal/ads/zzcon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# static fields
.field static final zzgjj:Lcom/google/android/gms/internal/ads/zzdrp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcon;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcon;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcon;->zzgjj:Lcom/google/android/gms/internal/ads/zzdrp;

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

    .line 1
    check-cast p1, Ljava/lang/Exception;

    const-string p1, ""

    return-object p1
.end method
