.class public Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;
.super Ljava/lang/Object;
.source "MessageViewTypeConverter.java"


# instance fields
.field private agentTypingMessageDataBinder:Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;

.field private final context:Landroid/content/Context;

.field private conversationFooterViewBinder:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

.field private historyLoadingViewBinder:Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;

.field private viewTypeToDataBinderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    invoke-direct {v0, p1}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->conversationFooterViewBinder:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    .line 59
    new-instance v0, Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;

    invoke-direct {v0, p1}, Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->agentTypingMessageDataBinder:Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;

    .line 60
    new-instance v0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;

    invoke-direct {v0, p1}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->historyLoadingViewBinder:Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;

    return-void
.end method


# virtual methods
.method public getAgentTypingMessageDataBinder()Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->agentTypingMessageDataBinder:Lcom/helpshift/support/conversations/messages/AgentTypingMessageDataBinder;

    return-object v0
.end method

.method public getConversationFooterViewBinder()Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->conversationFooterViewBinder:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    return-object v0
.end method

.method public getHistoryLoadingViewBinder()Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->historyLoadingViewBinder:Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;

    return-object v0
.end method

.method public messageToViewType(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)I
    .registers 3

    .line 64
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    if-eqz v0, :cond_12

    .line 65
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isAdminMessage:Z

    if-eqz p1, :cond_d

    .line 66
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 69
    :cond_d
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 72
    :cond_12
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    if-eqz v0, :cond_1b

    .line 73
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_SUGGESTIONS_LIST:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 75
    :cond_1b
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    if-eqz v0, :cond_24

    .line 76
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SELECTABLE_OPTION:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 78
    :cond_24
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v0, :cond_2d

    .line 79
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ACTION_CARD_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 81
    :cond_2d
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    if-eqz v0, :cond_36

    .line 82
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SMART_INTENT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 84
    :cond_36
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;

    if-eqz v0, :cond_3f

    .line 85
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 87
    :cond_3f
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v0, :cond_48

    .line 88
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 90
    :cond_48
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v0, :cond_51

    .line 91
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 93
    :cond_51
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v0, :cond_5a

    .line 94
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 96
    :cond_5a
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    if-eqz v0, :cond_63

    .line 97
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_IMAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 99
    :cond_63
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;

    if-eqz v0, :cond_6c

    .line 100
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 102
    :cond_6c
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    if-eqz v0, :cond_75

    .line 103
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUESTED_APP_REVIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 105
    :cond_75
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    if-eqz v0, :cond_7e

    .line 106
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONFIRMATION_REJECTED:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 108
    :cond_7e
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    if-eqz v0, :cond_87

    .line 109
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REQUEST_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 111
    :cond_87
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    if-eqz v0, :cond_90

    .line 112
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUEST_FOR_REOPEN:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 114
    :cond_90
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/SystemDateMessageDM;

    if-eqz v0, :cond_99

    .line 115
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DATE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 117
    :cond_99
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/SystemDividerMessageDM;

    if-eqz v0, :cond_a2

    .line 118
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DIVIDER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 120
    :cond_a2
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/SystemPublishIdMessageDM;

    if-eqz v0, :cond_ab

    .line 121
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    .line 123
    :cond_ab
    instance-of p1, p1, Lcom/helpshift/conversation/activeconversation/message/SystemRedactedConversationMessageDM;

    if-eqz p1, :cond_b4

    .line 124
    sget-object p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_CONVERSATION_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget p1, p1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return p1

    :cond_b4
    const/4 p1, -0x1

    return p1
.end method

.method public viewTypeToDataBinder(I)Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;

    if-eqz v0, :cond_b

    return-object v0

    .line 137
    :cond_b
    invoke-static {p1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->getEnum(I)Lcom/helpshift/support/conversations/messages/MessageViewType;

    move-result-object v0

    if-nez v0, :cond_19

    .line 141
    new-instance p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;

    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 145
    :cond_19
    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    invoke-virtual {v0}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_190

    goto/16 :goto_186

    .line 205
    :pswitch_26
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SMART_INTENT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/UserSmartIntentMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/UserSmartIntentMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 202
    :pswitch_38
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ACTION_CARD_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminActionCardMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminActionCardMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 199
    :pswitch_4a
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/UserAttachmentMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/UserAttachmentMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 195
    :pswitch_5c
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_CONVERSATION_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/SystemRedactedConversationDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/SystemRedactedConversationDataBinder;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 192
    :pswitch_6e
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/UserRedactedMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/UserRedactedMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 189
    :pswitch_80
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 186
    :pswitch_92
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/SystemPublishIdMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/SystemPublishIdMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 183
    :pswitch_a4
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DIVIDER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/SystemDividerMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/SystemDividerMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 180
    :pswitch_b6
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DATE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/SystemDateMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/SystemDateMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 177
    :pswitch_c8
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SELECTABLE_OPTION:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/UserSelectableOptionViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/UserSelectableOptionViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 174
    :pswitch_da
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_SUGGESTIONS_LIST:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 171
    :pswitch_ec
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUEST_FOR_REOPEN:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 168
    :pswitch_fe
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REQUEST_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/RequestScreenshotMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/RequestScreenshotMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_186

    .line 165
    :pswitch_110
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONFIRMATION_REJECTED:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/ConfirmationRejectedMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/ConfirmationRejectedMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_186

    .line 162
    :pswitch_121
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUESTED_APP_REVIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_186

    .line 159
    :pswitch_132
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_186

    .line 156
    :pswitch_143
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_IMAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_186

    .line 153
    :pswitch_154
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_186

    .line 150
    :pswitch_165
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/UserMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/UserMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_186

    .line 147
    :pswitch_176
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    iget v1, v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    new-instance v2, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;

    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    :goto_186
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;->viewTypeToDataBinderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;

    return-object p1

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_176
        :pswitch_165
        :pswitch_154
        :pswitch_143
        :pswitch_132
        :pswitch_121
        :pswitch_110
        :pswitch_fe
        :pswitch_ec
        :pswitch_da
        :pswitch_c8
        :pswitch_b6
        :pswitch_a4
        :pswitch_92
        :pswitch_80
        :pswitch_6e
        :pswitch_5c
        :pswitch_4a
        :pswitch_38
        :pswitch_26
    .end packed-switch
.end method
