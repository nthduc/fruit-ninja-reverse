.class Lcom/helpshift/common/platform/AndroidConversationDAO;
.super Ljava/lang/Object;
.source "AndroidConversationDAO.java"

# interfaces
.implements Lcom/helpshift/conversation/dao/ConversationDAO;
.implements Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final conversationDB:Lcom/helpshift/common/conversation/ConversationDB;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Helpshift_CnDAO"

    .line 27
    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/helpshift/common/conversation/ConversationDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/common/conversation/ConversationDB;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteConversation(J)V
    .registers 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    .line 68
    :try_start_7
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->deleteConversationWithLocalId(J)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 70
    :cond_10
    :goto_10
    monitor-exit p0

    return-void
.end method

.method public deleteConversations(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    .line 384
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->deleteConversations(J)V

    :cond_b
    return-void
.end method

.method public deleteMessagesForConversation(J)Z
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->deleteMessagesForConversation(J)Z

    move-result p1

    return p1
.end method

.method public dropAndCreateDatabase()V
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0}, Lcom/helpshift/common/conversation/ConversationDB;->dropAndCreateDatabase()V

    return-void
.end method

.method public getFAQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->getAdminFAQSuggestion(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/support/Faq;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMessagesCountForConversations(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getMessagesCountForConversations(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesCountForConversations(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->getMessagesCountForConversations(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOldestConversationCreatedAtTime(J)Ljava/lang/Long;
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->getOldestConversationEpochCreatedAtTime(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getOldestMessageCursor(J)Ljava/lang/String;
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->getOldestMessageCursor(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insertConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 7

    .line 221
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 222
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    return-void

    .line 227
    :cond_9
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 228
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    .line 231
    :cond_17
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    .line 233
    invoke-virtual {p1, v0, v1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setLocalId(J)V

    .line 236
    :cond_26
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    return-void
.end method

.method public insertConversations(Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)Z"
        }
    .end annotation

    .line 267
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 271
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 272
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 273
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    goto :goto_c

    .line 277
    :cond_27
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertConversations(Ljava/util/List;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    return v2

    .line 283
    :cond_35
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 284
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 285
    :goto_40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 286
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 287
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_60

    .line 289
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 292
    :cond_60
    invoke-virtual {v5, v3, v4}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setLocalId(J)V

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 296
    :cond_66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6f
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 298
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 299
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6f

    .line 302
    :cond_87
    invoke-virtual {p0, v0}, Lcom/helpshift/common/platform/AndroidConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public insertOrUpdateFAQ(Ljava/lang/Object;)V
    .registers 3

    .line 410
    check-cast p1, Lcom/helpshift/support/Faq;

    .line 411
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertOrUpdateAdminFAQSuggestion(Lcom/helpshift/support/Faq;)V

    return-void
.end method

.method public declared-synchronized insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 7

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    .line 126
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    if-nez v0, :cond_1c

    if-nez v1, :cond_1c

    .line 128
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6d

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    goto :goto_6d

    :cond_1c
    if-nez v0, :cond_49

    if-eqz v1, :cond_49

    .line 134
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readMessageWithServerId(Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-nez v0, :cond_3f

    .line 137
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6d

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    goto :goto_6d

    .line 143
    :cond_3f
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    .line 144
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_6d

    .line 148
    :cond_49
    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v1, v0}, Lcom/helpshift/common/conversation/ConversationDB;->readMessageWithLocalId(Ljava/lang/Long;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-nez v0, :cond_68

    .line 151
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6d

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    goto :goto_6d

    .line 157
    :cond_68
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6f

    .line 160
    :cond_6d
    :goto_6d
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertOrUpdateMessages(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b7

    if-nez v0, :cond_a

    .line 165
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 170
    iget-object v4, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    .line 171
    iget-object v5, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    if-nez v4, :cond_31

    if-nez v5, :cond_31

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_31
    if-nez v4, :cond_57

    if-eqz v5, :cond_57

    .line 176
    iget-object v4, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v4, v5}, Lcom/helpshift/common/conversation/ConversationDB;->readMessageWithServerId(Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v4

    .line 177
    invoke-virtual {v4}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result v5
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_b7

    if-nez v5, :cond_43

    .line 178
    monitor-exit p0

    return v3

    .line 180
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-nez v3, :cond_4f

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 185
    :cond_4f
    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    iput-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 190
    :cond_57
    iget-object v5, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v5, v4}, Lcom/helpshift/common/conversation/ConversationDB;->readMessageWithLocalId(Ljava/lang/Long;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result v5
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_b7

    if-nez v5, :cond_65

    .line 192
    monitor-exit p0

    return v3

    .line 194
    :cond_65
    :try_start_65
    invoke-virtual {v4}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-nez v3, :cond_71

    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 199
    :cond_71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 203
    :cond_75
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {p1, v0}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessages(Ljava/util/List;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result v2
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_b7

    if-nez v2, :cond_83

    .line 205
    monitor-exit p0

    return v3

    .line 207
    :cond_83
    :try_start_83
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 209
    :goto_89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_af

    .line 210
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_a0

    goto :goto_ac

    .line 214
    :cond_a0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 216
    :cond_af
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {p1, v1}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessages(Ljava/util/List;)Z

    move-result p1
    :try_end_b5
    .catchall {:try_start_83 .. :try_end_b5} :catchall_b7

    monitor-exit p0

    return p1

    :catchall_b7
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized insertPreIssueConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 7

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->insertConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1e

    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setLocalId(J)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 87
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readConversation(J)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readConversationWithLocalId(Ljava/lang/Long;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_21

    if-nez v0, :cond_10

    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return-object p1

    .line 61
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v1, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setMessageDMs(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_21

    .line 62
    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readConversationWithoutMessages(Ljava/lang/Long;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readConversationWithLocalId(Ljava/lang/Long;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized readConversationWithoutMessages(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 3

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readConversationWithServerId(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readConversationsWithoutMessages(J)Lcom/helpshift/common/dao/DAOResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->readConversationsWithLocalId(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readMessageWithServerId(Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    return-object p1
.end method

.method public declared-synchronized readMessages(J)Lcom/helpshift/common/dao/DAOResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readMessages(JLcom/helpshift/conversation/activeconversation/message/MessageType;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/helpshift/conversation/activeconversation/message/MessageType;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(JLcom/helpshift/conversation/activeconversation/message/MessageType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public readMessagesForConversations(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readMessagesForConversations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized readPreConversationWithoutMessages(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readPreConversationWithServerId(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeFAQ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->removeAdminFAQSuggestion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 241
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 242
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    return-void

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->updateConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 248
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    return-void
.end method

.method public updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->updateConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public updateConversations(Ljava/util/List;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/helpshift/conversation/activeconversation/ConversationUpdate;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->updateConversations(Ljava/util/List;)Z

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 318
    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 319
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;

    .line 320
    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;->newMessageDMs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;->updatedMessageDMs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 326
    :cond_41
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {p1, v0}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessages(Ljava/util/List;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    const/4 p2, 0x0

    .line 327
    :goto_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_74

    .line 328
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_65

    goto :goto_71

    .line 332
    :cond_65
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    :goto_71
    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    .line 334
    :cond_74
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {p1, v1}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessages(Ljava/util/List;)Z

    return-void
.end method

.method public updateConversations(Ljava/util/Map;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Lcom/helpshift/conversation/pollersync/model/MessagesDiff;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)Z"
        }
    .end annotation

    .line 340
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 344
    :cond_8
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p2}, Lcom/helpshift/common/conversation/ConversationDB;->updateConversations(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 351
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_20
    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 355
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 356
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/pollersync/model/MessagesDiff;

    if-eqz v3, :cond_20

    .line 358
    iget-object v4, v3, Lcom/helpshift/conversation/pollersync/model/MessagesDiff;->newMessages:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    iget-object v3, v3, Lcom/helpshift/conversation/pollersync/model/MessagesDiff;->updatedMessages:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 365
    :cond_45
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {p1, v0}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessages(Ljava/util/List;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_52

    return v1

    .line 371
    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_7e

    .line 372
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-nez p2, :cond_6f

    goto :goto_7b

    .line 376
    :cond_6f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 379
    :cond_7e
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {p1, v2}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessages(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateLastUserActivityTimeInConversation(Ljava/lang/Long;J)V
    .registers 5

    if-nez p1, :cond_a

    const-string p1, "Helpshift_CnDAO"

    const-string p2, "Trying to update last user activity time but localId is null"

    .line 254
    invoke-static {p1, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidConversationDAO;->conversationDB:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/common/conversation/ConversationDB;->updateLastUserActivityTimeInConversation(Ljava/lang/Long;J)V

    return-void
.end method
