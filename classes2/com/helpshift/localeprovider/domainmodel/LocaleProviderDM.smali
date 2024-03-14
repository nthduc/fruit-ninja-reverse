.class public Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;
.super Ljava/lang/Object;
.source "LocaleProviderDM.java"


# instance fields
.field private device:Lcom/helpshift/common/platform/Device;

.field private previousLocale:Ljava/util/Locale;

.field private sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;Lcom/helpshift/common/platform/Platform;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 21
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getDevice()Lcom/helpshift/common/platform/Device;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->device:Lcom/helpshift/common/platform/Device;

    return-void
.end method


# virtual methods
.method public backupApplicationLocale()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->previousLocale:Ljava/util/Locale;

    if-nez v0, :cond_c

    .line 26
    iget-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->device:Lcom/helpshift/common/platform/Device;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Device;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->previousLocale:Ljava/util/Locale;

    :cond_c
    return-void
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "sdkLanguage"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v1, v0

    goto :goto_31

    :cond_14
    const-string v1, "_"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 49
    :cond_2c
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_31
    return-object v1
.end method

.method public getCurrentLocaleFromStorage()Ljava/util/Locale;
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "sdkLanguage"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "_"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 64
    :cond_26
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return-object v1
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .registers 2

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKLanguage()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "sdkLanguage"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, ""

    :cond_10
    return-object v0
.end method

.method public restoreApplicationLocale()V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->previousLocale:Ljava/util/Locale;

    if-eqz v0, :cond_c

    .line 32
    iget-object v1, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->device:Lcom/helpshift/common/platform/Device;

    invoke-interface {v1, v0}, Lcom/helpshift/common/platform/Device;->changeLocale(Ljava/util/Locale;)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;->previousLocale:Ljava/util/Locale;

    :cond_c
    return-void
.end method
