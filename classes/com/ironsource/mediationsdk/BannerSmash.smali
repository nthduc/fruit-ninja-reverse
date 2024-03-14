.class public Lcom/ironsource/mediationsdk/BannerSmash;
.super Ljava/lang/Object;
.source "BannerSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

.field private mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mIsReadyToLoad:Z

.field private mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

.field private mLoadTimeoutMilisecs:J

.field private mProviderPriority:I

.field private mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;JI)V
    .registers 8

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    .line 43
    iput p6, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mProviderPriority:I

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .line 45
    iput-object p3, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 46
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 47
    iput-wide p4, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoadTimeoutMilisecs:J

    .line 48
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/BannerSmash;Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .registers 6

    .line 302
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BannerSmash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 306
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Banner exception: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private setCustomParams()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v0, :cond_5

    return-void

    .line 158
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 160
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 162
    :cond_18
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 164
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_4d

    :catch_34
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":setCustomParams():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V
    .registers 4

    .line 172
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    return-void
.end method

.method private startLoadTimer()V
    .registers 5

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 192
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimer:Ljava/util/Timer;

    .line 193
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/BannerSmash$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BannerSmash$1;-><init>(Lcom/ironsource/mediationsdk/BannerSmash;)V

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoadTimeoutMilisecs:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startLoadTimer"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->logException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private stopLoadTimer()V
    .registers 4

    const/4 v0, 0x0

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_a

    .line 179
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 184
    :cond_a
    :goto_a
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimer:Ljava/util/Timer;

    goto :goto_1a

    :catchall_d
    move-exception v1

    goto :goto_1b

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "stopLoadTimer"

    .line 182
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/BannerSmash;->logException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_d

    goto :goto_a

    :goto_1a
    return-void

    .line 184
    :goto_1b
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimer:Ljava/util/Timer;

    .line 185
    throw v1

    return-void
.end method


# virtual methods
.method public destroyBanner()V
    .registers 3

    const-string v0, "destroyBanner()"

    .line 143
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v0, :cond_f

    const-string v0, "destroyBanner() mAdapter == null"

    .line 145
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->destroyBanner(Lorg/json/JSONObject;)V

    .line 150
    sget-object v0, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->DESTROYED:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    return-void
.end method

.method public getAdSourceNameForEvents()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 76
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_13
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderPriority()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mProviderPriority:I

    return v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReadyToLoad()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReadyToLoad:Z

    return v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "loadBanner"

    .line 96
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReadyToLoad:Z

    if-eqz p1, :cond_59

    .line 100
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_59

    .line 108
    :cond_11
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v1, :cond_29

    const-string p1, "loadBanner - mAdapter is null"

    .line 109
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p3, 0x263

    const-string v1, "adapter==null"

    invoke-direct {p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, p0, v0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    return-void

    .line 114
    :cond_29
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 116
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->startLoadTimer()V

    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne v0, v1, :cond_48

    .line 118
    sget-object p1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    .line 119
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->setCustomParams()V

    .line 120
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    goto :goto_58

    .line 122
    :cond_48
    sget-object p2, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    .line 123
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    :goto_58
    return-void

    :cond_59
    :goto_59
    const-string p2, "loadBanner - bannerLayout is null or destroyed"

    .line 101
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    if-nez p1, :cond_63

    const-string p1, "banner is null"

    goto :goto_65

    :cond_63
    const-string p1, "banner is destroyed"

    .line 103
    :goto_65
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x262

    invoke-direct {p3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3, p0, v0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    return-void
.end method

.method public onBannerAdClicked()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_7

    .line 280
    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdClicked(Lcom/ironsource/mediationsdk/BannerSmash;)V

    :cond_7
    return-void
.end method

.method public onBannerAdLeftApplication()V
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_7

    .line 298
    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/BannerSmash;)V

    :cond_7
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 5

    const-string v0, "onBannerAdLoadFailed()"

    .line 264
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 266
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x25e

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 268
    :goto_13
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne v1, v2, :cond_24

    .line 269
    sget-object v1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOAD_FAILED:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    .line 270
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v1, p1, p0, v0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    goto :goto_2f

    .line 271
    :cond_24
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne v1, v2, :cond_2f

    .line 272
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v1, p1, p0, v0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    const-string v0, "onBannerAdLoaded()"

    .line 251
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 254
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne v0, v1, :cond_19

    .line 255
    sget-object v0, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    .line 256
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_2a

    .line 257
    :cond_19
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne v0, v1, :cond_2a

    .line 258
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->shouldBindBannerViewOnReload()Z

    move-result v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdReloaded(Lcom/ironsource/mediationsdk/BannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_7

    .line 292
    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/BannerSmash;)V

    :cond_7
    return-void
.end method

.method public onBannerAdScreenPresented()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_7

    .line 286
    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/BannerSmash;)V

    :cond_7
    return-void
.end method

.method public onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 5

    .line 242
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 243
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne p1, v0, :cond_1d

    .line 244
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x264

    const-string v2, "Banner init failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    .line 245
    sget-object p1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    :cond_1d
    return-void
.end method

.method public onBannerInitSuccess()V
    .registers 5

    .line 224
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 225
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mState:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    if-ne v0, v1, :cond_40

    .line 228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2a

    .line 234
    :cond_14
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->startLoadTimer()V

    .line 235
    sget-object v0, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    .line 236
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    goto :goto_40

    .line 229
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-nez v0, :cond_31

    const-string v0, "banner is null"

    goto :goto_33

    :cond_31
    const-string v0, "banner is destroyed"

    .line 230
    :goto_33
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x25d

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v2, p0, v0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method public reloadBanner()V
    .registers 5

    const-string v0, "reloadBanner()"

    .line 128
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_26

    .line 137
    :cond_10
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->startLoadTimer()V

    .line 138
    sget-object v0, Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->setState(Lcom/ironsource/mediationsdk/BannerSmash$BANNER_SMASH_STATE;)V

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void

    .line 132
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-nez v0, :cond_2d

    const-string v0, "banner is null"

    goto :goto_2f

    :cond_2d
    const-string v0, "banner is destroyed"

    .line 133
    :goto_2f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x262

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v2, p0, v0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V

    return-void
.end method

.method public setReadyToLoad(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReadyToLoad:Z

    return-void
.end method
