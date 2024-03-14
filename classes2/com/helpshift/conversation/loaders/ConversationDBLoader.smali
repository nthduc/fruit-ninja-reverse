.class public abstract Lcom/helpshift/conversation/loaders/ConversationDBLoader;
.super Ljava/lang/Object;
.source "ConversationDBLoader.java"


# instance fields
.field protected conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

.field private hasMoreMessages:Z


# direct methods
.method protected constructor <init>(Lcom/helpshift/conversation/dao/ConversationDAO;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->hasMoreMessages:Z

    .line 27
    iput-object p1, p0, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    return-void
.end method


# virtual methods
.method compareEpochTime(JJ)I
    .registers 6

    cmp-long v0, p1, p3

    if-lez v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    cmp-long v0, p1, p3

    if-gez v0, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public abstract fetchMessages(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
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
.end method

.method filterMessages(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {p4}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-gez v2, :cond_d

    goto :goto_5a

    .line 74
    :cond_d
    invoke-static {p4}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    .line 77
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object p1, p4

    goto :goto_49

    .line 81
    :cond_18
    invoke-static {p1}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_25
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 85
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_3d

    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 95
    :cond_3d
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p4

    if-eqz p4, :cond_49

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 101
    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x0

    int-to-long v1, p4

    sub-long/2addr v1, p2

    long-to-int p2, v1

    .line 102
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 103
    invoke-interface {p1, p2, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 67
    :cond_5a
    :goto_5a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public hasMoreMessages()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->hasMoreMessages:Z

    return v0
.end method

.method public setHasMoreMessages(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/helpshift/conversation/loaders/ConversationDBLoader;->hasMoreMessages:Z

    return-void
.end method
