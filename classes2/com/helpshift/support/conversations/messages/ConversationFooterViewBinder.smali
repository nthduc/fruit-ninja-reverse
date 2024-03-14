.class public Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;
.super Ljava/lang/Object;
.source "ConversationFooterViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;,
        Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;)V
    .registers 11

    .line 46
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/R$string;->hs__conversation_end_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$ConversationFooterState:[I

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/ConversationFooterState;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_d6

    :goto_19
    const/4 p2, 0x1

    :goto_1a
    const/4 v3, 0x0

    :goto_1b
    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x0

    :goto_1d
    const/4 v6, 0x0

    goto :goto_5c

    :pswitch_1f
    const/4 p2, 0x0

    goto :goto_4a

    .line 74
    :pswitch_21
    iget-object p2, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/helpshift/R$string;->hs__conversation_rejected_status:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :pswitch_2e
    const/4 p2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5c

    :pswitch_34
    const/4 p2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1d

    .line 60
    :pswitch_39
    iget-object p2, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/helpshift/R$string;->hs__confirmation_footer_msg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 p2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1c

    :goto_49
    :pswitch_49
    const/4 p2, 0x1

    :goto_4a
    const/4 v3, 0x1

    goto :goto_1b

    .line 53
    :pswitch_4c
    iget-object p2, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/helpshift/R$string;->hs__confirmation_footer_msg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :pswitch_59
    const/4 p2, 0x0

    const/4 v1, 0x0

    goto :goto_1a

    :goto_5c
    const/16 v7, 0x8

    if-eqz v1, :cond_cf

    .line 84
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->conversationFooter:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_72

    .line 87
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->footerMessage:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->footerMessage:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_77

    .line 91
    :cond_72
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->footerMessage:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_77
    const/4 p2, 0x0

    if-eqz v3, :cond_85

    .line 95
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8f

    .line 99
    :cond_85
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8f
    if-eqz v4, :cond_9c

    .line 104
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {p2, v2}, Lcom/helpshift/support/widget/CSATView;->setVisibility(I)V

    .line 105
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {p2, p1}, Lcom/helpshift/support/widget/CSATView;->setCSATListener(Lcom/helpshift/support/widget/CSATView$CSATListener;)V

    goto :goto_ab

    .line 108
    :cond_9c
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/support/widget/CSATView;->hideCSATDialog()V

    .line 109
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {v0, v7}, Lcom/helpshift/support/widget/CSATView;->setVisibility(I)V

    .line 110
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {v0, p2}, Lcom/helpshift/support/widget/CSATView;->setCSATListener(Lcom/helpshift/support/widget/CSATView$CSATListener;)V

    :goto_ab
    if-eqz v5, :cond_ba

    .line 114
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationReason:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationReason:Landroid/widget/TextView;

    sget p2, Lcom/helpshift/R$string;->hs__issue_archival_message:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d4

    :cond_ba
    if-eqz v6, :cond_c9

    .line 118
    iget-object p2, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationReason:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationReason:Landroid/widget/TextView;

    sget p2, Lcom/helpshift/R$string;->hs__new_conversation_footer_generic_reason:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d4

    .line 122
    :cond_c9
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationReason:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d4

    .line 126
    :cond_cf
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->conversationFooter:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_d4
    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4c
        :pswitch_49
        :pswitch_39
        :pswitch_34
        :pswitch_2e
        :pswitch_21
        :pswitch_1f
    .end packed-switch
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;
    .registers 5

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__messages_list_footer:I

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;Landroid/view/View;)V

    return-object v0
.end method

.method public setConversationFooterClickListener(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    return-void
.end method
