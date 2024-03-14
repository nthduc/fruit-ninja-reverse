.class public abstract Lcom/helpshift/conversation/loaders/ConversationsLoader;
.super Ljava/lang/Object;
.source "ConversationsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;
    }
.end annotation


# instance fields
.field protected final conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

.field private final messagesPageSize:J

.field protected final remoteConversationLoader:Lcom/helpshift/conversation/loaders/RemoteConversationLoader;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/loaders/ConversationDBLoader;Lcom/helpshift/conversation/loaders/RemoteConversationLoader;J)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    .line 28
    iput-object p3, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->remoteConversationLoader:Lcom/helpshift/conversation/loaders/RemoteConversationLoader;

    .line 29
    iput-wide p4, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->messagesPageSize:J

    return-void
.end method

.method private updateLocalCache(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->setHasMoreMessages(Z)V

    .line 140
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 141
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v2}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_11

    :cond_25
    if-nez v0, :cond_2c

    .line 144
    iget-object p1, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    invoke-virtual {p1, v1}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->setHasMoreMessages(Z)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public fetchInitialConversations()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    iget-wide v1, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->messagesPageSize:J

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->fetchMessages(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->updateLocalCache(Ljava/util/List;)V

    return-object v0
.end method

.method public abstract hasMoreMessages()Z
.end method

.method public declared-synchronized loadMoreConversations(Lcom/helpshift/conversation/activeconversation/PaginationCursor;Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;)V
    .registers 9

    monitor-enter p0

    if-nez p2, :cond_5

    .line 54
    monitor-exit p0

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_99

    .line 57
    :try_start_8
    invoke-virtual {p0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->hasMoreMessages()Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_99

    .line 62
    :cond_10
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;->conversationCursor:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;->messageCursor:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_97

    .line 70
    :cond_22
    invoke-interface {p2}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->loading()V

    .line 73
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    invoke-virtual {v1}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->hasMoreMessages()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 74
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;->conversationCursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;->messageCursor:Ljava/lang/String;

    iget-wide v4, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->messagesPageSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->fetchMessages(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-direct {p0, v1}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->updateLocalCache(Ljava/util/List;)V

    .line 82
    invoke-static {v1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 83
    invoke-virtual {p0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->hasMoreMessages()Z

    move-result p1

    invoke-interface {p2, v1, p1}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->onSuccess(Ljava/util/List;Z)V
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_a3

    .line 84
    monitor-exit p0

    return-void

    .line 89
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->remoteConversationLoader:Lcom/helpshift/conversation/loaders/RemoteConversationLoader;

    invoke-virtual {v1}, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->hasMoreMessage()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->onSuccess(Ljava/util/List;Z)V
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_a3

    .line 91
    monitor-exit p0

    return-void

    .line 97
    :cond_5d
    :try_start_5d
    invoke-interface {p2}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->loading()V

    .line 99
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->remoteConversationLoader:Lcom/helpshift/conversation/loaders/RemoteConversationLoader;

    invoke-virtual {v0}, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->loadMoreMessages()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 101
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->setHasMoreMessages(Z)V

    .line 102
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->conversationDBLoader:Lcom/helpshift/conversation/loaders/ConversationDBLoader;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;->conversationCursor:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;->messageCursor:Ljava/lang/String;

    iget-wide v2, p0, Lcom/helpshift/conversation/loaders/ConversationsLoader;->messagesPageSize:J

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->fetchMessages(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->updateLocalCache(Ljava/util/List;)V

    .line 110
    invoke-virtual {p0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->hasMoreMessages()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->onSuccess(Ljava/util/List;Z)V

    goto :goto_95

    .line 114
    :cond_85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->hasMoreMessages()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->onSuccess(Ljava/util/List;Z)V
    :try_end_91
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_5d .. :try_end_91} :catch_92
    .catchall {:try_start_5d .. :try_end_91} :catchall_a3

    goto :goto_95

    .line 119
    :catch_92
    :try_start_92
    invoke-interface {p2}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->onError()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_a3

    .line 121
    :goto_95
    monitor-exit p0

    return-void

    .line 64
    :cond_97
    :goto_97
    monitor-exit p0

    return-void

    .line 58
    :cond_99
    :goto_99
    :try_start_99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;->onSuccess(Ljava/util/List;Z)V
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_a3

    .line 59
    monitor-exit p0

    return-void

    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
