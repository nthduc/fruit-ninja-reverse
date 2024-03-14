.class public Lcom/helpshift/support/providers/SupportDataProvider;
.super Ljava/lang/Object;
.source "SupportDataProvider.java"

# interfaces
.implements Lcom/helpshift/providers/ISupportDataProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionEvents()Ljava/lang/String;
    .registers 3

    .line 30
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->getCurrentSessionEventsCopy()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/common/platform/Platform;->getJsonifier()Lcom/helpshift/common/platform/Jsonifier;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/helpshift/common/platform/Jsonifier;->jsonifyAnalyticsDTOList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveConversationId()Ljava/lang/String;
    .registers 2

    .line 21
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 23
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method
