.class public final enum Lcom/facebook/ads/NativeBannerAdView$Type;
.super Ljava/lang/Enum;
.source "NativeBannerAdView.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/NativeBannerAdView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/NativeBannerAdView$Type;

.field public static final enum HEIGHT_100:Lcom/facebook/ads/NativeBannerAdView$Type;

.field public static final enum HEIGHT_120:Lcom/facebook/ads/NativeBannerAdView$Type;

.field public static final enum HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;


# instance fields
.field private final mEnumCode:I

.field private mNativeAdViewTypeApi:Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 79
    new-instance v0, Lcom/facebook/ads/NativeBannerAdView$Type;

    const/4 v1, 0x0

    const-string v2, "HEIGHT_50"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/NativeBannerAdView$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    .line 85
    new-instance v0, Lcom/facebook/ads/NativeBannerAdView$Type;

    const/4 v2, 0x1

    const-string v3, "HEIGHT_100"

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/NativeBannerAdView$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeBannerAdView$Type;

    .line 91
    new-instance v0, Lcom/facebook/ads/NativeBannerAdView$Type;

    const/4 v3, 0x2

    const-string v4, "HEIGHT_120"

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/ads/NativeBannerAdView$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeBannerAdView$Type;

    const/4 v0, 0x3

    .line 72
    new-array v0, v0, [Lcom/facebook/ads/NativeBannerAdView$Type;

    sget-object v4, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeBannerAdView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeBannerAdView$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->$VALUES:[Lcom/facebook/ads/NativeBannerAdView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/facebook/ads/NativeBannerAdView$Type;->mEnumCode:I

    return-void
.end method

.method private getNativeAdViewTypeApi()Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAdView$Type;->mNativeAdViewTypeApi:Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    if-nez v0, :cond_10

    .line 130
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoaderUnsafe()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    iget v1, p0, Lcom/facebook/ads/NativeBannerAdView$Type;->mEnumCode:I

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdViewTypeApi(I)Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/NativeBannerAdView$Type;->mNativeAdViewTypeApi:Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    .line 132
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAdView$Type;->mNativeAdViewTypeApi:Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeBannerAdView$Type;
    .registers 2

    .line 72
    const-class v0, Lcom/facebook/ads/NativeBannerAdView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/NativeBannerAdView$Type;
    .registers 1

    .line 72
    sget-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->$VALUES:[Lcom/facebook/ads/NativeBannerAdView$Type;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeBannerAdView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object v0
.end method


# virtual methods
.method public getEnumCode()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/facebook/ads/NativeBannerAdView$Type;->mEnumCode:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/facebook/ads/NativeBannerAdView$Type;->getNativeAdViewTypeApi()Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;->getHeight()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 120
    invoke-direct {p0}, Lcom/facebook/ads/NativeBannerAdView$Type;->getNativeAdViewTypeApi()Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;->getValue()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 107
    invoke-direct {p0}, Lcom/facebook/ads/NativeBannerAdView$Type;->getNativeAdViewTypeApi()Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;->getWidth()I

    move-result v0

    return v0
.end method
