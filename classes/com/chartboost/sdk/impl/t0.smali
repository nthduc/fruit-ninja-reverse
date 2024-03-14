.class public Lcom/chartboost/sdk/impl/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    sput-object v0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-void
.end method

.method public static a()I
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .registers 2

    .line 9
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->valueOf(I)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    move-result-object p0

    .line 10
    sput-object p0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 11
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-ne p0, v0, :cond_11

    const-string p0, "PrivacyManager"

    const-string v0, "setPersonalInformationDataUseConsent set consent to UNKNOWN"

    .line 12
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V
    .registers 3

    .line 2
    invoke-interface {p0}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdpr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4
    :try_start_c
    invoke-interface {p0}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getConsent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/chartboost/sdk/impl/t0;->a(I)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    const-string p0, "PrivacyManager"

    const-string v0, "Cannot parse consent while setting GDPR"

    .line 6
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "gdpr"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 8
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/chartboost/sdk/impl/t0;->a(I)V

    :cond_11
    return-void
.end method

.method public static b()I
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method
