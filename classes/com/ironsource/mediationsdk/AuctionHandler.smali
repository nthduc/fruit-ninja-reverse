.class public Lcom/ironsource/mediationsdk/AuctionHandler;
.super Ljava/lang/Object;
.source "AuctionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;
    }
.end annotation


# static fields
.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# instance fields
.field private final AUCTION_INTERNAL_ERROR_LOSS_CODE:Ljava/lang/String;

.field private final AUCTION_LOST_TO_NON_BIDDER_LOSS_CODE:Ljava/lang/String;

.field private final AUCTION_NOT_HIGHEST_RTB_BIDDER_LOSS_CODE:Ljava/lang/String;

.field private final GENERIC_NOTIFICATIONS_DEFAULT_LOSS_CODE:Ljava/lang/String;

.field private mAdUnit:Ljava/lang/String;

.field private mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

.field private mSessionId:Ljava/lang/String;

.field private mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    .line 46
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->AUCTION_INTERNAL_ERROR_LOSS_CODE:Ljava/lang/String;

    const-string v0, "102"

    .line 47
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->AUCTION_NOT_HIGHEST_RTB_BIDDER_LOSS_CODE:Ljava/lang/String;

    const-string v1, "103"

    .line 48
    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->AUCTION_LOST_TO_NON_BIDDER_LOSS_CODE:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->GENERIC_NOTIFICATIONS_DEFAULT_LOSS_CODE:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 60
    iput-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    .line 61
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method private generateRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;IZ)Lorg/json/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/AuctionHistory;",
            "IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v1

    iget-object v7, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSessionId:Ljava/lang/String;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILjava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;)Lorg/json/JSONObject;

    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    const-string p3, "adUnit"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p6, :cond_22

    const-string p2, "false"

    goto :goto_24

    :cond_22
    const-string p2, "true"

    :goto_24
    const-string p3, "doNotEncryptResponse"

    .line 155
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/AuctionHistory;",
            "I)V"
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move v9, v0

    .line 67
    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/AuctionHandler;->generateRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;IZ)Lorg/json/JSONObject;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    invoke-direct {p2, p3}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;-><init>(Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    const/4 p3, 0x5

    .line 69
    new-array p3, p3, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getUrl()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v1

    aput-object p1, p3, v2

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p3, p1

    const/4 p1, 0x3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p1

    const/4 p1, 0x4

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTrialsInterval()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, p1

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_60

    :catch_4f
    move-exception p1

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    const/16 v1, 0x3e8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v4, "other"

    invoke-interface/range {v0 .. v6}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_60
    return-void
.end method

.method public reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgSmash;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;I",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-virtual {p5}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getPrice()Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgSmash;

    .line 109
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p5}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v0, 0x1

    .line 114
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgSmash;->isBidder()Z

    move-result v1

    goto :goto_9

    .line 117
    :cond_29
    invoke-virtual {p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_39

    if-eqz v1, :cond_36

    const-string v3, "102"

    goto :goto_3b

    :cond_36
    const-string v3, "103"

    goto :goto_3b

    :cond_39
    const-string v3, "1"

    .line 135
    :goto_3b
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getLurls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v4

    const-string v9, ""

    move v6, p3

    move-object v7, p5

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_43

    :cond_65
    if-eqz p4, :cond_92

    .line 143
    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getLurls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    const-string v4, "102"

    const-string v5, ""

    move v2, p3

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_6f

    :cond_92
    return-void
.end method

.method public reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V
    .registers 13

    .line 76
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const-string v6, ""

    move v4, p2

    move-object v5, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_8

    :cond_2a
    if-eqz p3, :cond_56

    .line 82
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_34
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v1

    const-string v5, "102"

    move v3, p2

    move-object v4, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_34

    :cond_56
    return-void
.end method

.method public reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .registers 12

    .line 90
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getNurls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const-string v6, ""

    const-string v7, ""

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_8

    :cond_2b
    if-eqz p3, :cond_58

    .line 96
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getNurls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_35
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v1

    const-string v5, "102"

    const-string v6, ""

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_35

    :cond_58
    return-void
.end method
