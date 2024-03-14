.class public Lcom/helpshift/conversation/ConversationUtil;
.super Ljava/lang/Object;
.source "ConversationUtil.java"


# static fields
.field private static conversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private static messageDMComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation
.end field

.field private static validConversationStatesForCSATExpiry:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/helpshift/conversation/dto/IssueState;",
            ">;"
        }
    .end annotation
.end field

.field private static validConversationStatesForResolutionExpiry:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/helpshift/conversation/dto/IssueState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 30
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/helpshift/conversation/dto/IssueState;

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 31
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/helpshift/conversation/ConversationUtil;->validConversationStatesForResolutionExpiry:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/helpshift/conversation/dto/IssueState;

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    aput-object v3, v2, v4

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    aput-object v3, v2, v1

    .line 35
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/helpshift/conversation/ConversationUtil;->validConversationStatesForCSATExpiry:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JJ)I
    .registers 4

    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/helpshift/conversation/ConversationUtil;->compareEpochTime(JJ)I

    move-result p0

    return p0
.end method

.method private static checkAndUpdateCachedConversationComparator()V
    .registers 1

    .line 40
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->conversationComparator:Ljava/util/Comparator;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/helpshift/conversation/ConversationUtil$1;

    invoke-direct {v0}, Lcom/helpshift/conversation/ConversationUtil$1;-><init>()V

    sput-object v0, Lcom/helpshift/conversation/ConversationUtil;->conversationComparator:Ljava/util/Comparator;

    :cond_b
    return-void
.end method

.method private static compareEpochTime(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static getLastConversationBasedOnCreatedAt(Ljava/util/Collection;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/helpshift/conversation/ConversationUtil;->checkAndUpdateCachedConversationComparator()V

    .line 73
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->conversationComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    return-object p0
.end method

.method public static getUserMessageCountForConversationLocalId(Lcom/helpshift/conversation/dao/ConversationDAO;Ljava/lang/Long;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 124
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-static {p0, v1}, Lcom/helpshift/conversation/ConversationUtil;->getUserMessageCountForConversationLocalIds(Lcom/helpshift/conversation/dao/ConversationDAO;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 125
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_19

    .line 127
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    return v0
.end method

.method public static getUserMessageCountForConversationLocalIds(Lcom/helpshift/conversation/dao/ConversationDAO;Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/dao/ConversationDAO;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 144
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ACCEPTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 145
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 146
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 147
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 148
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 149
    invoke-interface {p0, p1, v0}, Lcom/helpshift/conversation/dao/ConversationDAO;->getMessagesCountForConversations(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static isCSATTimerExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 6

    .line 221
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    .line 226
    :cond_8
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->validConversationStatesForCSATExpiry:Ljava/util/Set;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v2

    .line 231
    :cond_13
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    if-eqz v0, :cond_26

    .line 233
    invoke-static {p0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeInMillis(Lcom/helpshift/common/platform/Platform;)J

    move-result-wide v0

    .line 234
    iget-object p0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v3, v0, p0

    if-lez v3, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2
.end method

.method public static isInProgressState(Lcom/helpshift/conversation/dto/IssueState;)Z
    .registers 2

    .line 154
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->NEW:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->NEW_FOR_AGENT:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->AGENT_REPLIED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->WAITING_FOR_AGENT:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->PENDING_REASSIGNMENT:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->COMPLETED_ISSUE_CREATED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isResolutionQuestionExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 7

    .line 193
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 198
    :cond_8
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->validConversationStatesForResolutionExpiry:Ljava/util/Set;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 203
    :cond_14
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    if-eqz v0, :cond_27

    .line 205
    invoke-static {p0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeInMillis(Lcom/helpshift/common/platform/Platform;)J

    move-result-wide v3

    .line 207
    iget-object p0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v0, v3, p0

    if-lez v0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public static shouldPollActivelyForConversations(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)Z"
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 174
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 176
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_20
    return v1
.end method

.method public static sortConversationsBasedOnCreatedAt(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_12

    .line 59
    :cond_a
    invoke-static {}, Lcom/helpshift/conversation/ConversationUtil;->checkAndUpdateCachedConversationComparator()V

    .line 60
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->conversationComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public static sortMessagesBasedOnCreatedAt(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->messageDMComparator:Ljava/util/Comparator;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lcom/helpshift/conversation/ConversationUtil$2;

    invoke-direct {v0}, Lcom/helpshift/conversation/ConversationUtil$2;-><init>()V

    sput-object v0, Lcom/helpshift/conversation/ConversationUtil;->messageDMComparator:Ljava/util/Comparator;

    .line 90
    :cond_b
    sget-object v0, Lcom/helpshift/conversation/ConversationUtil;->messageDMComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
