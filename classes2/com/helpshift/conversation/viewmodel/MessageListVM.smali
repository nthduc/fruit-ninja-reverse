.class public Lcom/helpshift/conversation/viewmodel/MessageListVM;
.super Ljava/lang/Object;
.source "MessageListVM.java"


# instance fields
.field protected final domain:Lcom/helpshift/common/domain/Domain;

.field messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

.field protected final platform:Lcom/helpshift/common/platform/Platform;

.field private timeZoneOffSet:J

.field private uiConversationLocalIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/helpshift/conversation/activeconversation/UIConversation;",
            ">;"
        }
    .end annotation
.end field

.field uiMessageDMs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiConversationLocalIdMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->platform:Lcom/helpshift/common/platform/Platform;

    .line 48
    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 49
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getDevice()Lcom/helpshift/common/platform/Device;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/common/platform/Device;->getTimeZoneOffSet()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->timeZoneOffSet:J

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/conversation/viewmodel/MessageListVM;I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->appendUIMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertUIMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->notifyNewUIMessagesAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/conversation/viewmodel/MessageListVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isSystemMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/helpshift/conversation/viewmodel/MessageListVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Ljava/util/List;
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->buildSystemMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private appendUIMessages(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 529
    invoke-direct {p0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v2

    const/4 v3, 0x1

    .line 530
    invoke-direct {p0, p1, v2, v3}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertSystemMessageDMs(Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)Ljava/util/List;

    move-result-object p1

    .line 532
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    .line 534
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v2, v1, v4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;

    move-result-object v1

    .line 535
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    if-eqz v2, :cond_3e

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->appendMessages(II)V

    if-eqz v1, :cond_3e

    .line 538
    iget-object p1, v1, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, v0, :cond_3e

    .line 540
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    sub-int/2addr v0, p1

    invoke-interface {v1, p1, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->updateMessages(II)V

    :cond_3e
    return-void
.end method

.method private buildSystemDividerMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    if-nez p2, :cond_6

    goto :goto_3b

    .line 246
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isDifferentConversationMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    .line 260
    :cond_d
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getUIConversation(J)Lcom/helpshift/conversation/activeconversation/UIConversation;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 261
    iget-boolean v0, v0, Lcom/helpshift/conversation/activeconversation/UIConversation;->isRedacted:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_2d

    .line 269
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getIssueStateForMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/conversation/dto/IssueState;

    move-result-object p1

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 271
    :goto_2e
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getDateFromMessageDM(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateConversationDividerMessage(Ljava/util/Date;Z)Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;

    move-result-object p1

    .line 272
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;->conversationLocalId:Ljava/lang/Long;

    return-object p1

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method private buildSystemMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/SystemMessageDM;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 293
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 295
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->buildSystemDividerMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isDifferentConversationMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    .line 303
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getDateFromMessageDM(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/util/Date;

    move-result-object v2

    .line 304
    iget-object v3, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getUIConversation(J)Lcom/helpshift/conversation/activeconversation/UIConversation;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_32

    .line 305
    iget-boolean v6, v3, Lcom/helpshift/conversation/activeconversation/UIConversation;->isRedacted:Z

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    :goto_33
    if-nez v6, :cond_85

    if-nez v1, :cond_54

    if-eqz p3, :cond_3a

    goto :goto_54

    .line 343
    :cond_3a
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isMessagesDayDifferent(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 344
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isSystemDateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    if-nez p1, :cond_85

    .line 345
    iget-object p1, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-direct {p0, v2, p3, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateSystemDateMessageDM(Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    move-result-object p1

    .line 348
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 349
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_54
    :goto_54
    if-eqz v3, :cond_78

    if-eqz p4, :cond_65

    .line 319
    iget-boolean p1, v3, Lcom/helpshift/conversation/activeconversation/UIConversation;->isInPreIssueMode:Z

    if-nez p1, :cond_65

    iget-object p1, v3, Lcom/helpshift/conversation/activeconversation/UIConversation;->publishId:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_66

    :cond_65
    const/4 v4, 0x0

    :goto_66
    if-eqz v4, :cond_78

    .line 324
    iget-object p1, v3, Lcom/helpshift/conversation/activeconversation/UIConversation;->publishId:Ljava/lang/String;

    iget-object p4, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 325
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateSystemPublishIdMessageDM(Ljava/lang/String;Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;

    move-result-object p1

    .line 329
    iget-object p3, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    iput-object p3, p1, Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 330
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    .line 337
    :cond_78
    iget-object p1, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-direct {p0, v2, p3, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateSystemDateMessageDM(Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    move-result-object p1

    .line 340
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 341
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_85
    :goto_85
    return-object v0
.end method

.method private canGroupMessagesByTime(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    if-nez p2, :cond_7

    goto/16 :goto_7a

    .line 792
    :cond_7
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    .line 797
    :cond_10
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isUserMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isUserMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 798
    :cond_1c
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isAdminMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isAdminMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_7a

    .line 803
    :cond_29
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v1

    .line 804
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v3

    .line 803
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isMinuteDifferent(JJ)Z

    move-result v1

    if-eqz v1, :cond_38

    return v0

    .line 809
    :cond_38
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isUserMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    .line 810
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isUserMessageSent(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isUserMessageSent(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0

    .line 820
    :cond_4d
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getDisplayedAuthorName()Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getDisplayedAuthorName()Ljava/lang/String;

    move-result-object v3

    .line 822
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/Author;->authorId:Ljava/lang/String;

    .line 823
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/Author;->authorId:Ljava/lang/String;

    .line 824
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6f

    invoke-static {p2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_6f

    .line 834
    :cond_6a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6f
    :goto_6f
    if-nez v1, :cond_75

    if-nez v3, :cond_74

    const/4 v0, 0x1

    :cond_74
    return v0

    .line 830
    :cond_75
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7a
    :goto_7a
    return v0
.end method

.method private containsAdminMessages(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)Z"
        }
    .end annotation

    .line 573
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 574
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isAdminMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized filterUIMessages(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 158
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_26

    if-nez p1, :cond_a

    .line 160
    monitor-exit p0

    return-object v0

    .line 163
    :cond_a
    :try_start_a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 164
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isUISupportedMessage()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_26

    goto :goto_e

    .line 168
    :cond_24
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private findBinaryIndex(JII)I
    .registers 10

    sub-int v0, p4, p3

    .line 727
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    if-ne p3, v0, :cond_2b

    .line 729
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v0

    .line 730
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v2

    cmp-long v4, p1, v0

    if-gez v4, :cond_24

    return p3

    :cond_24
    cmp-long p3, p1, v2

    if-ltz p3, :cond_2a

    add-int/lit8 p4, p4, 0x1

    :cond_2a
    return p4

    .line 742
    :cond_2b
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gtz v3, :cond_40

    .line 744
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->findBinaryIndex(JII)I

    move-result p1

    return p1

    .line 747
    :cond_40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->findBinaryIndex(JII)I

    move-result p1

    return p1
.end method

.method private findBinaryIndexIntoUIList(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)I
    .registers 6

    .line 710
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 716
    :cond_a
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v2

    add-int/lit8 p1, v0, -0x1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->findBinaryIndex(JII)I

    move-result p1

    if-gez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_1b

    :cond_18
    if-le p1, v0, :cond_1b

    move p1, v0

    :cond_1b
    :goto_1b
    return p1
.end method

.method private generateConversationDividerMessage(Ljava/util/Date;Z)Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;
    .registers 6

    .line 372
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 373
    sget-object p1, Lcom/helpshift/common/util/HSDateFormatSpec;->STORAGE_TIME_FORMAT:Lcom/helpshift/util/HSSimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/helpshift/util/HSSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 374
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;

    .line 375
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getEpochTimeForSystemMessage(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;-><init>(Ljava/lang/String;JZ)V

    .line 376
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    return-object v0
.end method

.method private generateSystemDateMessageDM(Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;
    .registers 7

    .line 360
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 361
    sget-object p1, Lcom/helpshift/common/util/HSDateFormatSpec;->STORAGE_TIME_FORMAT:Lcom/helpshift/util/HSSimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/helpshift/util/HSSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 362
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    .line 363
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getEpochTimeForSystemMessage(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;-><init>(Ljava/lang/String;JZ)V

    .line 365
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object p2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 366
    iput-object p3, v0, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;->conversationLocalId:Ljava/lang/Long;

    return-object v0
.end method

.method private generateSystemPublishIdMessageDM(Ljava/lang/String;Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;
    .registers 12

    .line 383
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 384
    sget-object p2, Lcom/helpshift/common/util/HSDateFormatSpec;->STORAGE_TIME_FORMAT:Lcom/helpshift/util/HSSimpleDateFormat;

    invoke-virtual {p2, v0}, Lcom/helpshift/util/HSSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 385
    new-instance p2, Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;

    .line 386
    invoke-direct {p0, v3}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getEpochTimeForSystemMessage(Ljava/lang/String;)J

    move-result-wide v4

    move-object v1, p2

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 388
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object p3, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p2, p1, p3}, Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 389
    iput-object p4, p2, Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;->conversationLocalId:Ljava/lang/Long;

    return-object p2
.end method

.method private getDateFromMessageDM(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/util/Date;
    .registers 5

    .line 399
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private getEpochTimeForSystemMessage(Ljava/lang/String;)J
    .registers 6

    .line 395
    invoke-static {p1}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getIssueStateForMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/conversation/dto/IssueState;
    .registers 4

    if-nez p1, :cond_5

    .line 196
    sget-object p1, Lcom/helpshift/conversation/dto/IssueState;->UNKNOWN:Lcom/helpshift/conversation/dto/IssueState;

    return-object p1

    .line 198
    :cond_5
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getUIConversation(J)Lcom/helpshift/conversation/activeconversation/UIConversation;

    move-result-object p1

    if-nez p1, :cond_14

    .line 200
    sget-object p1, Lcom/helpshift/conversation/dto/IssueState;->UNKNOWN:Lcom/helpshift/conversation/dto/IssueState;

    return-object p1

    .line 202
    :cond_14
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/UIConversation;->issueState:Lcom/helpshift/conversation/dto/IssueState;

    return-object p1
.end method

.method private getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 3

    if-ltz p1, :cond_14

    .line 703
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 706
    :cond_b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSortMessagesComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Lcom/helpshift/conversation/viewmodel/MessageListVM$1;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM$1;-><init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;)V

    return-object v0
.end method

.method private declared-synchronized groupConversationRedactedMessages(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_42

    if-eqz v1, :cond_e

    .line 121
    monitor-exit p0

    return-object v0

    .line 126
    :cond_e
    :try_start_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 127
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;

    if-eqz v6, :cond_2c

    add-int/lit8 v4, v4, 0x1

    .line 129
    check-cast v5, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;

    move-object v3, v5

    goto :goto_16

    :cond_2c
    if-eqz v3, :cond_35

    .line 133
    iput v4, v3, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;->contiguousRedactedConversationsCount:I

    .line 134
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    const/4 v4, 0x0

    .line 140
    :cond_35
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_39
    if-eqz v3, :cond_40

    .line 145
    iput v4, v3, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;->contiguousRedactedConversationsCount:I

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_42

    .line 148
    :cond_40
    monitor-exit p0

    return-object v0

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private declared-synchronized insertSystemMessageDMs(Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 213
    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v1

    const-string v2, "showConversationInfoScreen"

    invoke-virtual {v1, v2}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez p3, :cond_19

    if-nez p2, :cond_19

    const/4 p3, 0x1

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    .line 217
    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 219
    invoke-direct {p0, p2, v3, p3, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->buildSystemMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Ljava/util/List;

    move-result-object p2

    .line 223
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_39

    move-object p2, v3

    const/4 p3, 0x0

    goto :goto_1e

    .line 230
    :cond_37
    monitor-exit p0

    return-object v0

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private insertSystemMessageDMsForLatestEmptyConversation(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/UIConversation;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-static {v0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 84
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/UIConversation;

    .line 86
    iget-wide v3, p1, Lcom/helpshift/conversation/activeconversation/UIConversation;->localID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 91
    iget-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getUIConversation(J)Lcom/helpshift/conversation/activeconversation/UIConversation;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    .line 92
    iget-boolean v1, v1, Lcom/helpshift/conversation/activeconversation/UIConversation;->isRedacted:Z

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-nez v1, :cond_4f

    .line 98
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getIssueStateForMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/conversation/dto/IssueState;

    move-result-object v0

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    .line 100
    :goto_50
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p1, Lcom/helpshift/conversation/activeconversation/UIConversation;->epochCreateTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 101
    invoke-direct {p0, v0, v2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateConversationDividerMessage(Ljava/util/Date;Z)Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;

    move-result-object v1

    .line 102
    iget-wide v4, p1, Lcom/helpshift/conversation/activeconversation/UIConversation;->localID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, v3, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateSystemDateMessageDM(Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6f
    return-void
.end method

.method private insertUIMessages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 552
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 553
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertUIMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_4

    .line 557
    :cond_14
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->notifyMessageListVMRefreshAll()V

    return-void
.end method

.method private isAdminMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 2

    .line 757
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isAdminMessage:Z

    return p1
.end method

.method private isDayDifferent(JJ)Z
    .registers 7

    .line 419
    iget-wide v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->timeZoneOffSet:J

    add-long/2addr p1, v0

    add-long/2addr p3, v0

    const-wide/32 v0, 0x5265c00

    .line 422
    div-long/2addr p1, v0

    .line 423
    div-long/2addr p3, v0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private isDifferentConversationMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 3

    if-eqz p1, :cond_10

    if-nez p2, :cond_5

    goto :goto_10

    .line 184
    :cond_5
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method private isMessagesDayDifferent(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 5

    if-eqz p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 415
    :cond_5
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isDayDifferent(JJ)Z

    move-result p1

    return p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method private isMinuteDifferent(JJ)Z
    .registers 7

    .line 428
    iget-wide v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->timeZoneOffSet:J

    add-long/2addr p1, v0

    add-long/2addr p3, v0

    const-wide/32 v0, 0xea60

    .line 432
    div-long/2addr p1, v0

    .line 433
    div-long/2addr p3, v0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private isSystemDateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 2

    .line 407
    instance-of p1, p1, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    return p1
.end method

.method private isSystemMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 2

    .line 403
    instance-of p1, p1, Lcom/helpshift/conversation/activeconversation/message/SystemMessageDM;

    return p1
.end method

.method private isUserMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 3

    .line 753
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isAdminMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isSystemMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private isUserMessageSent(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 767
    :cond_4
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_28

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq v1, v2, :cond_28

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v1, v2, :cond_18

    goto :goto_28

    .line 772
    :cond_18
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v1, v2, :cond_27

    .line 773
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    if-ne p1, v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0

    .line 770
    :cond_28
    :goto_28
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->getState()Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    move-result-object p1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    if-ne p1, v1, :cond_33

    const/4 v0, 0x1

    :cond_33
    return v0
.end method

.method private notifyNewUIMessagesAdded(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 516
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->containsAdminMessages(Ljava/util/List;)Z

    move-result p1

    .line 517
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    .line 519
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->newAdminMessagesAdded()V

    goto :goto_11

    .line 522
    :cond_e
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->newUserMessagesAdded()V

    :cond_11
    :goto_11
    return-void
.end method

.method private updateMessageGroupViewState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Z
    .registers 7

    .line 850
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1a

    if-eqz p3, :cond_10

    .line 859
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    invoke-direct {p1, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;-><init>(ZZ)V

    goto :goto_2c

    .line 868
    :cond_10
    new-instance p2, Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isUserMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    invoke-direct {p2, v1, p1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;-><init>(ZZ)V

    goto :goto_25

    :cond_1a
    if-eqz p3, :cond_27

    .line 879
    new-instance p2, Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isAdminMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    invoke-direct {p2, v2, p1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;-><init>(ZZ)V

    :goto_25
    move-object p1, p2

    goto :goto_2c

    .line 886
    :cond_27
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    invoke-direct {p1, v2, v1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;-><init>(ZZ)V

    .line 891
    :goto_2c
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    return v2

    .line 895
    :cond_33
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->updateViewState(Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V

    return v1
.end method


# virtual methods
.method public addMessages(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 494
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->processAddedMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 496
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 497
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;-><init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    :cond_14
    return-void
.end method

.method checkAndPrependSystemMessagesBeforeFirstMessage()V
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/MessageListVM$4;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM$4;-><init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method checkAndUpdateGroupByDate(I)Z
    .registers 11

    .line 1001
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 1002
    invoke-direct {p0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v1

    .line 1004
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isSystemDateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    if-eqz v1, :cond_1a

    .line 1005
    invoke-direct {p0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isSystemDateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1006
    :cond_1a
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1011
    :goto_24
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v1

    add-int/lit8 v4, p1, -0x1

    .line 1012
    invoke-direct {p0, v4}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v4

    if-eqz v4, :cond_5f

    if-eqz v1, :cond_5f

    .line 1014
    invoke-direct {p0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isSystemDateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_5f

    .line 1018
    :cond_39
    invoke-direct {p0, v4, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isMessagesDayDifferent(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1019
    new-instance v0, Ljava/util/Date;

    .line 1020
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1021
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_53

    const/4 v2, 0x1

    :cond_53
    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1020
    invoke-direct {p0, v0, v2, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->generateSystemDateMessageDM(Ljava/util/Date;ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    return v0
.end method

.method declared-synchronized checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;II)",
            "Lcom/helpshift/util/ValuePair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 928
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 929
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 930
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_85

    const/4 v3, 0x0

    if-ge p3, p2, :cond_15

    .line 933
    monitor-exit p0

    return-object v3

    :cond_15
    const/4 v4, -0x1

    if-lez p2, :cond_40

    add-int/lit8 v5, p2, -0x1

    .line 941
    :try_start_1a
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 944
    invoke-virtual {p0, v5}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isGroupFirstMessageAtIndex(I)Z

    move-result v7

    .line 945
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-direct {p0, v6, v8}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->canGroupMessagesByTime(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v8

    if-nez v8, :cond_32

    const/4 v9, 0x1

    goto :goto_33

    :cond_32
    const/4 v9, 0x0

    .line 946
    :goto_33
    invoke-direct {p0, v6, v7, v9}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->updateMessageGroupViewState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Z

    move-result v6

    if-eqz v6, :cond_3b

    move v6, v5

    goto :goto_3d

    :cond_3b
    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_3d
    xor-int/lit8 v7, v8, 0x1

    goto :goto_43

    :cond_40
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    :goto_43
    if-gt p2, p3, :cond_74

    .line 956
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-ne p2, v0, :cond_52

    .line 959
    invoke-direct {p0, v8, v7, v2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->updateMessageGroupViewState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Z

    move-result v8

    goto :goto_6b

    :cond_52
    add-int/lit8 v9, p2, 0x1

    .line 964
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 965
    invoke-direct {p0, v8, v9}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->canGroupMessagesByTime(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 966
    invoke-direct {p0, v8, v7, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->updateMessageGroupViewState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Z

    move-result v8

    const/4 v7, 0x0

    goto :goto_6b

    .line 973
    :cond_66
    invoke-direct {p0, v8, v7, v2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->updateMessageGroupViewState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;ZZ)Z

    move-result v8

    const/4 v7, 0x1

    :goto_6b
    if-eqz v8, :cond_71

    if-ne v5, v4, :cond_70

    move v5, p2

    :cond_70
    move v6, p2

    :cond_71
    add-int/lit8 p2, p2, 0x1

    goto :goto_43

    :cond_74
    if-eq v5, v4, :cond_83

    .line 988
    new-instance v3, Lcom/helpshift/util/ValuePair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lcom/helpshift/util/ValuePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_1a .. :try_end_83} :catchall_85

    .line 990
    :cond_83
    monitor-exit p0

    return-object v3

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public copyOfUIMessageDMs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 1186
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLastUIMessage()Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 3

    .line 1190
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1192
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getUIConversation(J)Lcom/helpshift/conversation/activeconversation/UIConversation;
    .registers 4

    monitor-enter p0

    .line 1163
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiConversationLocalIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/UIConversation;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getUiMessageDMs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    return-object v0
.end method

.method public initializeMessageList(Ljava/util/List;Ljava/util/List;ZLcom/helpshift/conversation/viewmodel/MessageListVMCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/UIConversation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;Z",
            "Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->updateUIConversationOrder(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->processAddedMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 63
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->groupConversationRedactedMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p2, v0, p3}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertSystemMessageDMs(Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    .line 65
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertSystemMessageDMsForLatestEmptyConversation(Ljava/util/List;)V

    .line 67
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;

    .line 70
    iput-object p4, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    return-void
.end method

.method public insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 588
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isUISupportedMessage()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 592
    :cond_9
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/MessageListVM$3;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM$3;-><init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    :cond_13
    :goto_13
    return-void
.end method

.method insertUIMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 566
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->findBinaryIndexIntoUIList(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)I

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByDate(I)Z

    .line 569
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;

    return-void
.end method

.method isGroupFirstMessageAtIndex(I)Z
    .registers 5

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x1

    if-nez p1, :cond_8

    return v0

    .line 913
    :cond_8
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 914
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 915
    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->canGroupMessagesByTime(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method isMessageAtCorrectPosition(I)Z
    .registers 10

    .line 684
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    add-int/lit8 v2, p1, -0x1

    .line 689
    invoke-direct {p0, v2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 690
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_1e

    return v3

    :cond_1e
    add-int/2addr p1, v1

    .line 694
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 695
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_32

    return v3

    :cond_32
    return v1
.end method

.method notifyMessageListUpdate(Lcom/helpshift/util/ValuePair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/util/ValuePair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 673
    :cond_3
    iget-object v0, p1, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 674
    iget-object v1, p1, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 675
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    if-eqz v2, :cond_33

    if-lez v0, :cond_33

    if-lez v1, :cond_33

    iget-object p1, p1, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 678
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_33

    .line 679
    iget-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    invoke-interface {p1, v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->updateMessages(II)V

    :cond_33
    return-void
.end method

.method notifyMessageListVMRefreshAll()V
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    if-eqz v0, :cond_7

    .line 662
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->refreshAll()V

    :cond_7
    return-void
.end method

.method notifyUIMessageListUpdated()V
    .registers 2

    .line 1238
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    if-eqz v0, :cond_7

    .line 1239
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->onUIMessageListUpdated()V

    :cond_7
    return-void
.end method

.method public prependMessages(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;Z)V"
        }
    .end annotation

    .line 1046
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p2, :cond_b

    .line 1048
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndPrependSystemMessagesBeforeFirstMessage()V

    :cond_b
    return-void

    .line 1054
    :cond_c
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->filterUIMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1056
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getSortMessagesComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1057
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->groupConversationRedactedMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1059
    invoke-direct {p0, p1, v0, p2}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertSystemMessageDMs(Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 1060
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;

    .line 1062
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->prependMessagesInternal(Ljava/util/List;)V

    return-void
.end method

.method prependMessagesInternal(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 1112
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1115
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/MessageListVM$5;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM$5;-><init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method protected processAddedMessages(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->filterUIMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 486
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->getSortMessagesComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public remove(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 1201
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->filterUIMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1203
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1207
    :cond_b
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/MessageListVM$6;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM$6;-><init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public unregisterMessageListVMCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1033
    iput-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    return-void
.end method

.method public declared-synchronized updateUIConversationOrder(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/UIConversation;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1171
    :try_start_1
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2c

    if-eqz v0, :cond_9

    .line 1172
    monitor-exit p0

    return-void

    .line 1175
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiConversationLocalIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/UIConversation;

    .line 1177
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiConversationLocalIdMap:Ljava/util/Map;

    iget-wide v2, v0, Lcom/helpshift/conversation/activeconversation/UIConversation;->localID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2c

    goto :goto_12

    .line 1179
    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method updateUIMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 6

    .line 620
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-void

    .line 627
    :cond_a
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->isMessageAtCorrectPosition(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 628
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByDate(I)Z

    move-result p1

    .line 629
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;

    move-result-object v1

    if-eqz p1, :cond_24

    .line 631
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->notifyMessageListVMRefreshAll()V

    goto :goto_6e

    :cond_24
    if-eqz v1, :cond_3f

    .line 637
    iget-object p1, v1, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 638
    iget-object v1, v1, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_40

    :cond_3f
    move p1, v0

    .line 641
    :goto_40
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    if-eqz v1, :cond_6e

    if-gt p1, v0, :cond_6e

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    .line 642
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 643
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->messageListVMCallback:Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVMCallback;->updateMessages(II)V

    goto :goto_6e

    .line 649
    :cond_57
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x1

    .line 650
    invoke-virtual {p0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByDate(I)Z

    .line 651
    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->checkAndUpdateGroupByTime(Ljava/util/List;II)Lcom/helpshift/util/ValuePair;

    .line 654
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertUIMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 656
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->notifyMessageListVMRefreshAll()V

    :cond_6e
    :goto_6e
    return-void
.end method
