.class public Lcom/helpshift/analytics/domainmodel/LegacyAnalyticsEventDM;
.super Ljava/lang/Object;
.source "LegacyAnalyticsEventDM.java"


# instance fields
.field private platform:Lcom/helpshift/common/platform/Platform;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/helpshift/analytics/domainmodel/LegacyAnalyticsEventDM;->platform:Lcom/helpshift/common/platform/Platform;

    return-void
.end method


# virtual methods
.method public getLegacyAnalyticsEventId(Lcom/helpshift/account/domainmodel/UserDM;)Ljava/lang/String;
    .registers 4

    .line 17
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isAnonymousUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 26
    :cond_8
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    .line 30
    :cond_13
    iget-object v0, p0, Lcom/helpshift/analytics/domainmodel/LegacyAnalyticsEventDM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getLegacyAnalyticsEventIDDAO()Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;->getLegacyAnalyticsEventId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
