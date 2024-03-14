.class public Lcom/helpshift/widget/MutableConversationFooterViewState;
.super Lcom/helpshift/widget/ConversationFooterViewState;
.source "MutableConversationFooterViewState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/helpshift/widget/ConversationFooterViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public setState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/helpshift/widget/MutableConversationFooterViewState;->state:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    if-eq v0, p1, :cond_9

    .line 9
    iput-object p1, p0, Lcom/helpshift/widget/MutableConversationFooterViewState;->state:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 10
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableConversationFooterViewState;->notifyChange(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
