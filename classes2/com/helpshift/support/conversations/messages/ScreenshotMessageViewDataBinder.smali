.class public Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;
.super Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.source "ScreenshotMessageViewDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder<",
        "Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;",
        "Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 20
    check-cast p1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->bind(Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V

    return-void
.end method

.method public bind(Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 45
    iget-object v4, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    const v5, 0x1010038

    invoke-static {v4, v5}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 46
    invoke-static {v3}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    .line 51
    sget-object v8, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$2;->$SwitchMap$com$helpshift$conversation$activeconversation$message$UserMessageState:[I

    iget-object v9, v2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v9}, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const-string v9, ""

    const/4 v11, 0x0

    if-eq v8, v6, :cond_b1

    const/4 v12, 0x2

    if-eq v8, v12, :cond_85

    const/4 v12, 0x3

    if-eq v8, v12, :cond_6a

    const/4 v12, 0x4

    if-eq v8, v12, :cond_3d

    move v6, v4

    move-object v14, v9

    move-object v15, v14

    const/4 v4, 0x0

    :goto_37
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_39
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_d4

    :cond_3d
    const/high16 v7, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->getSubText()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static {v3}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v12, v9, 0x1

    .line 83
    iget-object v13, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v14, Lcom/helpshift/R$string;->hs__user_sent_message_voice_over:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->getAccessbilityMessageTime()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v11

    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 85
    iget-object v13, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v14, Lcom/helpshift/R$string;->hs__image_downloaded_voice_over:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    move-object v15, v13

    move v6, v4

    move-object v4, v8

    move v13, v12

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto/16 :goto_d4

    .line 71
    :cond_6a
    iget-object v8, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v12, Lcom/helpshift/R$string;->hs__sending_msg:I

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    iget-object v12, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v13, Lcom/helpshift/R$string;->hs__user_sending_message_voice_over:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move v6, v4

    move-object v4, v8

    move-object v15, v9

    move-object v14, v12

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_39

    .line 60
    :cond_85
    iget-boolean v4, v2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isRejected:Z

    if-eqz v4, :cond_92

    .line 61
    iget-object v4, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v6, Lcom/helpshift/R$string;->hs__file_type_unsupported:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9e

    .line 64
    :cond_92
    iget-object v4, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/helpshift/R$string;->hs__sending_fail_msg:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    :goto_9e
    iget-object v6, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v8, Lcom/helpshift/R$attr;->hs__errorTextColor:I

    invoke-static {v6, v8}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 67
    iget-object v8, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v12, Lcom/helpshift/R$string;->hs__user_failed_message_voice_over:I

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    move-object v15, v9

    goto :goto_37

    .line 55
    :cond_b1
    iget-object v4, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/helpshift/R$string;->hs__sending_fail_msg:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    iget-object v8, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v12, Lcom/helpshift/R$attr;->hs__errorTextColor:I

    invoke-static {v8, v12}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 57
    iget-object v12, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    sget v13, Lcom/helpshift/R$string;->hs__user_failed_message_voice_over:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move v6, v8

    move-object v15, v9

    move-object v14, v12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v12, v1

    .line 89
    :goto_d4
    invoke-virtual/range {p2 .. p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->getUiViewState()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v16

    .line 90
    invoke-static {}, Lcom/helpshift/support/imageloader/ImageLoader;->getInstance()Lcom/helpshift/support/imageloader/ImageLoader;

    move-result-object v10

    iget-object v11, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    .line 92
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v18, v14

    sget v14, Lcom/helpshift/R$drawable;->hs__placeholder_image:I

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 91
    invoke-virtual {v10, v3, v11, v14}, Lcom/helpshift/support/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    invoke-virtual {v3, v7}, Lcom/helpshift/support/views/HSRoundedImageView;->setAlpha(F)V

    .line 94
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    invoke-virtual {v0, v3, v5}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 95
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->subText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual/range {v16 .. v16}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 98
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_111
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 102
    # getter for: Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->progress:Landroid/widget/ProgressBar;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->access$000(Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 103
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->retryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v8}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    if-eqz v8, :cond_12f

    .line 105
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->retryButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    goto :goto_135

    .line 108
    :cond_12f
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->retryButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_135
    if-eqz v13, :cond_142

    .line 112
    iget-object v3, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    new-instance v4, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$1;

    invoke-direct {v4, v0, v2}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$1;-><init>(Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V

    invoke-virtual {v3, v4}, Lcom/helpshift/support/views/HSRoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_147

    .line 120
    :cond_142
    iget-object v2, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    invoke-virtual {v2, v4}, Lcom/helpshift/support/views/HSRoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :goto_147
    iget-object v2, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    move-object/from16 v12, v18

    invoke-virtual {v2, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, v1, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    move-object/from16 v9, v17

    invoke-virtual {v1, v9}, Lcom/helpshift/support/views/HSRoundedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__msg_screenshot_status:I

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/ScreenshotMessageViewDataBinder;Landroid/view/View;)V

    return-object v0
.end method
