.class final synthetic Lcom/google/android/gms/internal/ads/zzdis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# static fields
.field static final zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdis;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdiq;

    check-cast p1, Landroid/location/Location;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdiq;-><init>(Landroid/location/Location;)V

    return-object v0
.end method
