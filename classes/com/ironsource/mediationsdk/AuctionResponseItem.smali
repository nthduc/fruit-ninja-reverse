.class public Lcom/ironsource/mediationsdk/AuctionResponseItem;
.super Ljava/lang/Object;
.source "AuctionResponseItem.java"


# instance fields
.field private mBurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceName:Ljava/lang/String;

.field private mIsValid:Z

.field private mLurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrice:Ljava/lang/String;

.field private mServerData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    const-string p1, ""

    .line 20
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 11

    const-string v0, "nurl"

    const-string v1, "lurl"

    const-string v2, "burl"

    const-string v3, "price"

    const-string v4, "serverData"

    const-string v5, "adMarkup"

    const-string v6, "instance"

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    .line 29
    iput-boolean v7, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    .line 31
    :try_start_14
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 32
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    .line 35
    :cond_20
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 36
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    goto :goto_3e

    .line 38
    :cond_2d
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 39
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    goto :goto_3e

    :cond_3a
    const-string v4, ""

    .line 42
    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    .line 45
    :goto_3e
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 46
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    goto :goto_4f

    :cond_4b
    const-string v3, "0"

    .line 48
    iput-object v3, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    :goto_4f
    const-string v3, "notifications"

    .line 51
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    .line 55
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 56
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    :goto_67
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_79

    .line 58
    iget-object v4, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 62
    :cond_79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    .line 64
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    :goto_8b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9d

    .line 67
    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 71
    :cond_9d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 75
    :goto_ae
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_c0

    .line 76
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_bd} :catch_c3

    add-int/lit8 v7, v7, 0x1

    goto :goto_ae

    :cond_c0
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    :catch_c3
    return-void
.end method


# virtual methods
.method public getBurls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLurls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    return-object v0
.end method

.method public getNurls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getServerData()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return v0
.end method
