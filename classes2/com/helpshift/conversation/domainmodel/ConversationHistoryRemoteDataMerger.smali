.class public Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;
.super Ljava/lang/Object;
.source "ConversationHistoryRemoteDataMerger.java"


# instance fields
.field private conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private platform:Lcom/helpshift/common/platform/Platform;

.field private userDM:Lcom/helpshift/account/domainmodel/UserDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationManager;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    .line 36
    iput-object p2, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->domain:Lcom/helpshift/common/domain/Domain;

    .line 37
    iput-object p3, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 38
    iput-object p4, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    return-void
.end method


# virtual methods
.method public merge(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 47
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_20

    .line 52
    invoke-static {p1}, Lcom/helpshift/conversation/ConversationUtil;->sortConversationsBasedOnCreatedAt(Ljava/util/List;)V

    .line 55
    :cond_20
    iget-object v3, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v3}, Lcom/helpshift/common/platform/Platform;->getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;

    move-result-object v3

    iget-object v5, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 56
    invoke-virtual {v5}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lcom/helpshift/conversation/dao/ConversationDAO;->readConversationsWithoutMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 62
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 66
    iget-object v9, v8, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-static {v9}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_67

    .line 67
    iget-object v9, v8, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 69
    :cond_67
    iget-object v9, v8, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v9}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4d

    .line 70
    iget-object v9, v8, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 74
    :cond_75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 75
    iget-object v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 76
    iget-object v9, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    const/4 v10, 0x0

    .line 79
    iget-object v11, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v11}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    .line 82
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 83
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    goto :goto_b1

    .line 85
    :cond_a4
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 86
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    :cond_b1
    :goto_b1
    if-eqz v10, :cond_107

    .line 91
    iget-object v8, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v8}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v10, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    .line 95
    iget-object v8, v10, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 96
    iget-object v8, v10, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;

    goto :goto_d5

    .line 99
    :cond_d0
    new-instance v8, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;

    invoke-direct {v8}, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;-><init>()V

    .line 102
    :goto_d5
    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_f8

    .line 107
    invoke-virtual {v10}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 108
    iget-object v9, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 109
    invoke-virtual {v9, v10, v3, v11, v8}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->mergePreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLcom/helpshift/conversation/activeconversation/ConversationUpdate;)V

    goto :goto_fd

    .line 112
    :cond_e8
    iget-object v9, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {v9}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_fd

    .line 113
    iget-object v9, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 114
    invoke-virtual {v9, v10, v11, v3, v8}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLjava/util/List;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)V

    goto :goto_fd

    .line 119
    :cond_f8
    iget-object v9, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 120
    invoke-virtual {v9, v10, v3, v11, v8}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->mergeIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLcom/helpshift/conversation/activeconversation/ConversationUpdate;)V

    .line 122
    :cond_fd
    :goto_fd
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, v10, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_79

    .line 126
    :cond_107
    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v8

    if-eqz v8, :cond_11d

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    .line 133
    iget-object v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v9, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v8, v9, :cond_11d

    .line 134
    sget-object v8, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 139
    :cond_11d
    iget-object v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 141
    sget-object v9, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v8, v9, :cond_12f

    sget-object v9, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v8, v9, :cond_12f

    sget-object v9, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v8, v9, :cond_12f

    sget-object v9, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v8, v9, :cond_131

    .line 145
    :cond_12f
    iput-boolean v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    :cond_131
    if-eqz v8, :cond_143

    .line 150
    iget-boolean v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-eqz v8, :cond_143

    iget-object v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v9, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v8, v9, :cond_143

    .line 152
    iput-boolean v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    .line 153
    sget-object v8, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v8, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 157
    :cond_143
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_79

    .line 162
    :cond_148
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v4, :cond_155

    .line 163
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-virtual {p0, v0, v2, v1}, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->putConversations(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    return-void

    .line 172
    :cond_155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_15f
    if-ltz v3, :cond_1a4

    .line 176
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 180
    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v6

    if-nez v6, :cond_1a1

    add-int/lit8 v6, v3, -0x1

    :goto_16f
    if-ltz v6, :cond_1a1

    .line 182
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 183
    iget-object v8, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v8}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19e

    iget-object v8, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    iget-object v9, v7, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 184
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19e

    iget-object v8, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iget-object v9, v7, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 185
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19e

    .line 186
    iget-object v4, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    iget-object v7, v7, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v4, v7}, Lcom/helpshift/util/HSObservableList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1a1

    :cond_19e
    add-int/lit8 v6, v6, -0x1

    goto :goto_16f

    :cond_1a1
    :goto_1a1
    add-int/lit8 v3, v3, -0x1

    goto :goto_15f

    .line 196
    :cond_1a4
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {p0, v0, v2, v1}, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->putConversations(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method putConversations(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/helpshift/conversation/activeconversation/ConversationUpdate;",
            ">;)V"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 208
    iget-object v2, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v2}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    goto :goto_4

    .line 211
    :cond_1d
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 213
    iget-object v2, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v2}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    goto :goto_21

    .line 216
    :cond_3a
    iget-object v0, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, p3}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversations(Ljava/util/List;Ljava/util/Map;)V

    .line 218
    iget-object p1, p0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p3}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertConversations(Ljava/util/List;)Z

    return-void
.end method
