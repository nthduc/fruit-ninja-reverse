.class final synthetic Lcom/google/android/gms/internal/ads/zzcrb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalv;


# static fields
.field static final zzdin:Lcom/google/android/gms/internal/ads/zzalv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdin:Lcom/google/android/gms/internal/ads/zzalv;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzati;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzati;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
