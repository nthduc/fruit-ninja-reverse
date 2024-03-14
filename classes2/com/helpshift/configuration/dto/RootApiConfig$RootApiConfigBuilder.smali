.class public Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;
.super Ljava/lang/Object;
.source "RootApiConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/configuration/dto/RootApiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootApiConfigBuilder"
.end annotation


# instance fields
.field private conversationPrefillText:Ljava/lang/String;

.field private enableContactUs:Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;

.field private enableDefaultConversationalFiling:Ljava/lang/Boolean;

.field private enableFullPrivacy:Ljava/lang/Boolean;

.field private enableTypingIndicator:Ljava/lang/Boolean;

.field private gotoConversationAfterContactUs:Ljava/lang/Boolean;

.field private hideNameAndEmail:Ljava/lang/Boolean;

.field private initialUserMessageToAutoSend:Ljava/lang/String;

.field private requireEmail:Ljava/lang/Boolean;

.field private showConversationInfoScreen:Ljava/lang/Boolean;

.field private showConversationResolutionQuestion:Ljava/lang/Boolean;

.field private showSearchOnNewConversation:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->conversationPrefillText:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyMap(Ljava/util/Map;)Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;"
        }
    .end annotation

    .line 92
    const-class v0, Ljava/lang/Integer;

    const-string v1, "enableContactUs"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;->fromInt(I)Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableContactUs:Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;

    :cond_17
    const-string v0, "gotoConversationAfterContactUs"

    .line 98
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "gotoCoversationAfterContactUs"

    const-string v3, ""

    if-eqz v1, :cond_24

    goto :goto_2d

    .line 101
    :cond_24
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object v0, v2

    goto :goto_2d

    :cond_2c
    move-object v0, v3

    .line 105
    :goto_2d
    const-class v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->gotoConversationAfterContactUs:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->gotoConversationAfterContactUs:Ljava/lang/Boolean;

    .line 109
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->requireEmail:Ljava/lang/Boolean;

    const-string v2, "requireEmail"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->requireEmail:Ljava/lang/Boolean;

    .line 111
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->hideNameAndEmail:Ljava/lang/Boolean;

    const-string v2, "hideNameAndEmail"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->hideNameAndEmail:Ljava/lang/Boolean;

    .line 113
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableFullPrivacy:Ljava/lang/Boolean;

    const-string v2, "enableFullPrivacy"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableFullPrivacy:Ljava/lang/Boolean;

    .line 115
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showSearchOnNewConversation:Ljava/lang/Boolean;

    const-string v2, "showSearchOnNewConversation"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showSearchOnNewConversation:Ljava/lang/Boolean;

    .line 118
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showConversationResolutionQuestion:Ljava/lang/Boolean;

    const-string v2, "showConversationResolutionQuestion"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showConversationResolutionQuestion:Ljava/lang/Boolean;

    .line 121
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->conversationPrefillText:Ljava/lang/String;

    const-string v2, "conversationPrefillText"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->conversationPrefillText:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->conversationPrefillText:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 125
    iput-object v3, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->conversationPrefillText:Ljava/lang/String;

    .line 128
    :cond_97
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showConversationInfoScreen:Ljava/lang/Boolean;

    const-string v2, "showConversationInfoScreen"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showConversationInfoScreen:Ljava/lang/Boolean;

    .line 131
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableTypingIndicator:Ljava/lang/Boolean;

    const-string v2, "enableTypingIndicator"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableTypingIndicator:Ljava/lang/Boolean;

    .line 134
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableDefaultConversationalFiling:Ljava/lang/Boolean;

    const-string v2, "enableDefaultConversationalFiling"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableDefaultConversationalFiling:Ljava/lang/Boolean;

    .line 138
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    const-string v2, "initialUserMessage"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 143
    iput-object v3, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    :cond_e1
    return-object p0
.end method

.method public build()Lcom/helpshift/configuration/dto/RootApiConfig;
    .registers 15

    .line 150
    new-instance v13, Lcom/helpshift/configuration/dto/RootApiConfig;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->gotoConversationAfterContactUs:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->requireEmail:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->hideNameAndEmail:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableFullPrivacy:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showSearchOnNewConversation:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showConversationResolutionQuestion:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableContactUs:Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;

    iget-object v8, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->conversationPrefillText:Ljava/lang/String;

    iget-object v9, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->showConversationInfoScreen:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableTypingIndicator:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->enableDefaultConversationalFiling:Ljava/lang/Boolean;

    iget-object v12, p0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->initialUserMessageToAutoSend:Ljava/lang/String;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/helpshift/configuration/dto/RootApiConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/helpshift/configuration/dto/RootApiConfig$EnableContactUs;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v13
.end method
