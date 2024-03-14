.class final Lcom/helpshift/conversation/ConversationUtil$1;
.super Ljava/lang/Object;
.source "ConversationUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/ConversationUtil;->checkAndUpdateCachedConversationComparator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)I
    .registers 5

    .line 44
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v0

    .line 45
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide p1

    .line 46
    # invokes: Lcom/helpshift/conversation/ConversationUtil;->compareEpochTime(JJ)I
    invoke-static {v0, v1, p1, p2}, Lcom/helpshift/conversation/ConversationUtil;->access$000(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 41
    check-cast p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    check-cast p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/ConversationUtil$1;->compare(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)I

    move-result p1

    return p1
.end method
