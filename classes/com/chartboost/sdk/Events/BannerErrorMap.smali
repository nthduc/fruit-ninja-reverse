.class public Lcom/chartboost/sdk/Events/BannerErrorMap;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;
    .registers 2

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    return-object v0
.end method

.method private static createBannerShowError(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)Lcom/chartboost/sdk/Events/ChartboostShowError;
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    return-object v0
.end method

.method public static mapImpressionErrorToBannerCacheError(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/chartboost/sdk/Events/ChartboostError;
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Events/BannerErrorMap$1;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_36

    .line 23
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {p0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_12
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {p0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_19
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NETWORK_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {p0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_20
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {p0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;

    move-result-object p0

    return-object p0

    .line 42
    :pswitch_27
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->ASSET_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {p0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;

    move-result-object p0

    return-object p0

    .line 46
    :pswitch_2e
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NO_AD_FOUND:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {p0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerCacheError(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)Lcom/chartboost/sdk/Events/ChartboostCacheError;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_27
        :pswitch_2e
        :pswitch_2e
        :pswitch_20
        :pswitch_19
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static mapImpressionErrorToBannerShowError(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/chartboost/sdk/Events/ChartboostError;
    .registers 3

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Events/BannerErrorMap$1;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_30

    .line 22
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-static {p0, v1}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerShowError(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)Lcom/chartboost/sdk/Events/ChartboostShowError;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_14
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerShowError(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)Lcom/chartboost/sdk/Events/ChartboostShowError;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_1b
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->PRESENTATION_FAILURE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerShowError(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)Lcom/chartboost/sdk/Events/ChartboostShowError;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_22
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-static {p0, v1}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerShowError(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)Lcom/chartboost/sdk/Events/ChartboostShowError;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_29
    sget-object p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->NO_CACHED_AD:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-static {p0, v1}, Lcom/chartboost/sdk/Events/BannerErrorMap;->createBannerShowError(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)Lcom/chartboost/sdk/Events/ChartboostShowError;

    move-result-object p0

    return-object p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_22
        :pswitch_22
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method
