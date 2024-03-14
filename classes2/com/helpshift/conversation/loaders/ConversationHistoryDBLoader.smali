.class public Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;
.super Lcom/helpshift/conversation/loaders/ConversationDBLoader;
.source "ConversationHistoryDBLoader.java"


# instance fields
.field private userDM:Lcom/helpshift/account/domainmodel/UserDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/dao/ConversationDAO;)V
    .registers 3

    .line 26
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;-><init>(Lcom/helpshift/conversation/dao/ConversationDAO;)V

    .line 27
    iput-object p1, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    return-void
.end method

.method private filterOutConversationCreatedAfterCursor(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_35

    .line 230
    :cond_d
    invoke-static {p1}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 233
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v3

    .line 235
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->compareEpochTime(JJ)I

    move-result v3

    if-gtz v3, :cond_34

    .line 236
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    return-object p1

    :cond_35
    :goto_35
    return-object p2
.end method

.method private filterOutConversationsForWhichMessagesLimitExceed(JLjava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 194
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 198
    :cond_1b
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v1, v0}, Lcom/helpshift/conversation/dao/ConversationDAO;->getMessagesCountForConversations(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2d
    if-ltz v3, :cond_4e

    .line 204
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 205
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v5

    int-to-long v4, v1

    cmp-long v6, v4, p1

    if-ltz v6, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    .line 212
    :cond_4e
    :goto_4e
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v2
.end method

.method private filterOutFullPrivacyEnabledConversations(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 260
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_23

    .line 262
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 263
    iget-boolean v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->wasFullPrivacyEnabledAtCreation:Z

    if-nez v4, :cond_20

    .line 264
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    return-object v0
.end method

.method private filterOutMultipleOpenConversations(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 328
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 330
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v2

    if-nez v2, :cond_10

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    return-object v0
.end method

.method private filterOutRejectedEmptyPreIssues(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 282
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 284
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v5, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v4, v5, :cond_15

    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    const-string v5, "preissue"

    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 286
    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 290
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 292
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 296
    :cond_41
    iget-object v2, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    .line 297
    invoke-static {v2, v1}, Lcom/helpshift/conversation/ConversationUtil;->getUserMessageCountForConversationLocalIds(Lcom/helpshift/conversation/dao/ConversationDAO;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4b
    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 301
    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_67

    .line 302
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4b

    .line 305
    :cond_67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_6b
    return-object v0
.end method

.method private getLastOpenConversation(Ljava/util/List;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;"
        }
    .end annotation

    .line 347
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 352
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 355
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v1, v0

    goto :goto_c

    :cond_20
    return-object v1
.end method


# virtual methods
.method public fetchMessages(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v1, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 40
    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->readConversationsWithoutMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 48
    :cond_22
    invoke-static {v0}, Lcom/helpshift/conversation/ConversationUtil;->sortConversationsBasedOnCreatedAt(Ljava/util/List;)V

    .line 50
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    goto :goto_7c

    .line 67
    :cond_32
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutConversationCreatedAfterCursor(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 75
    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 76
    iget-object p1, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 78
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterMessages(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_79

    .line 80
    invoke-virtual {v4, p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setMessageDMs(Ljava/util/List;)V

    .line 81
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    sub-long/2addr p3, p1

    .line 85
    :cond_79
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7c
    :goto_7c
    const-wide/16 p1, 0x1

    cmp-long v4, p3, p1

    if-gez v4, :cond_83

    return-object v2

    :cond_83
    const/4 p1, 0x0

    if-eqz v1, :cond_9f

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v3, :cond_a3

    sub-int/2addr p2, v3

    .line 101
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 102
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutFullPrivacyEnabledConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 107
    :cond_9f
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutFullPrivacyEnabledConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 109
    :cond_a3
    :goto_a3
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutRejectedEmptyPreIssues(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-eqz v1, :cond_b7

    .line 117
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->getLastOpenConversation(Ljava/util/List;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 119
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutMultipleOpenConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-eqz v0, :cond_bb

    .line 126
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 130
    :cond_b7
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutMultipleOpenConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 133
    :cond_bb
    :goto_bb
    invoke-direct {p0, p3, p4, p2}, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->filterOutConversationsForWhichMessagesLimitExceed(JLjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 139
    iget-object v6, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v6, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 142
    :cond_e4
    iget-object v4, p0, Lcom/helpshift/conversation/loaders/ConversationHistoryDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v4, v0}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessagesForConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ee
    :goto_ee
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 144
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 145
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 146
    iget-object v5, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v5, v4}, Lcom/helpshift/util/HSObservableList;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 155
    :cond_110
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    const/4 v1, 0x0

    :goto_116
    if-ltz v0, :cond_15c

    .line 156
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 157
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v4}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v4

    add-int/2addr v4, v1

    int-to-long v4, v4

    cmp-long v6, v4, p3

    if-lez v6, :cond_152

    .line 160
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {v4}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    int-to-long v4, v1

    sub-long v4, p3, v4

    long-to-int v5, v4

    .line 162
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    iget-object v6, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v6}, Lcom/helpshift/util/HSObservableList;->clear()V

    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .line 165
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 164
    invoke-interface {v4, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 166
    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v3, v4}, Lcom/helpshift/util/HSObservableList;->addAll(Ljava/util/Collection;)Z

    goto :goto_159

    .line 170
    :cond_152
    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v3}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v3

    add-int/2addr v1, v3

    :goto_159
    add-int/lit8 v0, v0, -0x1

    goto :goto_116

    .line 175
    :cond_15c
    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 178
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_163
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_175

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 179
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {p2}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    goto :goto_163

    :cond_175
    return-object v2
.end method
