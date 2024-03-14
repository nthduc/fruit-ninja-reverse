.class public Lcom/applovin/sdk/AppLovinPrivacySettings;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUserConsent(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/applovin/impl/sdk/g;->b()Lcom/applovin/impl/sdk/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isAgeRestrictedUser(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Lcom/applovin/impl/sdk/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isDoNotSell(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/applovin/impl/sdk/g;->c()Lcom/applovin/impl/sdk/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static setDoNotSell(ZLandroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/g;->c(ZLandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/applovin/sdk/AppLovinSdk;->reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_e
    return-void
.end method

.method public static setHasUserConsent(ZLandroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/g;->b(ZLandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/applovin/sdk/AppLovinSdk;->reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_e
    return-void
.end method

.method public static setIsAgeRestrictedUser(ZLandroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/g;->a(ZLandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0, p1}, Lcom/applovin/sdk/AppLovinSdk;->reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_e
    return-void
.end method
