.class public abstract Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.super Ljava/lang/Object;
.source "MessageViewDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "M:",
        "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final BUBBLE_OPAGUE:F = 1.0f

.field protected static final BUBBLE_TRANSLUCENT:F = 0.5f


# instance fields
.field protected context:Landroid/content/Context;

.field protected messageClickListener:Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method applyRedactionStyle(Landroid/widget/TextView;)V
    .registers 4

    .line 211
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x3f0ccccd    # 0.55f

    .line 212
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public abstract bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TM;)V"
        }
    .end annotation
.end method

.method public abstract createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\n"

    const-string v1, "<br/>"

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;
    .registers 8

    .line 193
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getDisplayedAuthorName()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getAccessbilityMessageTime()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    .line 197
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    sget v1, Lcom/helpshift/R$string;->hs__agent_message_voice_over:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    .line 200
    :cond_1d
    iget-object v1, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    sget v4, Lcom/helpshift/R$string;->hs__agent_message_with_name_voice_over:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2c
    return-object p1
.end method

.method getRedactedBodyText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u00a0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected linkify(Landroid/widget/TextView;Lcom/helpshift/util/HSLinkify$LinkClickListener;)V
    .registers 10

    const/16 v0, 0xe

    .line 62
    invoke-static {p1, v0, p2}, Lcom/helpshift/util/HSLinkify;->addLinks(Landroid/widget/TextView;ILcom/helpshift/util/HSLinkify$LinkClickListener;)Z

    .line 63
    invoke-static {}, Lcom/helpshift/util/HSPattern;->getUrlPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/helpshift/util/HSLinkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/helpshift/util/HSLinkify$MatchFilter;Lcom/helpshift/util/HSLinkify$TransformFilter;Lcom/helpshift/util/HSLinkify$LinkClickListener;)V

    return-void
.end method

.method protected setAdminMessageContainerBackground(Landroid/view/View;Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V
    .registers 4

    .line 87
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground()Z

    move-result p2

    if-eqz p2, :cond_9

    sget p2, Lcom/helpshift/R$drawable;->hs__chat_bubble_rounded:I

    goto :goto_b

    :cond_9
    sget p2, Lcom/helpshift/R$drawable;->hs__chat_bubble_admin:I

    .line 88
    :goto_b
    sget v0, Lcom/helpshift/R$attr;->hs__chatBubbleAdminBackgroundColor:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setDrawable(Landroid/view/View;II)V

    return-void
.end method

.method protected setAdminMessageLayoutMarginForAvatar(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 153
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 154
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/R$dimen;->hs__author_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 155
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method protected setAdminMessageSubText(Landroid/widget/TextView;Lcom/helpshift/conversation/activeconversation/message/UIViewState;Ljava/lang/String;)V
    .registers 4

    .line 99
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method public setAuthorAvatar(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/views/CircleImageView;)V
    .registers 5

    .line 134
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->shouldShowAvatar()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 136
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, p2, v0}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 138
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/helpshift/support/conversations/messages/AvatarImageLoader;->loadAvatarImageAccordingToState(Landroid/content/Context;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/views/CircleImageView;)V

    .line 139
    iget-object p2, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->messageClickListener:Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;

    if-eqz p2, :cond_30

    .line 140
    invoke-interface {p2, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;->downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_30

    :cond_27
    const/4 p1, 0x4

    .line 144
    invoke-virtual {p2, p1}, Lcom/helpshift/views/CircleImageView;->setVisibility(I)V

    goto :goto_30

    :cond_2c
    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p2, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method protected setDrawable(Landroid/view/View;II)V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/helpshift/util/Styles;->setDrawable(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method

.method public setMessageItemClickListener(Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->messageClickListener:Lcom/helpshift/support/conversations/messages/MessageViewDataBinder$MessageItemClickListener;

    return-void
.end method

.method protected setUserMessageContainerBackground(Landroid/view/View;Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V
    .registers 4

    .line 123
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground()Z

    move-result p2

    if-eqz p2, :cond_9

    sget p2, Lcom/helpshift/R$drawable;->hs__chat_bubble_rounded:I

    goto :goto_b

    :cond_9
    sget p2, Lcom/helpshift/R$drawable;->hs__chat_bubble_user:I

    .line 124
    :goto_b
    sget v0, Lcom/helpshift/R$attr;->hs__chatBubbleUserBackgroundColor:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setDrawable(Landroid/view/View;II)V

    return-void
.end method

.method protected setUserMessageLayoutMargin(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 165
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 166
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 169
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$dimen;->hs__screen_to_conversation_view_ratio:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 171
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float v0, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 175
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method protected setUserMessageSubText(Landroid/widget/TextView;Lcom/helpshift/conversation/activeconversation/message/UIViewState;Ljava/lang/String;)V
    .registers 4

    .line 111
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method protected setViewVisibility(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_7
    const/16 p2, 0x8

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    return-void
.end method
