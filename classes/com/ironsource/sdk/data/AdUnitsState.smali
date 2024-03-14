.class public Lcom/ironsource/sdk/data/AdUnitsState;
.super Ljava/lang/Object;
.source "AdUnitsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ironsource/sdk/data/AdUnitsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBannerAppKey:Ljava/lang/String;

.field private mBannerUserId:Ljava/lang/String;

.field private mDisplayedDemandSourceName:Ljava/lang/String;

.field private mDisplayedProduct:I

.field private mInterstitialAppKey:Ljava/lang/String;

.field private mInterstitialExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialInitSuccess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialLoadSuccess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialReportInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialReportLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialUserId:Ljava/lang/String;

.field private mOfferWallExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferwallInitSuccess:Z

.field private mOfferwallReportInit:Z

.field private mRVAppKey:Ljava/lang/String;

.field private mRVUserId:Ljava/lang/String;

.field private mShouldRestore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsState$1;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/AdUnitsState$1;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0}, Lcom/ironsource/sdk/data/AdUnitsState;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0}, Lcom/ironsource/sdk/data/AdUnitsState;->initialize()V

    .line 58
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    iput-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    iput-boolean v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_60} :catch_61

    goto :goto_64

    .line 75
    :catch_61
    invoke-direct {p0}, Lcom/ironsource/sdk/data/AdUnitsState;->initialize()V

    :goto_64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ironsource/sdk/data/AdUnitsState$1;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 324
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 325
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_e

    :catch_22
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 332
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private initialize()V
    .registers 3

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 91
    iput-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public adClosed()V
    .registers 2

    const/4 v0, -0x1

    .line 282
    iput v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public adOpened(I)V
    .registers 2

    .line 279
    iput p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedDemandSourceId()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayedProduct()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return v0
.end method

.method public getInterstitialAppKey()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialExtraParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getInterstitialUserId()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferWallExtraParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getOfferwallInitSuccess()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    return v0
.end method

.method public getRVAppKey()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRVUserId()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isInterstitialInitSuccess(Ljava/lang/String;)Z
    .registers 3

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public isInterstitialLoadSuccess(Ljava/lang/String;)Z
    .registers 3

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public reportInitInterstitial(Ljava/lang/String;)Z
    .registers 3

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public reportInitOfferwall()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    return v0
.end method

.method public reportLoadInterstitial(Ljava/lang/String;)Z
    .registers 3

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public setBannerAppKey(Ljava/lang/String;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mBannerAppKey:Ljava/lang/String;

    return-void
.end method

.method public setBannerUserId(Ljava/lang/String;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mBannerUserId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayedDemandSourceId(Ljava/lang/String;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    return-void
.end method

.method public setInterstitialAppKey(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    return-void
.end method

.method public setInterstitialExtraParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    return-void
.end method

.method public setInterstitialInitSuccess(Ljava/lang/String;Z)V
    .registers 4

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_17

    .line 202
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    .line 203
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 206
    :cond_17
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setInterstitialLoadSuccess(Ljava/lang/String;Z)V
    .registers 4

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_17

    .line 215
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    .line 216
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 219
    :cond_17
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setInterstitialUserId(Ljava/lang/String;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    return-void
.end method

.method public setOfferWallExtraParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    return-void
.end method

.method public setOfferwallInitSuccess(Z)V
    .registers 2

    .line 285
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    return-void
.end method

.method public setOfferwallReportInit(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    return-void
.end method

.method public setRVAppKey(Ljava/lang/String;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    return-void
.end method

.method public setRVUserId(Ljava/lang/String;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    return-void
.end method

.method public setReportInitInterstitial(Ljava/lang/String;Z)V
    .registers 4

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_17

    .line 240
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    .line 241
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 244
    :cond_17
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setReportLoadInterstitial(Ljava/lang/String;Z)V
    .registers 4

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_17

    .line 253
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    .line 254
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 257
    :cond_17
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setShouldRestore(Z)V
    .registers 2

    .line 275
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    return-void
.end method

.method public shouldRestore()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, ", "

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    const-string v2, "shouldRestore:"

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "displayedProduct:"

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ISReportInit:"

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ISInitSuccess:"

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ISAppKey"

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ISUserId"

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ISExtraParams"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OWReportInit"

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OWInitSuccess"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OWExtraParams"

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_89} :catch_89

    .line 363
    :catch_89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 110
    :try_start_0
    iget-boolean p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    new-instance p2, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    if-eqz p2, :cond_3f

    const/4 p2, 0x1

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-boolean p2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    if-eqz p2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    int-to-byte p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    new-instance p2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method
