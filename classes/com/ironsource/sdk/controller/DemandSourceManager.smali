.class public Lcom/ironsource/sdk/controller/DemandSourceManager;
.super Ljava/lang/Object;
.source "DemandSourceManager.java"


# instance fields
.field private mBannerDemandSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialDemandSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoDemandSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mRewardedVideoDemandSourceMap:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mInterstitialDemandSourceMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mBannerDemandSourceMap:Ljava/util/Map;

    return-void
.end method

.method private addDemandSourceToDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 5

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p3, :cond_11

    .line 58
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 60
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 28
    iget-object p1, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mRewardedVideoDemandSourceMap:Ljava/util/Map;

    return-object p1

    .line 29
    :cond_13
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 30
    iget-object p1, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mInterstitialDemandSourceMap:Ljava/util/Map;

    return-object p1

    .line 31
    :cond_26
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 32
    iget-object p1, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mBannerDemandSourceMap:Ljava/util/Map;

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/IronSourceAdInstance;)Lcom/ironsource/sdk/data/DemandSource;
    .registers 7

    .line 66
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/ironsource/sdk/data/DemandSource;

    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->convertToMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getAdListener()Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p2

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/ironsource/sdk/data/DemandSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)V

    .line 68
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->addDemandSourceToDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    return-object v1
.end method

.method public createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnAdProductListener;",
            ")",
            "Lcom/ironsource/sdk/data/DemandSource;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/ironsource/sdk/data/DemandSource;

    invoke-direct {v0, p2, p2, p3, p4}, Lcom/ironsource/sdk/data/DemandSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)V

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->addDemandSourceToDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    return-object v0
.end method

.method public getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;
    .registers 4

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 48
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 50
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/data/DemandSource;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 43
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
