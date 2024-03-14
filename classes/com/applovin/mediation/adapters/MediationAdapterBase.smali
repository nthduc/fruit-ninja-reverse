.class public abstract Lcom/applovin/mediation/adapters/MediationAdapterBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/mediation/adapter/MaxAdapter;


# instance fields
.field private alwaysRewardUser:Z

.field private final mLogger:Lcom/applovin/impl/sdk/q;

.field private final mSdk:Lcom/applovin/impl/sdk/j;

.field private final mTag:Ljava/lang/String;

.field private final mWrappingSdk:Lcom/applovin/sdk/AppLovinSdk;

.field private reward:Lcom/applovin/mediation/MaxReward;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mWrappingSdk:Lcom/applovin/sdk/AppLovinSdk;

    iget-object p1, p1, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mSdk:Lcom/applovin/impl/sdk/j;

    iget-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    return-void
.end method

.method protected static mediationTag()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinSdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs checkActivities(Landroid/content/Context;[Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs checkExistence([Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_26

    array-length v0, p1

    if-lez v0, :cond_26

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_26
    return-void
.end method

.method protected configureReward(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V
    .registers 5

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getServerParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->isTesting()Z

    move-result p1

    const-string v1, "always_reward_user"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getBoolean(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->alwaysRewardUser:Z

    const-string p1, "amount"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result p1

    const-string v1, "currency"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating reward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/applovin/mediation/MaxReward;->create(ILjava/lang/String;)Lcom/applovin/mediation/MaxReward;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->reward:Lcom/applovin/mediation/MaxReward;

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected getReward()Lcom/applovin/mediation/MaxReward;
    .registers 2

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->reward:Lcom/applovin/mediation/MaxReward;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Lcom/applovin/mediation/MaxReward;->createDefault()Lcom/applovin/mediation/MaxReward;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method getVersionString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/r;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p2, "Failed to retrieve version string."

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    :cond_b
    return-object p1
.end method

.method protected getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;
    .registers 2

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mWrappingSdk:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method protected i(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected shouldAlwaysRewardUser()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->alwaysRewardUser:Z

    return v0
.end method

.method protected w(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
