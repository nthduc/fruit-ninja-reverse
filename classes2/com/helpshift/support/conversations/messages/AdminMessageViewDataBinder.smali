.class Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;
.super Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.source "AdminMessageViewDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder<",
        "Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;",
        "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 23
    check-cast p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->bind(Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public bind(Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 6

    .line 41
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 46
    :cond_10
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    .line 50
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->setAdminMessageContainerBackground(Landroid/view/View;Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V

    .line 51
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->dateText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getSubText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->setAdminMessageSubText(Landroid/widget/TextView;Lcom/helpshift/conversation/activeconversation/message/UIViewState;Ljava/lang/String;)V

    .line 52
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$1;-><init>(Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->linkify(Landroid/widget/TextView;Lcom/helpshift/util/HSLinkify$LinkClickListener;)V

    .line 70
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->avatarImageView:Lcom/helpshift/views/CircleImageView;

    invoke-virtual {p0, p2, p1}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->setAuthorAvatar(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/views/CircleImageView;)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;
    .registers 5

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__msg_txt_admin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder;Landroid/view/View;)V

    .line 35
    invoke-virtual {v0}, Lcom/helpshift/support/conversations/messages/AdminMessageViewDataBinder$ViewHolder;->setListeners()V

    return-object v0
.end method
