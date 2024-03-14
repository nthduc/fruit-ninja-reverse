.class final synthetic Lcom/google/android/gms/internal/ads/zzdav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# static fields
.field static final zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdav;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdav;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

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

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zzp(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
