.class public Lcom/chartboost/sdk/Privacy/model/Custom;
.super Lcom/chartboost/sdk/Privacy/model/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Privacy/model/a;-><init>()V

    if-eqz p1, :cond_43

    if-nez p2, :cond_8

    goto :goto_43

    .line 7
    :cond_8
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Privacy/model/Custom;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "Invalid Custom privacy standard name. Cannot use GDPR as privacy standard"

    .line 8
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Privacy/model/a;->a(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_14
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Privacy/model/Custom;->isValidConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/Privacy/model/Custom;->isValidConsent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_26

    .line 19
    :cond_21
    iput-object p1, p0, Lcom/chartboost/sdk/Privacy/model/a;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/chartboost/sdk/Privacy/model/a;->b:Ljava/lang/String;

    return-void

    .line 21
    :cond_26
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Custom consent values. Use valid values between 0 and 100 characters. privacyStandard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " consent: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Privacy/model/a;->a(Ljava/lang/String;)V

    return-void

    :cond_43
    :goto_43
    const-string p1, "Invalid Custom privacy standard name. Values cannot be null"

    .line 22
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Privacy/model/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gdpr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    const/16 v1, 0x64

    if-ge p1, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public bridge synthetic toJson()Lorg/json/JSONObject;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/Privacy/model/a;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
