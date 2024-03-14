.class public Lcom/helpshift/common/HelpshiftUtils;
.super Ljava/lang/Object;
.source "HelpshiftUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidHelpshiftUser(Lcom/helpshift/HelpshiftUser;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/HelpshiftUser;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmptyWithoutTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 14
    invoke-virtual {p0}, Lcom/helpshift/HelpshiftUser;->getEmail()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/helpshift/util/StringUtils;->isEmptyWithoutTrim(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method
