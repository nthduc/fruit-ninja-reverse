.class public Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;
.super Ljava/lang/Object;
.source "MetaDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMetaDataKeyValidity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_16

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_16

    const-string v0, "[A-Za-z0-9_\\-.]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_16

    :cond_13
    const-string p0, ""

    return-object p0

    :cond_16
    :goto_16
    const-string p0, "The MetaData key you entered is invalid. Please enter a key of maximum 64 characters that consists of only letters, digits and the following characters: . - _"

    return-object p0
.end method

.method public static checkMetaDataValueValidity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_16

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_16

    const-string v0, "[A-Za-z0-9_\\-.]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_16

    :cond_13
    const-string p0, ""

    return-object p0

    :cond_16
    :goto_16
    const-string p0, "The MetaData value you entered is invalid. Please enter a value of maximum 64 characters that consists of only letters, digits and the following characters: . - _"

    return-object p0
.end method

.method public static formatMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/metadata/MetaData;
    .registers 4

    .line 69
    invoke-static {p0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isKnownKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 70
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/metadata/MetaData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 74
    :cond_c
    invoke-static {p0}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getValueTypeForKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v1, Lcom/ironsource/mediationsdk/metadata/MetaData;

    invoke-direct {v1, p0, p1, v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)V

    return-object v1
.end method

.method public static formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;
    .registers 5

    .line 47
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "false"

    const-string v2, "true"

    if-ne p1, v0, :cond_2c

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2b

    const-string p1, "yes"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_2b

    .line 51
    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    const-string p1, "no"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_29

    :cond_26
    const-string p0, ""

    goto :goto_2c

    :cond_29
    :goto_29
    move-object p0, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move-object p0, v2

    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public static getMetaDataBooleanValue(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "false"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static getValueTypeForKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 2

    const-string v0, "do_not_sell"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 17
    sget-object p0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object p0

    .line 20
    :cond_b
    sget-object p0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object p0
.end method

.method public static isKnownKey(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "do_not_sell"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "do_not_sell"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
