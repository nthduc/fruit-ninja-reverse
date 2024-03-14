.class public Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;
.super Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.source "AdminSuggestionsMessageViewDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder<",
        "Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;",
        "Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private bindAdminMessage(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 6

    .line 115
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 116
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    .line 119
    :cond_10
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget v0, Lcom/helpshift/R$drawable;->hs__chat_bubble_rounded:I

    goto :goto_30

    :cond_2e
    sget v0, Lcom/helpshift/R$drawable;->hs__chat_bubble_admin:I

    .line 125
    :goto_30
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    sget v2, Lcom/helpshift/R$attr;->hs__chatBubbleAdminBackgroundColor:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->setDrawable(Landroid/view/View;II)V

    .line 127
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageText:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$2;-><init>(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->linkify(Landroid/widget/TextView;Lcom/helpshift/util/HSLinkify$LinkClickListener;)V

    .line 143
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->avatarImageView:Lcom/helpshift/views/CircleImageView;

    invoke-virtual {p0, p2, p1}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->setAuthorAvatar(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/views/CircleImageView;)V

    :goto_4f
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 23
    check-cast p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->bind(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    return-void
.end method

.method public bind(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V
    .registers 12

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->bindAdminMessage(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 46
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->suggestionsList:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 52
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->faqs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;

    .line 54
    iget-object v3, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    .line 55
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/helpshift/R$layout;->hs__msg_admin_suggesstion_item:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 56
    sget v4, Lcom/helpshift/R$id;->admin_suggestion_message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 57
    iget-object v5, v2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_40

    .line 61
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_44

    .line 64
    :cond_40
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_44
    const/4 v5, 0x2

    .line 67
    aget-object v4, v4, v5

    .line 68
    iget-object v5, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    sget v6, Lcom/helpshift/R$attr;->hs__adminFaqSuggestionArrowColor:I

    invoke-static {v5, v4, v6}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 74
    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 78
    iget-object v5, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/helpshift/R$layout;->hs__section_divider:I

    invoke-virtual {v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 79
    sget v6, Lcom/helpshift/R$id;->divider:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    sget v8, Lcom/helpshift/R$attr;->hs__contentSeparatorColor:I

    .line 80
    invoke-static {v7, v8}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    new-instance v6, Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 87
    iget-object v5, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->suggestionsList:Landroid/widget/TableLayout;

    invoke-virtual {v5, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v4, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->suggestionsList:Landroid/widget/TableLayout;

    invoke-virtual {v4, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v4, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$1;

    invoke-direct {v4, p0, p2, v2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$1;-><init>(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v6

    goto/16 :goto_10

    .line 101
    :cond_94
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->suggestionsList:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    .line 105
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->dateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 106
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 107
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->dateText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->getSubText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_b5
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__msg_admin_suggesstions_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/AdminSuggestionsMessageViewDataBinder;Landroid/view/View;)V

    return-object v0
.end method
