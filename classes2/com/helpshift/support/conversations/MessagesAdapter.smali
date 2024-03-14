.class public Lcom/helpshift/support/conversations/MessagesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessagesAdapter.java"

# interfaces
.implements Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;
.implements Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;
.implements Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;",
        "Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;",
        "Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;"
    }
.end annotation


# instance fields
.field private conversationFooterState:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

.field private historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

.field private isAgentTypingIndicatorVisible:Z

.field private isAvatarEnabledInChatFeed:Z

.field private messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation
.end field

.field private messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;Z",
            "Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    iput-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->conversationFooterState:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAgentTypingIndicatorVisible:Z

    .line 47
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->NONE:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    iput-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    .line 53
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-direct {v0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    .line 54
    iput-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messages:Ljava/util/List;

    .line 55
    iput-boolean p3, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAvatarEnabledInChatFeed:Z

    .line 56
    iput-object p4, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    return-void
.end method

.method private getFooterCount()I
    .registers 4

    .line 163
    iget-boolean v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAgentTypingIndicatorVisible:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 166
    :goto_7
    iget-object v1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->conversationFooterState:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    if-eq v1, v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    :cond_f
    return v0
.end method

.method private getFooterViewType(I)I
    .registers 5

    .line 342
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 344
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->conversationFooterState:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz p1, :cond_20

    if-eq p1, v2, :cond_19

    goto :goto_30

    :cond_19
    if-eqz v0, :cond_30

    .line 356
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    goto :goto_31

    .line 347
    :cond_20
    iget-boolean p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAgentTypingIndicatorVisible:Z

    if-eqz p1, :cond_29

    .line 348
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->AGENT_TYPING_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    goto :goto_31

    :cond_29
    if-eqz v0, :cond_30

    .line 351
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p1, -0x1

    :goto_31
    return p1
.end method

.method private getHeaderCount()I
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->NONE:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private getHeaderViewType()I
    .registers 2

    .line 327
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->HISTORY_LOADING_VIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v0, v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return v0
.end method

.method private getMessageFromUIMessageList(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 3

    .line 183
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 184
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    return-object p1
.end method


# virtual methods
.method public downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 283
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_7
    return-void
.end method

.method public getItemCount()I
    .registers 3

    .line 127
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getFooterCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 113
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 114
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderViewType()I

    move-result p1

    return p1

    .line 116
    :cond_b
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_21

    .line 117
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/MessagesAdapter;->getMessageFromUIMessageList(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->messageToViewType(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)I

    move-result p1

    return p1

    .line 120
    :cond_21
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/MessagesAdapter;->getFooterViewType(I)I

    move-result p1

    return p1
.end method

.method public getMessageCount()I
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public handleAdminImageAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 255
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->handleAdminImageAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V

    :cond_7
    return-void
.end method

.method public handleGenericAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 248
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->handleGenericAttachmentMessageClick(Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;)V

    :cond_7
    return-void
.end method

.method public handleOptionSelected(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 262
    invoke-interface {v0, p1, p2, p3}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->handleOptionSelected(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V

    :cond_7
    return-void
.end method

.method public handleReplyReviewButtonClick(Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 227
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->handleReplyReviewButtonClick(Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V

    :cond_7
    return-void
.end method

.method public launchImagePicker(Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 220
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->launchImagePicker(Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;)V

    :cond_7
    return-void
.end method

.method public onActionCardClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 276
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onActionCardClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    :cond_7
    return-void
.end method

.method public onAdminMessageLinkClickFailed()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 197
    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onAdminMessageLinkClickFailed()V

    :cond_7
    return-void
.end method

.method public onAdminMessageLinkClicked(Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 190
    invoke-interface {v0, p1, p2}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onAdminMessageLinkClicked(Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_7
    return-void
.end method

.method public onAdminSuggestedQuestionSelected(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 269
    invoke-interface {v0, p1, p2, p3}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onAdminSuggestedQuestionSelected(Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 85
    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->HISTORY_LOADING_VIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne v0, v1, :cond_18

    .line 86
    iget-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->getHistoryLoadingViewBinder()Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;

    move-result-object p2

    check-cast p1, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;

    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    .line 87
    invoke-virtual {p2, p1, v0}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->bind(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V

    goto :goto_4d

    .line 89
    :cond_18
    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne v0, v1, :cond_2c

    .line 90
    iget-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->getConversationFooterViewBinder()Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    move-result-object p2

    check-cast p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;

    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->conversationFooterState:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 91
    invoke-virtual {p2, p1, v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->bind(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V

    goto :goto_4d

    .line 94
    :cond_2c
    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->AGENT_TYPING_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne v0, v1, :cond_40

    .line 95
    iget-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->getAgentTypingMessageDataBinder()Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;

    move-result-object p2

    check-cast p1, Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder$ViewHolder;

    iget-boolean v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAvatarEnabledInChatFeed:Z

    .line 96
    invoke-virtual {p2, p1, v0}, Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;->bind(Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder$ViewHolder;Z)V

    goto :goto_4d

    .line 99
    :cond_40
    invoke-direct {p0, p2}, Lcom/helpshift/support/conversations/MessagesAdapter;->getMessageFromUIMessageList(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p2

    .line 100
    iget-object v1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinder(I)Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :goto_4d
    return-void
.end method

.method public onCSATSurveyCancelled()V
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 394
    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onCSATSurveyCancelled()V

    :cond_7
    return-void
.end method

.method public onCSATSurveyStarted()V
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 380
    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onCSATSurveyStarted()V

    :cond_7
    return-void
.end method

.method public onCSATSurveySubmitted(ILjava/lang/String;)V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 387
    invoke-interface {v0, p1, p2}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onCSATSurveySubmitted(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 204
    invoke-interface {v0, p1, p2}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onCreateContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4

    .line 61
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->HISTORY_LOADING_VIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v0, v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne p2, v0, :cond_14

    .line 62
    iget-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->getHistoryLoadingViewBinder()Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;

    move-result-object p2

    .line 63
    invoke-virtual {p2, p0}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->setHistoryLoadingClickListener(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;)V

    .line 64
    invoke-virtual {p2, p1}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;

    move-result-object p1

    return-object p1

    .line 66
    :cond_14
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v0, v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne p2, v0, :cond_28

    .line 67
    iget-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    .line 68
    invoke-virtual {p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->getConversationFooterViewBinder()Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    move-result-object p2

    .line 69
    invoke-virtual {p2, p0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->setConversationFooterClickListener(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;)V

    .line 70
    invoke-virtual {p2, p1}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;

    move-result-object p1

    return-object p1

    .line 72
    :cond_28
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->AGENT_TYPING_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v0, v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne p2, v0, :cond_39

    .line 73
    iget-object p2, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->getAgentTypingMessageDataBinder()Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 76
    :cond_39
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messageViewTypeConverter:Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;

    invoke-virtual {v0, p2}, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinder(I)Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;

    move-result-object p2

    .line 77
    invoke-virtual {p2, p0}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setMessageItemClickListener(Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;)V

    .line 78
    invoke-virtual {p2, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onHistoryLoadingRetryClicked()V
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 420
    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onHistoryLoadingRetryClicked()V

    :cond_7
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 139
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    .line 135
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 143
    invoke-direct {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onScreenshotMessageClicked(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 234
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onScreenshotMessageClicked(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V

    :cond_7
    return-void
.end method

.method public onStartNewConversationButtonClick()V
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 373
    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onStartNewConversationButtonClick()V

    :cond_7
    return-void
.end method

.method public onUserAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_7

    .line 241
    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->onUserAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V

    :cond_7
    return-void
.end method

.method public retryMessage(I)V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    if-eqz v0, :cond_d

    .line 212
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/MessagesAdapter;->getMessageFromUIMessageList(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    invoke-interface {v0, p1}, Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;->retryMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_d
    return-void
.end method

.method public setAgentTypingIndicatorVisibility(Z)V
    .registers 3

    .line 288
    iget-boolean v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAgentTypingIndicatorVisible:Z

    if-eq v0, p1, :cond_1c

    .line 289
    iput-boolean p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->isAgentTypingIndicatorVisible:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    .line 291
    iget-object p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemRangeInserted(II)V

    goto :goto_1c

    .line 294
    :cond_13
    iget-object p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemRangeRemoved(II)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setConversationFooterState(Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V
    .registers 2

    if-nez p1, :cond_4

    .line 364
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->NONE:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 366
    :cond_4
    iput-object p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->conversationFooterState:Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;

    .line 367
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setHistoryLoadingState(Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V
    .registers 5

    if-eqz p1, :cond_21

    .line 301
    iget-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-ne v0, p1, :cond_7

    goto :goto_21

    .line 312
    :cond_7
    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->NONE:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    .line 313
    iput-object p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    .line 314
    invoke-virtual {p0, v2}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemInserted(I)V

    goto :goto_21

    .line 316
    :cond_12
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->NONE:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-ne p1, v0, :cond_1c

    .line 317
    iput-object p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    .line 318
    invoke-virtual {p0, v2}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemRemoved(I)V

    goto :goto_21

    .line 321
    :cond_1c
    iput-object p1, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->historyLoadingState:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    .line 322
    invoke-virtual {p0, v2}, Lcom/helpshift/support/conversations/MessagesAdapter;->notifyItemChanged(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public unregisterAdapterClickListener()V
    .registers 2

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/helpshift/support/conversations/MessagesAdapter;->messagesAdapterClickListener:Lcom/helpshift/support/conversations/messages/MessagesAdapterClickListener;

    return-void
.end method
