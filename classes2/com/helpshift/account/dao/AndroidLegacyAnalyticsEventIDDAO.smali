.class public Lcom/helpshift/account/dao/AndroidLegacyAnalyticsEventIDDAO;
.super Ljava/lang/Object;
.source "AndroidLegacyAnalyticsEventIDDAO.java"

# interfaces
.implements Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;


# instance fields
.field private userDB:Lcom/helpshift/account/dao/UserDB;


# direct methods
.method public constructor <init>(Lcom/helpshift/account/dao/UserDB;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/helpshift/account/dao/AndroidLegacyAnalyticsEventIDDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    return-void
.end method


# virtual methods
.method public getLegacyAnalyticsEventId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 21
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/helpshift/account/dao/AndroidLegacyAnalyticsEventIDDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/account/dao/UserDB;->fetchLegacyAnalyticsEventId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public storeLegacyAnalyticsEventIDs(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/common/platform/network/KeyValuePair;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 34
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/common/platform/network/KeyValuePair;

    if-eqz v1, :cond_10

    .line 37
    iget-object v2, v1, Lcom/helpshift/common/platform/network/KeyValuePair;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/helpshift/common/platform/network/KeyValuePair;->value:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_10

    .line 40
    :cond_2f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 42
    :cond_33
    iget-object p1, p0, Lcom/helpshift/account/dao/AndroidLegacyAnalyticsEventIDDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    invoke-virtual {p1, v0}, Lcom/helpshift/account/dao/UserDB;->storeLegacyAnalyticsEventIds(Ljava/util/List;)V

    return-void
.end method
