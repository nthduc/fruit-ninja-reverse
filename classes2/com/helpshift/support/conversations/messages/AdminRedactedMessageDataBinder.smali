.class public Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;
.super Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.source "AdminRedactedMessageDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder<",
        "Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;",
        "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 22
    check-cast p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->bind(Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public bind(Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 6

    .line 40
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 45
    :cond_10
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->getRedactedBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->applyRedactionStyle(Landroid/widget/TextView;)V

    .line 49
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    .line 50
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->setAdminMessageContainerBackground(Landroid/view/View;Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V

    .line 51
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->dateText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getSubText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->setAdminMessageSubText(Landroid/widget/TextView;Lcom/helpshift/conversation/activeconversation/message/UIViewState;Ljava/lang/String;)V

    .line 52
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$1;-><init>(Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->linkify(Landroid/widget/TextView;Lcom/helpshift/util/HSLinkify$LinkClickListener;)V

    .line 68
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->avatarImageView:Lcom/helpshift/views/CircleImageView;

    invoke-virtual {p0, p2, p1}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->setAuthorAvatar(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/views/CircleImageView;)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;
    .registers 5

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__msg_txt_admin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder;Landroid/view/View;)V

    .line 34
    invoke-virtual {v0}, Lcom/helpshift/support/conversations/messages/AdminRedactedMessageDataBinder$ViewHolder;->setListeners()V

    return-object v0
.end method
