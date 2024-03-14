.class Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;
.super Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.source "AdminImageAttachmentMessageDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder<",
        "Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;",
        "Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 18
    check-cast p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->bind(Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V

    return-void
.end method

.method public bind(Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V
    .registers 14

    .line 44
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$2;->$SwitchMap$com$helpshift$conversation$activeconversation$message$AdminImageAttachmentMessageDM$AdminImageAttachmentState:[I

    iget-object v2, p2, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8e

    const/4 v5, 0x2

    if-eq v1, v5, :cond_7d

    const/4 v6, 0x3

    if-eq v1, v6, :cond_65

    const/4 v6, 0x4

    if-eq v1, v6, :cond_3e

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2b

    const-string v1, ""

    move-object v7, v0

    move-object v9, v1

    move-object v6, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_26
    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_28
    const/4 v8, 0x1

    goto/16 :goto_a4

    .line 75
    :cond_2b
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetFilePath()Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v5, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v6, Lcom/helpshift/R$string;->hs__image_downloaded_voice_over:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    move-object v6, v1

    move-object v9, v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_28

    .line 66
    :cond_3e
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getDownloadProgressAndFileSize()Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v6, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v7, Lcom/helpshift/R$string;->hs__image_downloading_voice_over:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getDownloadedProgressSize()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 71
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    .line 69
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    move-object v7, v1

    move-object v9, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_a4

    .line 59
    :cond_65
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetThumbnailFilePath()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v5, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v6, Lcom/helpshift/R$string;->hs__image_not_downloaded_voice_over:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 62
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    move-object v6, v1

    move-object v9, v5

    goto :goto_a1

    .line 55
    :cond_7d
    iget-object v1, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v5, Lcom/helpshift/R$string;->hs__image_not_downloaded_voice_over:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 55
    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    .line 49
    :cond_8e
    iget-object v1, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v5, Lcom/helpshift/R$string;->hs__image_not_downloaded_voice_over:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 49
    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9e
    move-object v7, v0

    move-object v9, v1

    move-object v6, v2

    :goto_a1
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_26

    .line 82
    :goto_a4
    iget-object v10, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->downloadProgressbarContainer:Landroid/view/View;

    invoke-virtual {p0, v10, v3}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 83
    iget-object v3, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v0}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 84
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->downloadButtonView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    if-eqz v5, :cond_bd

    .line 86
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v0, v3}, Lcom/helpshift/support/views/HSRoundedImageView;->setAlpha(F)V

    goto :goto_c4

    .line 89
    :cond_bd
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/helpshift/support/views/HSRoundedImageView;->setAlpha(F)V

    .line 91
    :goto_c4
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 92
    invoke-static {}, Lcom/helpshift/support/imageloader/ImageLoader;->getInstance()Lcom/helpshift/support/imageloader/ImageLoader;

    move-result-object v0

    iget-object v3, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    iget-object v4, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/helpshift/R$drawable;->hs__placeholder_image:I

    .line 95
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 92
    invoke-virtual {v0, v6, v3, v4}, Lcom/helpshift/support/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$1;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$1;-><init>(Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V

    if-eqz v1, :cond_f0

    .line 110
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->downloadButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f5

    .line 113
    :cond_f0
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->downloadButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_f5
    if-eqz v8, :cond_fd

    .line 117
    iget-object v1, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/views/HSRoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_102

    .line 120
    :cond_fd
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/views/HSRoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :goto_102
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->roundedImageView:Lcom/helpshift/support/views/HSRoundedImageView;

    invoke-virtual {v0, v9}, Lcom/helpshift/support/views/HSRoundedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->shouldShowAvatar()Z

    move-result p2

    if-eqz p2, :cond_11f

    .line 125
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->setAdminMessageLayoutMarginForAvatar(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11f
    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__msg_attachment_image:I

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance v0, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/AdminImageAttachmentMessageDataBinder;Landroid/view/View;)V

    return-object v0
.end method
