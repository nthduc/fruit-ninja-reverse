.class public Lcom/chartboost/sdk/Privacy/model/CCPA;
.super Lcom/chartboost/sdk/Privacy/model/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;
    }
.end annotation


# static fields
.field public static final CCPA_STANDARD:Ljava/lang/String; = "us_privacy"


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Privacy/model/a;-><init>()V

    if-eqz p1, :cond_1a

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Privacy/model/CCPA;->isValidConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "us_privacy"

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/Privacy/model/a;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Privacy/model/a;->b:Ljava/lang/String;

    goto :goto_2e

    .line 6
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CCPA consent values. Use provided values or Custom class. Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Privacy/model/a;->a(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public bridge synthetic getConsent()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/Privacy/model/a;->getConsent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrivacyStandard()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/Privacy/model/a;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidConsent(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-static {v0}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->a(Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-static {v0}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->a(Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public bridge synthetic toJson()Lorg/json/JSONObject;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/Privacy/model/a;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
