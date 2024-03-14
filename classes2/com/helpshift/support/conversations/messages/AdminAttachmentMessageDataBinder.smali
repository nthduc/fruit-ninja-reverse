.class Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;
.super Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;
.source "AdminAttachmentMessageDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpshift/support/conversations/messages/MessageViewDataBinder<",
        "Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;",
        "Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/helpshift/support/conversations/messages/MessageViewDataBinder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 16
    check-cast p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->bind(Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;)V

    return-void
.end method

.method public bind(Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;)V
    .registers 12

    .line 36
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->context:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 37
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$2;->$SwitchMap$com$helpshift$conversation$activeconversation$message$AdminAttachmentMessageDM$AdminGenericAttachmentState:[I

    iget-object v3, p2, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_63

    const/4 v6, 0x3

    if-eq v2, v3, :cond_40

    if-eq v2, v6, :cond_28

    const-string v2, ""

    move-object v3, v2

    :goto_24
    const/4 v5, 0x0

    :goto_25
    move v2, v0

    const/4 v0, 0x0

    goto :goto_7a

    .line 56
    :cond_28
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v2, Lcom/helpshift/R$attr;->colorAccent:I

    invoke-static {v0, v2}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 57
    iget-object v2, p0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v3, Lcom/helpshift/R$string;->hs__attachment_downloaded__voice_over:I

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->fileName:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_25

    .line 48
    :cond_40
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->getDownloadProgressAndFileSize()Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v7, Lcom/helpshift/R$string;->hs__attachment_downloading_voice_over:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p2, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->fileName:Ljava/lang/String;

    aput-object v8, v6, v4

    .line 51
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->getDownloadedProgressSize()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    .line 52
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 49
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v5, 0x0

    move v2, v0

    const/4 v0, 0x1

    goto :goto_7a

    .line 42
    :cond_63
    iget-object v2, p0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->context:Landroid/content/Context;

    sget v6, Lcom/helpshift/R$string;->hs__attachment_not_downloaded_voice_over:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->fileName:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 44
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 42
    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x1

    goto :goto_24

    .line 61
    :goto_7a
    iget-object v6, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->downloadButton:Landroid/view/View;

    invoke-virtual {p0, v6, v4}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 62
    iget-object v4, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 63
    iget-object v4, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4, v0}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->setViewVisibility(Landroid/view/View;Z)V

    .line 64
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->fileName:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->fileName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    new-instance v1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$1;-><init>(Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->getAdminMessageContentDesciption(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->shouldShowAvatar()Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 80
    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->setAdminMessageLayoutMarginForAvatar(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c1
    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__msg_attachment_generic:I

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/AdminAttachmentMessageDataBinder;Landroid/view/View;)V

    return-object v0
.end method
