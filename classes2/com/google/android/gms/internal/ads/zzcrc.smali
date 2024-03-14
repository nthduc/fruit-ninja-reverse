.class final synthetic Lcom/google/android/gms/internal/ads/zzcrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# static fields
.field static final zzgjj:Lcom/google/android/gms/internal/ads/zzdrp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcrc;->zzgjj:Lcom/google/android/gms/internal/ads/zzdrp;

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

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "Ad request signals:"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-object p1
.end method
