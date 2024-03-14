.class public Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;
.super Lcom/helpshift/conversation/loaders/ConversationDBLoader;
.source "SingleConversationDBLoader.java"


# instance fields
.field private conversationLocalId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/helpshift/conversation/dao/ConversationDAO;Ljava/lang/Long;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/loaders/ConversationDBLoader;-><init>(Lcom/helpshift/conversation/dao/ConversationDAO;)V

    .line 19
    iput-object p2, p0, Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;->conversationLocalId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public fetchMessages(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 8
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

    .line 24
    iget-object p1, p0, Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v0, p0, Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;->conversationLocalId:Ljava/lang/Long;

    invoke-interface {p1, v0}, Lcom/helpshift/conversation/dao/ConversationDAO;->readConversationWithoutMessages(Ljava/lang/Long;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1

    if-nez p1, :cond_10

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 33
    :cond_10
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v1, p0, Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 37
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/helpshift/conversation/loaders/SingleConversationDBLoader;->filterMessages(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setMessageDMs(Ljava/util/List;)V

    .line 40
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {p2}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    .line 41
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
